#include "oled_i2c.h"
#include "REGX51.h"
#include "i2c.h"

#define UI unsigned int
#define UC unsigned char
#define BTN0 P2_0 	// Scroll down
#define BTN1 P2_1		// Scroll up

void ClearRow(uint8_t);
void Render(uint8_t);
void delay_ms(UI);

void main()
{		
    uint8_t scroll = 0;
    UI debtn0, debtn1;
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
	Render(scroll);

    while(1)
    {
        if((BTN0 == 0) && (debtn0 == 1) || (BTN1 == 0) && (debtn1 == 1)) {
			delay_ms(10);
            if (BTN0 == 0) {
                ((++scroll) == 8) && (scroll = 0);
                Render(scroll);
            }
            if (BTN1 == 0) {
                ((--scroll) == 8) && (scroll = 0);
                Render(scroll);
            }
		}

		debtn0 = BTN0;
		debtn1 = BTN1;
		delay_ms(10);
    }
}

void Render(uint8_t scroll)
{
    UI i;

    SDA = 1;
    SCL = 1;

    // Display single character
    OLED_SetCursor(scroll,0);  // Set cursor at 0th-line 0th-Position
    OLED_DisplayString("8051 & OLED");

    // Display pattern 
    OLED_SetCursor(scroll,80);
    oledSendData(0xff); // triangle
    oledSendData(0xfe);
    oledSendData(0xfc);
    oledSendData(0xf8);
    oledSendData(0xf0);
    oledSendData(0xe0);
    oledSendData(0xc0);
    oledSendData(0x80);
    oledSendData(0x00); 

    oledSendData(0x80);
    oledSendData(0xff); // square
    oledSendData(0xe7);
    oledSendData(0xc3);
    oledSendData(0x81);
    oledSendData(0x00);
    oledSendData(0x81);
    oledSendData(0xc3);
    oledSendData(0xe7);
    oledSendData(0xff);

    oledSendData(0x00); // triangle
    oledSendData(0x80);
    oledSendData(0xc0);
    oledSendData(0xe0);
    oledSendData(0xf0);
    oledSendData(0xf8);
    oledSendData(0xfc);
    oledSendData(0xfe);
    oledSendData(0xff);

    OLED_SetCursor((scroll + 1) % 8, 0);
    for (i = 0; i < 128; i++)
        oledSendData(0);

    // Display String
    OLED_SetCursor((scroll + 2) % 8,10);  //Set cursor at 2nd-line 10th-Position
    OLED_DisplayString("Lab3 Demo");	

    ClearRow((scroll + 3) % 8);

    OLED_SetCursor((scroll + 4) % 8,20);
    OLED_DisplayString("Oled Interface");

    ClearRow((scroll + 5) % 8);
    ClearRow((scroll + 6) % 8);
    ClearRow((scroll + 7) % 8);

    OLED_SetCursor((scroll + 8) % 8, 30);
    OLED_DisplayString("Hello World!!!!!");
}

void ClearRow(uint8_t row)
{
    UI i;
    OLED_SetCursor(row, 0);
    for (i = 0; i < 128; i++)
        oledSendData(0);
}

void delay_ms(UI input_ms)
{
    UI cnt1 = 0;
    UC cnt2 = 0;

    for (cnt1 = 0; cnt1 < input_ms; cnt1++)
        for (cnt2 = 0; cnt2 < 120; cnt2++) ;
}