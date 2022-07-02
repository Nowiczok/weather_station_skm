
#include "stdint.h"

#ifndef SOFT_TIMER_H_
#define SOFT_TIMER_H_

struct soft_timer {

	uint8_t id;
	uint8_t state;
	uint16_t time;
	uint16_t counter;
	void (*ptr)(void);
};

struct funDelay{

	uint16_t time;
	void (*ptr)(void);

};

enum softTimerState { timerSTOP=0, timerRUN, timerPAUSE};
enum softTimerRefresh { NoTimerRefresh, TimerRefresh};

typedef uint8_t TimerId ;

TimerId softTimerRegisterCallback( void (*ptr)(void), uint16_t time);
void softTimerChangeState(TimerId timerID, uint8_t newState);
void softTimerSetTime( TimerId timerID, uint16_t time);
void softTimerRefresh(TimerId timerID);
void softTimerEvent(void);

void softTimerFunctionDelay(uint16_t time, void (*ptr)(void));

void softTimerOneTimeEnable(uint16_t time);
uint8_t softTimerOneTime(uint8_t mainEvents);

void softTimerTick(void);


#endif
