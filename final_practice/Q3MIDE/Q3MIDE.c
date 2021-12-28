#include "8051.h"
#include "delay.h"
#include "adc_ssd.h"
#include "i2c.h"
#include "MLX90614.h"

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long

UC STATE, RE;
int tmpc;
UI adc, dis;
UL timer_ms = 0, BUZZ[] = {1000, 1000, 500, 250};

void T0_isr(void) __interrupt 1
{
    TH0 = (65536-1000) / 256;
	TL0 = (65536-1000) % 256;

    timer_ms++;
    if (P3_7)   P3_7 = 0;
    else        P3_7 = 1;
    if (timer_ms == 1000) {
        timer_ms = 0;
        adc = read_adc3202(1);    // Read voltage from ADC channel 1
        SerialDIN(4,SSD_CODE[adc / 1000] | 0x80);
        SerialDIN(3,SSD_CODE[adc % 1000 / 100]);
        SerialDIN(2,SSD_CODE[adc % 100 / 10]);
        SerialDIN(1,SSD_CODE[adc % 10]);

        if (adc < 1000) {
            STATE = 0;
        } else if (adc >= 1000 && adc < 1500) {
            STATE = 1;
        } else if (adc >= 1500 && adc < 2000) {
            STATE = 2;
        } else if (adc >= 2000) {
            STATE = 3;
        }

        tmpc = readObjectTemp();
        SerialDIN(7,SSD_CODE[tmpc % 1000 / 100]);
        SerialDIN(6,SSD_CODE[tmpc % 100 / 10] | 0x80);
        SerialDIN(5,SSD_CODE[tmpc % 10]);
    }
}

void main(){

    // IE = 0x92;  // 1001_0010
    EA = 1;
    ET0 = 1;

	TMOD = 0x01;
	TH0 = (65536 - 1000) / 256;
	TL0 = (65536 - 1000) % 256;
	TR0 = 1;

    DOUT = 1; //Setting gpio input mode
    LOAD = 1; 
    CLK = 0;
    DIN = 0;
    SSD_INIT();

    while(1)
    {
        // adc = read_adc3202(1);    // Read voltage from ADC channel 1
        // SerialDIN(4,SSD_CODE[adc / 1000] | 0x80);
        // SerialDIN(3,SSD_CODE[adc % 1000 / 100]);
        // SerialDIN(2,SSD_CODE[adc % 100 / 10]);
        // SerialDIN(1,SSD_CODE[adc % 10]);

        // if (adc < 1000) {
        //     STATE = 0;
        // } else if (adc >= 1000 && adc < 1500) {
        //     STATE = 1;
        // } else if (adc >= 1500 && adc < 2000) {
        //     STATE = 2;
        // } else if (adc >= 2000) {
        //     STATE = 3;
        // }

        // tmpc = readObjectTemp();
        // SerialDIN(7,SSD_CODE[tmpc % 1000 / 100]);
        // SerialDIN(6,SSD_CODE[tmpc % 100 / 10] | 0x80);
        // SerialDIN(5,SSD_CODE[tmpc % 10]);

        // // dis = 100.0/(adc * 0.0003 - 0.0409);
        // // if (dis / 1000 != 0)
        // //     SerialDIN(8,SSD_CODE[dis / 1000]);
        // // else
        // //     SerialDIN(8,SSD_CODE[dis / 1000]);
        // // SerialDIN(7,SSD_CODE[dis % 1000 / 100] | 0x80);
        // // SerialDIN(6,SSD_CODE[dis % 100 / 10]);
        // // SerialDIN(5,SSD_CODE[dis % 10]);
        // delay_ms(100);
    }
}
