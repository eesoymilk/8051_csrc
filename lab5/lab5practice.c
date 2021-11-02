#include "REGX51.h"

#define DIN  P2_4
#define LOAD P2_3
#define CLK  P2_2
#define BTN3 P2_0
#define BTN4 P2_1
#define BTN1 P3_2
#define BTN2 P3_3
#define UI unsigned int
#define UC unsigned char

void BitExtract(UC);
void SerialDIN(UC, UC);

UC SSD_CODE[] = {
    0x7E,   // 0b01111110: 0
    0x30,   // 0b00110000: 1
    0x6D,   // 0b01101101: 2
    0x79,   // 0b01111001: 3
    0x33,   // 0b00110011: 4
    0x5B,   // 0b01011011: 5
    0x5F,   // 0b01011111: 6
    0x70,   // 0b01110000: 7
    0x7F,   // 0b01111111: 8
    0x7B,   // 0b01111011: 9
    0x77,   // 0b01110111: A
    0x1F,   // 0b00011111: b
    0x4E,   // 0b01001110: C
    0x3D,   // 0b00111101: d
    0x4F,   // 0b01001111: E
    0x47    // 0b01000111: F
}, KEY[] = {1, 2, 3, 4, 3, 2, 1};
UC SendData, SendFlag = 0;
UC ReceivedData, ReceivedFlag = 0;

void uart_isr(void) interrupt 4
{  
    if (TI == 1) TI = 0;
    if (RI == 1) {
		RI = 0;
		ReceivedData = SBUF;
		ReceivedFlag = 1;
    }
}

void main(void)
{
    UC cnt = 0, idx = 0, ingame = 0, i;

	// SET TIMER AND SERIAL PORT
	IE = 0x90;     
	SCON = 0x50;	// SM0 = 0, SM1 = 1 => MODE1 RE = 1
	TMOD = 0x20;    // T1M1: 8-BIT AUTO-RELOAD
	TH1 = 250;
	TR1 = 1;
    // SSD INIT
    SerialDIN(0x0C, 0x01);  // Normal mode (0xX1)
    SerialDIN(0x0F, 0x00);  // Overwrite SHUTDOWN
    SerialDIN(0x09, 0x00);  // no decoding
    SerialDIN(0x0B, 0x07);  // use all 8 digits
    SerialDIN(0x0A, 0x07);  // brightness     

	while (1) {
		// SCANING
        if (!BTN1 || !BTN2 || !BTN3 || !BTN4) {
            if (cnt < 3) {
				if (++cnt == 3) {
                    (BTN1 == 0) && (SendData = 1);
                    (BTN2 == 0) && (SendData = 2);
                    (BTN3 == 0) && (SendData = 3);
                    (BTN4 == 0) && (SendData = 4);
                    SendFlag = 1;
				}
			}
        } else {
            cnt = 0;
        }

        // SENDING
		if (SendFlag == 1) {
            SBUF = SendData;
            SendFlag = 0;
		}

        // RECEIVEING
        if (ReceivedFlag == 1) {
            if (idx < 7) {
                if (ReceivedData == KEY[idx])
                    SerialDIN(7 - idx, SSD_CODE[KEY[idx++]]);
            } else {
                idx = 0;
            }
            ReceivedFlag = 0;
		}

        // GAME STATE
        if (idx == 0 && ingame == 0) {
            SerialDIN(8, SSD_CODE[0]);
            for (i = 1; i < 8; i++)
                SerialDIN(i, 0);
            ingame = 1;
        }
        if (idx == 7 && ingame == 1) {
            SerialDIN(8, SSD_CODE[1]);
            ingame = 0;
        }
	}
}

void BitExtract(UC bits)
{
    UC i;

    for (i = 0; i < 8; i++) {
        CLK = 0;
        DIN = (bits & 0x80);
        bits <<= 1;
        CLK = 1;
    }
}

void SerialDIN(UC address, UC dat)
{
    LOAD = 0;
    BitExtract(address);
    BitExtract(dat);
    LOAD = 1;
}