
#include "soft_timer.h"

#define MAX_TIMERS_NUMBER 32

volatile struct soft_timer timerTab[MAX_TIMERS_NUMBER];
volatile struct funDelay functionDelayTab[MAX_TIMERS_NUMBER];

uint8_t timerCnt=0, functionDelayCnt=0;
uint16_t oneTimeTimer;

void softTimerFunctionEvent(void);



TimerId softTimerRegisterCallback( void (*ptr)(void), uint16_t time){

	if(time==0)
		time=1000;

	timerTab[timerCnt].time=time;
	timerTab[timerCnt].state =timerSTOP;
	timerTab[timerCnt].ptr = ptr;

	timerCnt++;
	return timerCnt-1;
}

void softTimerChangeState(TimerId timerID, uint8_t newState){
	if(timerID>=MAX_TIMERS_NUMBER) return;

	if(newState==timerRUN && timerTab[timerID].state==timerSTOP ) timerTab[timerID].counter=timerTab[timerID].time;
	timerTab[timerID].state=newState;

}

void softTimerRefresh(TimerId timerID){
	if(timerID>=MAX_TIMERS_NUMBER) return;

	timerTab[timerID].counter=timerTab[timerID].time;

}

void softTimerEvent(void){

	for(uint8_t i=0; i<timerCnt; i++){

		if(timerTab[i].state==timerRUN && timerTab[i].counter==0){
			timerTab[i].ptr();
			softTimerRefresh(i);

		}
	}

	softTimerFunctionEvent();

}

void softTimerTick(void){

	for(uint8_t i=0; i<timerCnt; i++){
		if(timerTab[i].state==timerRUN && timerTab[i].counter) timerTab[i].counter--;
	}

	for(uint8_t i=0; i<functionDelayCnt;i++)
		if(functionDelayTab[i].time) functionDelayTab[i].time--;

	if(oneTimeTimer)oneTimeTimer--;

}

/*
 *Change time period of event
 *Set time to 0 provide to pause timer
 */
void softTimerSetTime( TimerId timerID, uint16_t time){

	timerTab[timerID].time = time;
	softTimerRefresh(timerID);

	if(time && timerTab[timerID].state==timerPAUSE) timerTab[timerID].state=timerRUN;
	else if( time==0 && timerTab[timerID].state==timerRUN) timerTab[timerID].state=timerPAUSE;

}



void softTimerOneTimeEnable(uint16_t time){
	oneTimeTimer=time;
}

uint8_t softTimerOneTime(uint8_t mainEvents){

	if(!oneTimeTimer) return 1;
//	if(mainEvents)gloabalEvents();	//TODO

	return 0;
}
void softTimerFunctionExeAndRemove(uint8_t Id){

	functionDelayTab[Id].ptr();
	for(uint8_t i=(Id+1); i<functionDelayCnt;i++){

		functionDelayTab[i-1]=functionDelayTab[i];

	}
	functionDelayCnt--;

}
void softTimerFunctionEvent(void){

	for(uint8_t i=0; i<functionDelayCnt;i++){

		if(functionDelayTab[i].time==0) softTimerFunctionExeAndRemove(i);

	}

}

void softTimerFunctionDelay(uint16_t time, void (*ptr)(void)){

	if(functionDelayCnt>=MAX_TIMERS_NUMBER) return;

	functionDelayTab[functionDelayCnt].time=time;
	functionDelayTab[functionDelayCnt].ptr = ptr;

	functionDelayCnt++;

}

