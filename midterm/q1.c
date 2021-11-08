#include "REGX51.h"

#define UI unsigned int
#define UC unsigned char
#define LED P1
#define PB1 P3_2
#define PB2 P3_3
#define PB3 P2_0
#define PB4 P2_1

void delay_ms(UI);

void main()
{ 
	UC patt = 0x80;     		    // LED value
	UI depb1, depb2, depb3, depb4;  // debounced

	while(1) {
        // Somehow, this doesn't works
        // if ((PB1 == 1 && depb1 == 0) || (PB2 == 1 && depb2 == 0)) {
        //     delay_ms(10);
        //     if (PB1 == 1) {
        //         (patt >>= 1) || (patt = 0x80);
        //     }
        //     if (PB2 == 1) {
        //         (patt <<= 1) || (patt = 0x01);
        //     }
        // }

        if (PB1 == 1 && depb1 == 0) {
            delay_ms(10);
            if (PB1 == 1) {
                (patt >>= 1) || (patt = 0x80);
            }
        }

        if (PB2 == 1 && depb2 == 0) {
            delay_ms(10);
            if (PB2 == 1) {
                (patt <<= 1) || (patt = 0x01);
            }
        }

        if (PB3 == 0) {
            delay_ms(500);
            if (PB3 == 0) {
                (patt >>= 1) || (patt = 0x80);
            }
        }

        if (PB4 == 0) {
            delay_ms(500);
            if (PB4 == 0) {
                (patt <<= 1) || (patt = 0x01);
            }
        }

		LED = ~patt;
		depb1 = PB1;
		depb2 = PB2;
		depb3 = PB3;
		depb4 = PB4;
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