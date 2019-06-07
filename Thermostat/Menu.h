#ifndef __MENU_H__
#define __MENU_H__

#include <avr/pgmspace.h>

#define SCHEDULE_STRING         F("Schedule: ")
#define SET_TEMP_STRING         F("Set: ")
#define MODE_STRING             F("Mode: ")
#define HEAT_STRING             F("Heat")
#define COOL_STRING             F("Cool")
#define ON_STRING               F("On  ")
#define OFF_STRING              F("Off ")
#define AUTO_STRING             F("Auto")
#define MENU_STRING             F("Menu")
#define FAN_STRING              F("Fan: ")
#define SETTINGS_STRING         F("Settings")

#define MONDAY_STRING           F(" M")
#define TUESDAY_STRING          F(" T")
#define WEDNESDAY_STRING        F(" W")
#define THURSDAY_STRING         F("TH")
#define FRIDAY_STRING           F(" F")
#define SATURDAY_STRING         F("SA")
#define SUNDAY_STRING           F("SU")

#define NUM_SETTING_OPTIONS     7

#define SET_SCHEDULE_OPTION     0
#define SET_SCHEDULE_STRING     F("Set Schedule")

#define SET_DATE_TIME_OPTION    1
#define SET_DATE_TIME_STRING    F("Set Date/Time")

#define DISCOVER_DEVICES_OPTION 2
#define DISCOVER_DEVICES_STRING F("Discover Devices")
#define DISCOVERING_STRING      F("Discovering...")
#define FOUND_STRING            F("Found: ");

#define UNPAIR_DEVICE_OPTION    3
#define UNPAIR_STRING           F("Unpair Device")

#define RESET_OPTION            4
#define RESET_STRING            F("Reset Device")

#define ABOUT_OPTION            5
#define ABOUT_STRING            F("About")

#define EXIT_OPTION             6
#define EXIT_STRING             F("Exit")

//Main Menu Definitions
enum
{
  NULL_ITEM = 0,
  TEMPERATURE_READING_ITEM,
  SCHEDULE_ITEM,
  CONTROL_ITEM,
  MODE_ITEM,
  FAN_ITEM,
  SETTINGS_ITEM
};

typedef struct MENU_ITEM
{
  char cursorRow, cursorCol;

  void (*printLabel)(void);
  void (*printField)(void);

  MENU_ITEM* nextItem[4];
  bool (*btnFn)(uint8_t btn);
} MENU_ITEM_T;

static MENU_ITEM MAIN_MENU[] =
{
  { //Temperature reading menu item
    .cursorRow = 0, .cursorCol = 0,
    .printLabel = NULL,
    .printField = NULL,
    .nextItem = { &MAIN_MENU[NULL_ITEM], &MAIN_MENU[SCHEDULE_ITEM], &MAIN_MENU[NULL_ITEM], NULL},
    .btnFn = NULL
  },
  { //Schedule menu item
    .cursorRow = 1, .cursorCol = 0,
    .printLabel = NULL,
    .printField = NULL,
    .nextItem = { &MAIN_MENU[TEMPERATURE_READING_ITEM], &MAIN_MENU[MODE_ITEM], NULL, &MAIN_MENU[CONTROL_ITEM]},
    .btnFn = NULL
  },
  { //Control item
    .cursorRow = 1, .cursorCol = 15,
    .printLabel = NULL,
    .printField = NULL,
    .nextItem = { &MAIN_MENU[TEMPERATURE_READING_ITEM], &MAIN_MENU[FAN_ITEM], &MAIN_MENU[SCHEDULE_ITEM], NULL},
    .btnFn = NULL
  },
  { //Mode item
    .cursorRow = 2, .cursorCol = 0,
    .printLabel = NULL,
    .printField = NULL,
    .nextItem = { &MAIN_MENU[TEMPERATURE_READING_ITEM], &MAIN_MENU[SETTINGS_ITEM], &MAIN_MENU[SCHEDULE_ITEM], NULL},
    .btnFn = NULL
  },
  { //Fan item
    .cursorRow = 2, .cursorCol = 15,
    .printLabel = NULL,
    .printField = NULL,
    .nextItem = { &MAIN_MENU[TEMPERATURE_READING_ITEM], &MAIN_MENU[SETTINGS_ITEM], &MAIN_MENU[MODE_ITEM], NULL},
    .btnFn = NULL
  },
  { //Settings item
    .cursorRow = 3, .cursorCol = 0,
    .printLabel = NULL,
    .printField = NULL,
    .nextItem = { &MAIN_MENU[TEMPERATURE_READING_ITEM], &MAIN_MENU[FAN_ITEM], &MAIN_MENU[SCHEDULE_ITEM], NULL},
    .btnFn = NULL
  },
  { //Null menu item
    .cursorRow = -1, .cursorCol = -1,
    .printLabel = NULL,
    .printField = NULL,
    .nextItem = { NULL, &MAIN_MENU[TEMPERATURE_READING_ITEM], NULL, &MAIN_MENU[TEMPERATURE_READING_ITEM]},
    .btnFn = NULL
  }
};

#endif
