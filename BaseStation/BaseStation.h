#ifndef __BASE_STATION_H__
#define __BASE_STATION_H__

#include <stdint.h>

#include "msgs.h"

class BaseStation
{
	public:
	BaseStation();
	~BaseStation();
	
	void startDiscovery(uint32_t timeout);
	void stopDiscovery();
	uint8_t getDiscoveryCount();
	
	void background();
	
	protected:
	void sendMsg(uint8_t dst, uint8_t cmd, uint8_t len, uint8_t* payload);
	
	virtual uint32_t clockms() = 0;
	virtual void print(const char* str) = 0;
	
	virtual int write(const void* buf, uint16_t len) = 0;
	virtual int available() = 0;
	virtual int read(const void* buf, uint16_t len) = 0;
	
	virtual void save(uint16_t addr, const void* buffer, uint16_t len) = 0;
	virtual void load(uint16_t addr, const void* buffer, uint16_t len) = 0;
	
	private:
	void discovery();
	
	private:
	bool m_bInDiscovery;
	uint32_t m_nDiscoveryTimeout;
	uint32_t m_nDiscoveryStartTime;
	uint8_t m_nRemoteDiscovered;
};

#endif