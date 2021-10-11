#include "REGX51.h"

#define U unsigned
#define LED P1
#define btn1 P2_0 	// left shift
#define btn2 P2_1	// right shift
#define btn3 INT1 	// mode change

void delay_ms(U int);

void main()
{ 
	U char patt = 0x80;     		// LED value
	U int debtn1, debtn2, debtn3;	// debounce
	U int mode = 0; 				// mode

	while(1) {
        if ((btn3 == 0) && (debtn3 == 1)) {
			delay_ms(10);
			(btn3 == 0) && (mode = ~mode);
		}

		if((btn1 == 0) && (debtn1 == 1)) {
			delay_ms(10);
			if(btn1 == 0) {
				(patt >>= 1) || (patt = 0x80);
				mode && ((patt >>= 1) || (patt = 0x80));
			}
		}

		if((btn2 == 0) && (debtn2 == 1)) {
			delay_ms(10);
			if(btn2 == 0) {
				(patt <<= 1) || (patt = 0x01);
				mode && ((patt <<= 1) || (patt = 0x01));
			}
		}

		LED = ~patt;
		debtn1 = btn1;
		debtn2 = btn2;
		debtn3 = btn3;
		delay_ms(10);
	}
}

void delay_ms(U int input_ms)
{
    U int cnt1 = 0;
    U char cnt2 = 0;

    for (cnt1 = 0; cnt1 < input_ms; cnt1++)
        for (cnt2 = 0; cnt2 < 120; cnt2++) ;
}