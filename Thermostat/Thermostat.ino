#include "MCP23s17.h"
#include "FM25V10.h"
#include <LiquidCrystal.h>
#include <DS3231.h>
#include "ThermostatStation.h"
#include "nRF24L01.h"
#include "RF24.h"
#include "Menu.h"
#include <Sleep_n0m1.h>

#define NO_RADIO
//#define NO_IO_EXP
//#define NO_RTC
//#define NO_STORAGE
//#define FIRST_BOOT

#define SERIAL_DEBUG

#define SLEEP_TIME     (30*1000UL)
#define AWAKE_TIME     (20*1000UL)

#include <Wire.h>
#include <SPI.h>

#define LCD_ROWS    4
#define LCD_COLS    20

#define APP_NAME    F("REMOTE THERMOSTAT")
#define VERSION     F("v0.0")

//Arduino Pins
#define SPI_SCK_PIN     13
#define SPI_MISO_PIN    12
#define SPI_MOSI_PIN    11
#define MEM_CS_PIN      10
#define LCD_RS_PIN      9
#define LCD_EN_PIN      8
#define LCD_D4_PIN      7
#define LCD_D5_PIN      6
#define LCD_D6_PIN      5
#define LCD_D7_PIN      4
#define IO_EXP_INT_PIN  2

#define IO_EXP_CS_PIN   A0
#define IO_EXP_RST_PIN  A1
#define RF24_CE_PIN     A2
#define RF24_CS_PIN     A3
#define I2C_SDA         A4
#define I2C_SCL         A5
#define LOCAL_TEMP_PIN  A6

//IO Expander Pins
//Inputs
enum IO_EXP_GPIOA
{
  UP_BTN = 0,
  DOWN_BTN,
  LEFT_BTN,
  RIGHT_BTN,
  OK_BTN,
  ALL_BTNS
};

//Outputs
enum IO_EXP_GPIOB
{
  HEAT_ON,
  COOL_ON,
  FAN_ON,
  LCD_BACKLIGHT
};

//Variables
RF24            radio(RF24_CE_PIN, RF24_CS_PIN);
FM25V10         memoryDevice(MEM_CS_PIN);
LiquidCrystal   lcd(LCD_RS_PIN, LCD_EN_PIN, LCD_D4_PIN, LCD_D5_PIN, LCD_D6_PIN, LCD_D7_PIN);
MCP23s17        IOExpander(IO_EXP_CS_PIN, IO_EXP_RST_PIN, 0);
RTClib          rtc;
ThermoStation   thermostat(LOCAL_TEMP_PIN);
Sleep           sleep;

#define IO_DEBOUNCE_TIME  5
uint32_t lastIOExpUpdateTime = 0;
byte buttonFilter[IO_DEBOUNCE_TIME], currentBtnState = 0xFF, oldBtnState = 0xFF;
char btnEdge[ALL_BTNS];
byte outputMirror = 0x00;

bool bOldHeatState = false, bOldCoolState = false, bOldFanState = false, bForceUpdate = false;
bool bAwake = true;
uint32_t nLastLCDUpdate = 0;
uint32_t nTimeAwake = 0;

char nSelectedColumn = -1, nSelectedRow = -1;

void InitLCD()
{
  lcd.begin(LCD_COLS, LCD_ROWS);
  lcd.clear();
  lcd.setCursor(0, 0);
}

void InitIOExpander()
{
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(F("Init IO expander"));
  IOExpander.reset();
  IOExpander.writeReg(MCP23s17::IODIRA, 0xFF); //Bank A are all inputs
  IOExpander.writeReg(MCP23s17::GPPUA, 0xFF); //Enable pull-ups on bank A
  IOExpander.writeReg(MCP23s17::GPINTENA, 0xFF); //Enable interrupts on all pins
  IOExpander.writeReg(MCP23s17::IODIRB, 0x00); //Bank B are all outputs
  IOExpander.writeReg(MCP23s17::OLATB, outputMirror);
  delay(500);
  lcd.setCursor(0, 1);
  if (IOExpander.readReg(MCP23s17::IODIRB) == 0x00 &&
      IOExpander.readReg(MCP23s17::GPPUA) == 0xFF)
    lcd.print(F("SUCCESS"));
  else
  {
    lcd.print(F("FAILED"));
#ifdef SERIAL_DEBUG
    Serial.println(F("Failed to initialize IO expander..."));
#endif
    while (1);
  }

  pinMode(2, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(IO_EXP_INT_PIN), IOExpanderIntHandler, FALLING);

  delay(1000);
}

void InitRadio()
{
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(F("Check radio"));
  lcd.setCursor(0, 1);
  if (!radio.isChipConnected())
  {
    lcd.print(F("FAILED"));
#ifdef SERIAL_DEBUG
    Serial.println(F("Failed to connect to radio..."));
#endif
    while (1);
  }
  delay(500);
  lcd.print(F("SUCCESS"));
  delay(1000);
}

void InitStorage()
{
  byte clearBuffer[8] = {0, 0, 0, 0, 0, 0, 0, 0};
  byte writeBuffer[8] = {0xDE, 0xAD, 0xBE, 0xEF, 0x11, 0x22, 0xAA, 0xBB};
  byte readBuffer[8];

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(F("Check storage"));
  lcd.setCursor(0, 1);

  memoryDevice.write(0, clearBuffer, 8);
  memoryDevice.read(0, readBuffer, 8);

  if (memcmp(clearBuffer, readBuffer, 8))
  {
    lcd.print(F("FAILED"));
#ifdef SERIAL_DEBUG
    Serial.println(F("Failed to verify storage device..."));
#endif
    while (1);
  }

  memoryDevice.write(0, writeBuffer, 8);
  memoryDevice.read(0, readBuffer, 8);

  if (memcmp(writeBuffer, readBuffer, 8))
  {
    lcd.print(F("FAILED"));
#ifdef SERIAL_DEBUG
    Serial.println(F("Failed to verify storage device..."));
#endif
    while (1);
  }

  lcd.print(F("SUCCESS"));
  delay(1000);
}

void InitRTC()
{
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(F("Check RTC"));
  DateTime now;
  now = rtc.now();
  delay(2000); //Wait at least 1 second
  lcd.setCursor(0, 1);
  if (now.unixtime() != rtc.now().unixtime())
  {
    lcd.print(F("SUCCESS"));
    delay(1000);
  }
  else
  {
    lcd.print(F("FAILED"));
#ifdef SERIAL_DEBUG
    Serial.println(F("Failed to see RTC time change..."));
#endif
    while (1);
  }
}

void InitThermostat()
{
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(F("Start thermostat"));
  thermostat.addRadio(&radio);
  thermostat.addMemoryDevice(&memoryDevice, 256); //Allocate 256 bytes for non-basestation uses

#ifdef FIRST_BOOT
  thermostat.reset(true);
#endif

  if (!thermostat.recover())
  {
    lcd.setCursor(0, 1);
    lcd.print(F("FAILED"));
#ifdef SERIAL_DEBUG
    Serial.println(F("Failed to see RTC time change..."));
#endif
    while (1);
  }

  thermostat.begin();
  thermostat.background(rtc.now()); //Call one iteration of the backround loop to get the target temp
  lcd.setCursor(0, 1);
  lcd.print(thermostat.getPairedCount());
  lcd.print(F(" paired"));
  delay(2000);
}

void IOExpanderIntHandler()
{
  Serial.println("INTERRUPT");
  if (!bAwake)
  {
    outputMirror &= (byte)(~(1 << LCD_BACKLIGHT)); //Turn on the backlight
    UpdateControlOutputs(); //Update the IO expander outputs
  }
  UpdateButtonStates();
  bAwake = true; //Wake up the device
  nTimeAwake = millis();
}

void setup()
{
#ifdef SERIAL_DEBUG
  Serial.begin(115200);
  Serial.println(APP_NAME);
  Serial.println(VERSION);
#endif

  memset(buttonFilter, 0xFF, IO_DEBOUNCE_TIME);

  SPI.begin();
  Wire.begin();

#ifndef NO_IO_EXP
  InitIOExpander();
#endif

  InitLCD();

#ifndef NO_RADIO
  InitRadio();
#endif

#ifndef NO_STORAGE
  InitStorage();
#endif

#ifndef NO_RTC
  InitRTC();
#endif

  sleep.pwrDownMode();
  InitThermostat();
  lcd.clear();
}

void UpdateButtonStates()
{
  byte filteredBtnState;
  currentBtnState = filteredBtnState = IOExpander.readReg(MCP23s17::GPIOA);

  memset(btnEdge, 0, sizeof(btnEdge));

  //Go through the old states and filter the current
  for (byte i = 0; i < IO_DEBOUNCE_TIME; i++)
  {
    filteredBtnState ^= buttonFilter[i]; //Check for the differences
    filteredBtnState = ~filteredBtnState; //Then find the similarities
  }
  //This should filter down to the bits that have stayed the same the last samples

  //Update the previous states
  for (byte i = 1; i < IO_DEBOUNCE_TIME; i++)
    buttonFilter[i] = buttonFilter[i - 1]; //Shift everything back
  buttonFilter[0] = currentBtnState;

  currentBtnState &= filteredBtnState; //Keep the bits that were the same
  currentBtnState |= (oldBtnState & ~filteredBtnState); //Bring back the old bits that didn't change

  for (byte i = 0; i < ALL_BTNS; i++)
  {
    byte mask = (1 << i);
    if ((currentBtnState & mask) != (oldBtnState & mask))
    {
      if (currentBtnState & mask)
        btnEdge[i] = -1;
      else
        btnEdge[i] = 1;
    }
  }

  oldBtnState = currentBtnState;
}

void ToggleFanMode()
{
  switch (thermostat.getFanMode())
  {
    case ThermoStation::ON:
      thermostat.setFanMode(ThermoStation::AUTO);
      break;

    case ThermoStation::AUTO:
      thermostat.setFanMode(ThermoStation::ON);
      break;
  }
}

void ToggleHeatMode(bool bUp)
{
  switch (thermostat.getHeatMode())
  {
    case ThermoStation::HEAT:
      if (bUp)
        thermostat.setHeatMode(ThermoStation::OFF);
      else
        thermostat.setHeatMode(ThermoStation::COOL);
      break;

    case ThermoStation::COOL:
      if (bUp)
        thermostat.setHeatMode(ThermoStation::HEAT);
      else
        thermostat.setHeatMode(ThermoStation::OFF);
      break;

    case ThermoStation::OFF:
      if (bUp)
        thermostat.setHeatMode(ThermoStation::COOL);
      else
        thermostat.setHeatMode(ThermoStation::HEAT);
      break;
  }
}

void UpdateMenu()
{
  char btnPressed = -1;

  if (btnEdge[UP_BTN] == 1)
    btnPressed = UP_BTN;
  else if (btnEdge[DOWN_BTN] == 1)
    btnPressed = DOWN_BTN;
  else if (btnEdge[LEFT_BTN] == 1)
    btnPressed = LEFT_BTN;
  else if (btnEdge[RIGHT_BTN] == 1)
    btnPressed = RIGHT_BTN;

  switch (nSelectedRow)
  {
    case -1:
      switch (btnPressed)
      {
        case DOWN_BTN:
        case RIGHT_BTN:
          nSelectedRow = TEMP_READING_LINE;
          nSelectedColumn = 0;
          break;
      }
      break;

    case TEMP_READING_LINE:
      switch (btnPressed)
      {
        case UP_BTN:
          nSelectedRow = -1;
          nSelectedColumn = -1;
          break;

        case DOWN_BTN:
          nSelectedRow = SCHEDULE_LINE;
          nSelectedColumn = 0;
          break;

        case LEFT_BTN:
          //Change device
          break;

        case RIGHT_BTN:
          //Change device
          break;
      }
      break;

    case SCHEDULE_LINE:
      switch (btnPressed)
      {
        case UP_BTN:
          switch (nSelectedColumn)
          {
            case 0:
              nSelectedRow = TEMP_READING_LINE;
              nSelectedColumn = 0;
              break;

            case SCHEDULE_VAL_OFFSET:
              //Turn schedule on or off
              break;

            case SET_OFFSET:
              //Increase target temp
              break;
          }
          break;

        case DOWN_BTN:
          switch (nSelectedColumn)
          {
            case 0:
              nSelectedRow = MODE_LINE;
              nSelectedColumn = 0;
              break;

            case SCHEDULE_VAL_OFFSET:
              //Turn schedule on or off
              break;

            case SET_OFFSET:
              //Decrease target temp
              break;
          }
          break;

        case LEFT_BTN:
          switch (nSelectedColumn)
          {
            case SCHEDULE_VAL_OFFSET:
              nSelectedColumn = 0;
              break;

            case SET_OFFSET:
              nSelectedColumn = SCHEDULE_VAL_OFFSET;
              break;
          }
          break;

        case RIGHT_BTN:
          switch (nSelectedColumn)
          {
            case 0:
              nSelectedColumn = SCHEDULE_VAL_OFFSET;
              break;

            case SCHEDULE_VAL_OFFSET:
              nSelectedColumn = SET_OFFSET;
              break;
          }
          break;
      }
      break;

    case MODE_LINE:
      switch (btnPressed)
      {
        case UP_BTN:
          switch (nSelectedColumn)
          {
            case 0:
              nSelectedRow = SCHEDULE_LINE;
              nSelectedColumn = 0;
              break;

            case MODE_VAL_OFFSET:
              ToggleHeatMode(true);
              break;

            case FAN_VAL_OFFSET:
              ToggleFanMode();
              break;
          }
          break;

        case DOWN_BTN:
          switch (nSelectedColumn)
          {
            case 0:
              nSelectedRow = TIME_LINE;
              nSelectedColumn = 0;
              break;

            case MODE_VAL_OFFSET:
              ToggleHeatMode(false);
              break;

            case FAN_VAL_OFFSET:
              ToggleFanMode();
              break;
          }
          break;

        case LEFT_BTN:
          switch (nSelectedColumn)
          {
            case MODE_VAL_OFFSET:
              nSelectedColumn = 0;
              break;

            case FAN_VAL_OFFSET:
              nSelectedColumn = MODE_VAL_OFFSET;
              break;
          }
          break;

        case RIGHT_BTN:
          switch (nSelectedColumn)
          {
            case 0:
              nSelectedColumn = MODE_VAL_OFFSET;
              break;

            case MODE_VAL_OFFSET:
              nSelectedColumn = FAN_VAL_OFFSET;
              break;
          }
          break;
      }
      break;

    case TIME_LINE:
      switch (btnPressed)
      {
        case UP_BTN:
          nSelectedRow = MODE_LINE;
          nSelectedColumn = 0;
          break;

        case LEFT_BTN:
          break;

        case RIGHT_BTN:
          break;
      }
      break;
  }

  if (btnPressed != -1)
  {
    nLastLCDUpdate = (millis() - 2000);
    Serial.print((int)btnPressed);
    Serial.print(' ');
    Serial.print((int)nSelectedRow);
    Serial.print(' ');
    Serial.print((int)nSelectedColumn);
    Serial.println();
  }
}

void UpdateTimeDisplay()
{
  byte month, day, hour, minute;
  month = rtc.now().month();
  day = rtc.now().day();
  hour = rtc.now().hour();
  minute = rtc.now().minute();

  lcd.setCursor(DATE_OFFSET, TIME_LINE);

  if (month < 10)
    lcd.print(0);
  lcd.print(month);

  lcd.print('-');

  if (day < 10)
    lcd.print(0);
  lcd.print(day);

  lcd.setCursor(TIME_OFFSET, TIME_LINE);

  if (hour < 10)
    lcd.print(0);
  lcd.print((int)hour);

  lcd.print(':');

  if (minute < 10)
    lcd.print(0);
  lcd.print((int)minute);

  lcd.setCursor(DAY_OFFSET, TIME_LINE);

  switch (ThermoStation::dayofweek(rtc.now()))
  {
    case 0:
      lcd.print(SUNDAY_STRING);
      break;

    case 1:
      lcd.print(MONDAY_STRING);
      break;

    case 2:
      lcd.print(TUESDAY_STRING);
      break;

    case 3:
      lcd.print(WEDNESDAY_STRING);
      break;

    case 4:
      lcd.print(THURSDAY_STRING);
      break;

    case 5:
      lcd.print(FRIDAY_STRING);
      break;

    case 6:
      lcd.print(SATURDAY_STRING);
      break;
  }
}

void UpdateControlOutputs()
{
  //Check for changes to the heat control
  if (thermostat.isHeatOn() && !bOldHeatState)
  {
    outputMirror |= (byte)(1 << HEAT_ON);
#ifdef SERIAL_DEBUG
    Serial.println(F("HEAT ON"));
#endif
  }
  else if (!thermostat.isHeatOn() && bOldHeatState)
  {
    outputMirror &= (byte)(~(1 << HEAT_ON));
#ifdef SERIAL_DEBUG
    Serial.println(F("HEAT OFF"));
#endif
  }

  if (thermostat.isCoolOn() && !bOldCoolState)
  {
    outputMirror |= (byte)(1 << COOL_ON);
#ifdef SERIAL_DEBUG
    Serial.println(F("COOL ON"));
#endif
  }
  else if (!thermostat.isCoolOn() && bOldCoolState)
  {
    outputMirror &= (byte)(~(1 << COOL_ON));
#ifdef SERIAL_DEBUG
    Serial.println(F("COOL OFF"));
#endif
  }

  if (thermostat.isFanOn() && !bOldFanState)
  {
    outputMirror |= (byte)(1 << FAN_ON);
#ifdef SERIAL_DEBUG
    Serial.println(F("FAN ON"));
#endif
  }
  else if (!thermostat.isFanOn() && bOldFanState)
  {
    outputMirror &= (byte)(~(1 << FAN_ON));
#ifdef SERIAL_DEBUG
    Serial.println(F("FAN OFF"));
#endif
  }
  //Update the IO expander output
  IOExpander.writeReg(MCP23s17::OLATB, outputMirror);

  bOldHeatState = thermostat.isHeatOn();
  bOldCoolState = thermostat.isCoolOn();
  bOldFanState = thermostat.isFanOn();
}

void UpdateSleepState()
{
  if ((millis() - nTimeAwake) > AWAKE_TIME)
  {
    Serial.println("SLEEP");

    outputMirror |= (byte)((1 << LCD_BACKLIGHT)); //Turn off the backlight
    UpdateControlOutputs(); //Update the IO expander outputs

    //Reset the menu selection when going to sleep
    nSelectedColumn = -1;
    nSelectedRow = -1;
    lcd.noBlink();

    delay(100);

    bAwake = false;
    sleep.sleepDelay(SLEEP_TIME, bAwake);
    bAwake = true;
    nTimeAwake = millis();

    Serial.println("WAKE");
  }
}

void UpdateIOExpander()
{
  //Update the button states
  if ((millis() - lastIOExpUpdateTime) > 5)
  {
    UpdateButtonStates();
    UpdateControlOutputs();
    UpdateMenu(); //Handle any button presses to update the menu
    lastIOExpUpdateTime = millis();
  }
}

void UpdateReadingDisplay()
{
  lcd.setCursor(0, TEMP_READING_LINE);
  lcd.print(thermostat.getTargetTemp());
  lcd.print((char)223); //degree symbol

  lcd.print('/');

  lcd.print(thermostat.getCurrentTemp());
  lcd.print((char)223);
}

void UpdateModeDisplay()
{
  lcd.setCursor(MODE_OFFSET, MODE_LINE);
  lcd.print(MODE_STRING);
  switch (thermostat.getHeatMode())
  {
    case ThermoStation::OFF:
      lcd.print(OFF_STRING);
      break;

    case ThermoStation::HEAT:
      lcd.print(HEAT_STRING);
      break;

    case ThermoStation::COOL:
      lcd.print(COOL_STRING);
      break;
  }

  lcd.setCursor(FAN_OFFSET, FAN_LINE);
  lcd.print(FAN_STRING);
  switch (thermostat.getFanMode())
  {
    case ThermoStation::AUTO:
      lcd.print(AUTO_STRING);
      break;

    case ThermoStation::ON:
      lcd.print(ON_STRING);
      break;
  }
}

void UpdateScheduleDisplay()
{
  lcd.setCursor(0 , SCHEDULE_LINE);
  lcd.print(SCHEDULE_STRING);

  if (thermostat.usingSchedule())
    lcd.print(ON_STRING);
  else
    lcd.print(OFF_STRING);

  lcd.setCursor(SET_OFFSET, SCHEDULE_LINE);
  lcd.print(thermostat.getTargetTemp());
  lcd.print((char)223); //degree symbol
}

void loop()
{
  UpdateSleepState();
  UpdateIOExpander();

  if ((millis() - nLastLCDUpdate) > 1000)
  {
    lcd.noBlink();
    UpdateReadingDisplay();
    UpdateScheduleDisplay();
    UpdateModeDisplay();
    UpdateTimeDisplay();

    if (nSelectedRow >= 0 && nSelectedColumn >= 0)
    {
      lcd.setCursor(nSelectedColumn, nSelectedRow);
      lcd.blink();
    }


    nLastLCDUpdate = millis();
  }

  //Update the thermostat with the current time
  thermostat.background(rtc.now());

#ifdef SERIAL_DEBUG
  uint32_t UID;
  char sName[REMOTE_NAME_LENGTH];

  if (Serial.available())
  {
    char c = Serial.read();
    switch (c)
    {
      case 'd':
      case 'D':
        thermostat.startDiscovery(5000);
        break;

      case 's':
      case 'S':
        thermostat.stopDiscovery();
        break;

      case '0':
        thermostat.getDiscoveredDevice(0, &UID, sName);
        if (thermostat.pair(UID, sName, 1000))
          Serial.println(F("SUCCESS"));
        else
          Serial.println(F("FAILED"));
        break;

      case 'q':
      case 'Q':
        break;
    }
  }
#endif
}
