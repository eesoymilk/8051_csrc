#include "REGX51.h"
void delay(unsigned int input);

unsigned char led_stage = 0;

main()
{
  EA= 1;
  EX0= 1;
  IT0 = 1;

  P3_2 = 1;
  P3_3 = 1;

  while(1)
  {
    switch(led_stage)
    {
    	case 0:
    		P0_0 = 0;
    		P1_0 = 0;
    	break;
    	case 1: P0_1 = 0;
    		P1_1 = 0;
    	break;
    	case 2: P0_2 = 0;
    		P1_2 = 0;
    	break;
    	case 3: P0_3 = 0;
    		P1_3 = 0;
    	break;
    	case 4: P0_4 = 0;
    		P1_4 = 0;
    	break;
    	case 5: P0_5 = 0;
    		P1_5 = 0;
    	break;
    	case 6: P0_6 = 0;
    		P1_6 = 0;
    	break;
    	case 7: P0_7 = 0;
    		P1_7 = 0;
    	break;
    	case 8: P2_7 = 0;
    		P3_0 = 0;
    	break;
    	case 9: P2_6 = 0;
    		P3_1 = 0;
    	break;
    	case 10: P2_5 = 0;
    	         P3_4 = 0;
    	break;
    	case 11: P2_4 = 0;
    	         P3_5 = 0;
    	break;
    	case 12: P2_3 = 0;
    	         P3_6 = 0;
    	break;
    	case 13: P2_2 = 0;
    	         P3_7 = 0;
    	break;
    	case 14: P2_1 = 0;
    	         P2_0 = 0;
    	break;
    	case 15: P0 = 0xff;
    	         P1 = 0xff;
    	         P2 = 0xff;
    	         P3 = 0xff;
    	break;
    }
    delay(2);
    led_stage ++;
    if(led_stage >= 16)
    	led_stage = 0;
  }
}

void delay(unsigned int input)
{
	unsigned int cnt1 = 0;
	unsigned char cnt2 = 0;

	for(cnt1 = 0; cnt1 < input; cnt1 ++)
	{
		for(cnt2 = 0; cnt2 < 90;cnt2 ++);
	}
}

void EX0_int(void) interrupt 0 // External interrupt 0
{
  led_stage = 15;
  P0 = 0xff;
  P1 = 0xff;
  P2 = 0xff;
  P3 = 0xff;
}
