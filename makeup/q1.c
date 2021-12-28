// #include "oled_i2c.h"
#include "REGX51.h"
#include "stdutils.h"
#include "i2c.h"
#include "MPU6050.h"
#include "delay.h"
#include "ssd.h"

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long
#define PB1 P3_2
#define PB2 P3_3
#define PB3 P2_0
#define PB4 P2_1
#define LED P1

UC patt;
UC STATE = 0;
UC STATE_Pre = 0;
UL ms = 0;

UI CLOCK[3] = {23, 59, 40};
UI ALRAM[3] = {0, 0, 15};

UC ON = 0;

UC Date[] = {1, 2, 1, 4};
UC SID[] = {1, 3, 8};

UC SendData, SendFlag = 0;
UC ReceivedData, ReceivedFlag = 0;

void INIT();
void ClockMode();
void AlarmMode();
void IncTime(UI*);
void DecTime(UI*);

void T0_isr(void) interrupt 1
{
    TH0 = (65536-1000) / 256;
	TL0 = (65536-1000) % 256;

    ms++;
    if (STATE == 1) {
        if (ms % 500 == 0) {
            if (patt & 0x10)    patt &= 0xef;
            else                patt |= 0x10;
            
            if (ms == 1000) {
                IncTime(CLOCK);
                ms = 0;
            }
        }
        if (CLOCK[0] == ALRAM[0] && CLOCK[1] == ALRAM[1] && CLOCK[2] == ALRAM[2])
            ON = 1;
    }
    if (STATE == 2) {
        if (ms == 500)
            SerialDIN(SHUTDOWN, 0x00);
        if (ms == 1000) {
            SerialDIN(SHUTDOWN, 0x01);
            ms = 0;
        }
    }
    if (ON) {
        P3_7 = ~P3_7;
    }
}

void main(void)
{
    UI depb1 = 1, depb2 = 1, depb3, depb4;
    int z;

    // IE = 0x92;  // 1001_0010
    EA = 1;
    ET0 = 1;

	TMOD = 0x01;
	TH0  = (65536 - 1000) / 256;
	TL0  = (65536 - 1000) % 256;
    TR0 = 1;
    SSD_INIT();
    MPU6050_INIT();
    INIT();

	while (1) {
		if((PB1 == 1 && depb1 == 0) || (PB2 == 1 && depb2 == 0)) {
			delay_ms(10);
            if (depb1 == 0) {
                ClockMode();
            }
            if (depb2 == 0) {
                AlarmMode();
            }
		}

        if((PB3 == 0 && depb3 == 1) || (PB4 == 0 && depb4 == 1)) {
			delay_ms(10);
            if (PB3 == 0) {
                if (STATE == 2) {
                    IncTime(ALRAM);
                }
            }
            if (PB4 == 0) {
                if (STATE == 2) {
                    DecTime(ALRAM);
                }
            }
		}

        if (STATE == 1) {
            SSD_ShowTime(CLOCK);
                if (CLOCK[0] > 11){
                patt |= 0x80;
                patt &= 0xbf;
            } else {
                patt |= 0x40;
                patt &= 0x7f;
            }
        } else if (STATE == 2) {
            SSD_ShowTime(ALRAM);
        }

        if (ON) {
            readMPU6050_AccelData(&accel_data[0]);
            z = accel_data[2];
            if (z < 10000 && z > -10000) {
                ON = 0;
            }
        }
        		
        depb1 = PB1;
		depb2 = PB2;
		depb3 = PB3;
		depb4 = PB4;
        LED = ~patt;
		delay_ms(10);
	}
}

void INIT()
{
    UC i;
    for (i = 1; i <= 3; i++)
        SerialDIN(i, SSD_CODE[SID[3 - i]]);
    SerialDIN(4, 0x01);
    for (i = 0; i < 4; i++)
        SerialDIN(i + 5, SSD_CODE[Date[3 - i]]);
}

void ClockMode()
{
    STATE = 1;
    patt |= 0x01;
    patt &= 0xfd;
    SerialDIN(SHUTDOWN, 0x01);
    ms = 0;
}

void AlarmMode()
{
    STATE = 2;
    patt |= 0x02;
    patt &= 0xee;
    ms = 0;
}

void IncTime(UI* t)
{
    if (++t[2] == 60) {
        t[2] = 0;
        if (++t[1] == 60) {
            t[1] = 0;
            if (++t[0] == 24) {
                t[0] = 0;
            }    
        }
    }
}

void DecTime(UI* t)
{
    if (t[2]-- == 0) {
        t[2] = 59;
        if (t[1]-- == 0) {
            t[1] = 59;
            if (t[0]-- == 0) {
                t[0] = 23;
            }    
        }
    }
}