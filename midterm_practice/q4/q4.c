#include "oled_i2c.h"
#include "REGX51.h"
#include "i2c.h"
#include "MPU6050.h"

#define UI unsigned int
#define UC unsigned char

void delay_ms(UI);

void main()
{
    double tan = 0;
    int tan_int;
    SDA = 1;
    SCL = 1;
    OLED_Init();
    MPU6050_INIT();

    OLED_SetCursor(2, 0);
	OLED_DisplayString("Protractor");
	OLED_SetCursor(3, 0);
	OLED_DisplayString("tan =  0");

    while(1)
    {
        readMPU6050_AccelData(&accel_data[0]);
		readMPU6050_GyroData(&gyro_data[0]);
        tan = (double)accel_data[0] / accel_data[1];
        OLED_SetCursor(3, 35);
        if (tan < 0) {
            OLED_DisplayChar('-');
            tan *= -1;
        } else {
            OLED_DisplayChar(' ');
        }
        tan *= 100;
        tan_int = (int)tan;
        OLED_DisplayChar(tan_int / 100 + '0');
        OLED_DisplayChar('.');
		OLED_DisplayChar(tan_int % 100 / 10 + '0');
		OLED_DisplayChar(tan_int % 10 + '0');
    };
}