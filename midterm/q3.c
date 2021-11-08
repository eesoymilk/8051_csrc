#include "REGX51.h"
#define PB1 P3_2
#define PB2 P3_3
#define PB3 P2_0
#define PB4 P2_1

int PITCH[] = {1000, 1000, 1911, 1804, 1702, 1607, 1517, 1432};
int IDX;

void T0_isr(void) interrupt 1
{
	TH0 = (65536-PITCH[IDX]) / 256;
	TL0 = (65536-PITCH[IDX]) % 256;
	if (IDX > 1)
    P3_7 = ~P3_7;
}

void main()
{ 
	TMOD = 0x01;
	TH0  = (65536 - 1000) / 256;
	TL0  = (65536 - 1000) % 256;
	ET0  = 1;
	EA   = 1;
	TR0  = 1;

	for ( ; ; IDX = 0) {
		if (PB2 == 0)   IDX = 2;
		if (PB3 == 0)   IDX = 4;
		if (PB4 == 0)   IDX = 6;
		if (PB1 == 0)   IDX++;
	}
}