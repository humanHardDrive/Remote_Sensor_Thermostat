#ifndef __ESPINTERFACE_H__
#define __ESPINTERFACE_H__

#include <Arduino.h>

#include "Msgs.h"
#include "MemDevice.h"

#define SERIAL_STX  0xAA /*Non-ASCII character*/
#define SERIAL_ETX  0x55

#define COMMAND_BUFFER_LEN    128
#define COMMAND_QUEUE_SIZE    1

class ESPInterface : public MemDevice
{
  public:
    ESPInterface();
    ~ESPInterface();

    void background(uint8_t c);

    void sendCommand(uint8_t cmd, void* buf, uint8_t len);

    bool messageReady(uint8_t* pCmd, void** buf);

    uint8_t read(uint32_t addr);
    uint32_t read(uint32_t addr, void* pBuf, uint32_t len);

    void write(uint32_t addr, uint8_t v);
    uint32_t write(uint32_t addr, void* pBuf, uint32_t len);

  private:
    enum PARSE_STATE
    {
      WAITING_FOR_STX = 0, //Waiting for the STX character to come over serial
      WAITING_FOR_CMD,  //Collecting the 2 letter command code
      WAITING_FOR_LEN,  //Getting the total number of characters in the data frame
      WAITING_FOR_DATA, //Actual data for the command
      WAITING_FOR_ETX,  //Waiting for the character to restart transmission
      ALL_PARSE_STATES
    };

    uint8_t m_ParseState = WAITING_FOR_STX;

    uint32_t m_LastRXTime = 0;

    uint8_t m_CurrentCommand = NO_CMD;
    uint8_t m_CurrentCommandLen;
    uint8_t m_CommandDataCount;
    uint8_t m_CommandBufQIn, m_CommandBufQOut, m_CommandBufQCount;
    uint8_t m_CommandBufQ[COMMAND_QUEUE_SIZE][COMMAND_BUFFER_LEN];

    void WaitingForSTXState(uint8_t);
    void WaitingForCMDState(uint8_t);
    void WaitingForLenState(uint8_t);
    void WaitingForDataState(uint8_t);
    void WaitingForETXState(uint8_t);

    void (ESPInterface::*m_StateFn[ALL_PARSE_STATES])(uint8_t) = {
      &ESPInterface::WaitingForSTXState,
      &ESPInterface::WaitingForCMDState,
      &ESPInterface::WaitingForLenState,
      &ESPInterface::WaitingForDataState,
      &ESPInterface::WaitingForETXState
    };
};

#endif
