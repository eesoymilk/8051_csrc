#include <8051.h>
#include "lab6_adc_7segment.h"

unsigned int adc_value;
unsigned int dis_value;
unsigned int segment_out;
char led_out;
#define UI unsigned int
#define UC unsigned char

void delay_ms(UI);

void main(){
    DOUT = 1; //Setting gpio input mode
    LOAD = 1; 
    CLK = 0;
    DIN = 0;
    Initial();

    while(1)
    {
        adc_value = read_adc3202(1);    // Read voltage from ADC channel 1
        // segment_out = adc_value;
        Write7219(0x04,seg[adc_value / 1000] | 0x80);    // Display on MAX7219
        Write7219(0x03,seg[adc_value % 1000 / 100]);
        Write7219(0x02,seg[adc_value % 100 / 10]);
        Write7219(0x01,seg[adc_value % 10]);

        dis_value = 100.0/(adc_value * 0.0003 - 0.0409);
        Write7219(0x08,seg[dis_value / 1000]);    // Display on MAX7219
        Write7219(0x07,seg[dis_value % 1000 / 100] | 0x80);
        Write7219(0x06,seg[dis_value % 100 / 10]);
        Write7219(0x05,seg[dis_value % 10]);
        delay_ms(200);
    }
}

void delay_ms(UI input_ms)
{
    UI cnt1 = 0;
    UC cnt2 = 0;

    for (cnt1 = 0; cnt1 < input_ms; cnt1++)
        for (cnt2 = 0; cnt2 < 120; cnt2++) ;
}