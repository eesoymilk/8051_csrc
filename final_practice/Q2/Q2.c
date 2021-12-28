#include "REGX51.h"
#include "delay.h"
#include "adc_ssd.h"

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long
#define Hall_In P3_6

UC BUZZ = 0;
UC Hall_Pre = 0;
UL timer_ms = 0;
UL cnt = 0;

void INIT();

void T0_isr(void) interrupt 1
{
    TH0 = (65536-1000) / 256;
	TL0 = (65536-1000) % 256;

    timer_ms++;
    // posedge
	if (Hall_In == 0 && Hall_Pre == 1) {
        cnt++;
        SSD_Number(cnt);
        if (cnt % 2 == 0) {
            BUZZ = 1;
            timer_ms = 0;
        }
    }
    if (BUZZ) {
        P3_7 = ~P3_7;
        if (timer_ms == 200 && cnt % 2 == 0 && cnt % 8 != 0) {
            BUZZ = 0;
        }
        if (timer_ms == 1000 && cnt % 8 == 0) {
            BUZZ = 0;
        }
    }

    Hall_Pre = Hall_In;
}

void main(void)
{
    // IE = 0x92;  // 1001_0010
    EA = 1;
    ES = 1;
    ET0 = 1;
	SCON = 0x50;	// SM0 = 0, SM1 = 1 => MODE1 RE = 1

	TMOD = 0x21;
	TH0  = (65536 - 1000) / 256;
	TL0  = (65536 - 1000) % 256;
	TR0  = 1;
    TH1 = 250;
	TR1 = 1;
    Hall_In = 1;    // Initialize Hall sensor signal (deactivated)

    SSD_INIT();
    SSD_Number(cnt);

	while (1) { }
}