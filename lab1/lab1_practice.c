#include "REGX51.h"

#define UI unsigned int
#define UC unsigned char
#define LED P1
#define btn1 P2_0 	// add
#define btn2 P2_1	// minus

void delay_ms(UI);

void main()
{ 
	UC patt = 0x00;		// LED value
	UI debtn1, debtn2;	// debounce

	while(1) {
		if((btn1 == 0) && (debtn1 == 1) || (btn2 == 0) && (debtn2 == 1)) {
			delay_ms(10);
			(btn1 == 0) && (patt++);
			(btn2 == 0) && (patt--);
		}

		LED = ~patt;
		debtn1 = btn1;
		debtn2 = btn2;
		delay_ms(10);
	}
}

void delay_ms(UI input_ms)
{
    UI cnt1 = 0;
    UC cnt2 = 0;

    for (cnt1 = 0; cnt1 < input_ms; cnt1++)
        for (cnt2 = 0; cnt2 < 120; cnt2++) ;
}