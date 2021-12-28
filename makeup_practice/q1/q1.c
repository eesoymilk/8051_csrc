#include "REGX51.h"
#include "delay.h"
#include "ssd.h"

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long
#define Hall_In P3_7
#define PB1 P3_2
#define PB2 P3_3
#define PB3 P2_0
#define LED P1

UC patt;
UC STATE = 0;
UC STATE_Pre = 0;
UC Hall_Pre = 0;
UC Hall_Hold = 0;
UL timer_ms = 0;

UC MORSEIN[5];
UC MORSECUR;
UC DECODED;
UC SID[] = {1, 0, 9, 0, 6, 1, 1, 3, 8, 0};

UC SendData, SendFlag = 0;
UC ReceivedData, ReceivedFlag = 0;

void INIT();

void T0_isr(void) interrupt 1
{
    TH0 = (65536-1000) / 256;
	TL0 = (65536-1000) % 256;

    timer_ms++;
    // posedge
	if (Hall_In == 0 && Hall_Pre == 1) {
        if (STATE == 1) {
            patt = (1 << MORSECUR);
            Hall_Hold = 1;
            timer_ms = 0;
        }
    }

    // nedge
    if (Hall_In == 1 && Hall_Pre == 0) {
        if (STATE == 1 && Hall_Hold == 1) {
            patt |= 0x80;
            if (timer_ms >= 2000) {
                patt |= 0x60;
                MORSEIN[MORSECUR] = 1;
            }
            if (++MORSECUR >= 5)
                STATE = 2;
        }
    }

    Hall_Pre = Hall_In;
}

void uart_isr(void) interrupt 4
{  
    if (TI == 1)
        TI = 0;
    if (RI == 1) {
		RI = 0;
		ReceivedData = SBUF;
		ReceivedFlag = 1;
    }
}

void main(void)
{
    UI depb1 = 1, depb2 = 1, depb3 = 1;
    UC i, j, shift, idx;

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

	while (1) {
		if((PB1 == 1 && depb1 == 0) || (PB2 == 1 && depb2 == 0) || (PB3 == 1 && depb3 == 0)) {
			delay_ms(10);
            if (depb1 == 0) {
                INIT();
            }
            if (depb2 == 0) {
                SendData = DECODED;
                SendFlag = 1;
            }
            if (depb3 == 0) {
                for (shift = 10; shift; shift--) {
                    for (i = 1; i <= 8; i++) {
                        if ((idx = 8 - i + shift - 1) < 10)
                            SerialDIN(i, SSD_CODE[SID[idx]]);
                        else
                            SerialDIN(i, 0);
                    }
                    delay_ms(500);
                }
                
            }
		}

        if (STATE == 2 && STATE_Pre == 1) {
            if (MORSEIN[0] == 0) {
                DECODED = 1;
                for (i = 1; i < 5 && MORSEIN[i] == 0; i++)
                    DECODED++;
                for (j = i + 1; j <= 5; j++)
                    if (MORSEIN[j] == 0)
                        DECODED = 0x0e;
            } else {
                DECODED = 6;
                for (i = 1; i < 5 && MORSEIN[i] == 1; i++)
                    DECODED++;
                for (j = i + 1; j <= 5; j++)
                    if (MORSEIN[j] == 1)
                        DECODED = 0x0e;
                if (DECODED == 10)
                    DECODED = 0;
            }
            SID[9] = DECODED;
            SerialDIN(1, SSD_CODE[DECODED]);
            for (i = 2; i <= 8; i++)
                SerialDIN(i, 0);
        }

        // SENDING
		if (SendFlag == 1) {
            SBUF = SendData;
            SendFlag = 0;
            for (i = 1; i <= 8; i++)
                SerialDIN(i, 0);
		}
        // RECEIVEING
        if (ReceivedFlag == 1) {
            if (STATE == 2)
                SerialDIN(8, SSD_CODE[ReceivedData]);
            ReceivedFlag = 0;
		}

		depb1 = PB1;
		depb2 = PB2;
		depb3 = PB3;
        LED = ~patt;
        STATE_Pre = STATE;
		delay_ms(10);
	}
}

void INIT()
{
    UC i;
    
    LED = 0xFF;
    delay_ms(500);
    LED = 0x00;
    delay_ms(500);
    LED = 0xFF;
    // delay_ms(500);
    // LED = 0x00;
    // delay_ms(500);
    // LED = 0xFF;
    STATE = 1;
    for (i = 0; i < 8; i++) {
        if (i < 5)  MORSEIN[i] = 0;
        SerialDIN(i + 1, 0);
    }
    MORSECUR = 0;
    patt = 0;
}