#include "REGX51.h"
#include "delay.h"
#include "adc_ssd.h"
#include "i2c.h"
#include "MLX90614.h"

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long

int data_buf1 = 0, data_buf2 = 0;
unsigned int adc, dis;

void main(){
    		 
    SDA = 1;
    SCL = 1;
    DOUT = 1; //Setting gpio input mode
    LOAD = 1; 
    CLK = 0;
    DIN = 0;
    SSD_INIT();

    while(1)
    {
        data_buf1 = readAmbientTemp();
        data_buf2 = readObjectTemp();
        adc = read_adc3202(1);    // Read voltage from ADC channel 1

        SerialDIN(3,SSD_CODE[data_buf1 % 1000 / 100]);
        SerialDIN(2,SSD_CODE[data_buf1 % 100 / 10] | 0x80);
        SerialDIN(1,SSD_CODE[data_buf1 % 10]);

        SerialDIN(7,SSD_CODE[data_buf2 % 1000 / 100]);
        SerialDIN(6,SSD_CODE[data_buf2 % 100 / 10] | 0x80);
        SerialDIN(5,SSD_CODE[data_buf2 % 10]);

        // adc = read_adc3202(1);    // Read voltage from ADC channel 1
        // // segment_out = adc;
        // SerialDIN(4,SSD_CODE[adc / 1000] | 0x80);
        // SerialDIN(3,SSD_CODE[adc % 1000 / 100]);
        // SerialDIN(2,SSD_CODE[adc % 100 / 10]);
        // SerialDIN(1,SSD_CODE[adc % 10]);

        // // dis = 100.0/(adc * 0.0003 - 0.0409);
        // // if (dis / 1000 != 0)
        // //     SerialDIN(8,SSD_CODE[dis / 1000]);
        // // else
        // //     SerialDIN(8,SSD_CODE[dis / 1000]);
        // // SerialDIN(7,SSD_CODE[dis % 1000 / 100] | 0x80);
        // // SerialDIN(6,SSD_CODE[dis % 100 / 10]);
        // // SerialDIN(5,SSD_CODE[dis % 10]);
        delay_ms(100);
    }
}
