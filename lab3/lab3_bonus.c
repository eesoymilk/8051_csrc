#include "oled_i2c.h"
#include "REGX51.h"
#include "i2c.h"

#define UI unsigned int
#define UC unsigned char
#define BTN0 P2_0 	// Scroll down
#define BTN1 P2_1	// Scroll up

void Render(uint8_t);
void delay_ms(UI);
void StringScroll(char*);

void main()
{		
    uint8_t scroll = 0, clean;
    UI debtn0, debtn1;
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    
    while(1)
    {
        if((BTN0 == 0) && (debtn0 == 1) || (BTN1 == 0) && (debtn1 == 1)) {
			delay_ms(10);
            if (BTN0 == 0) {
                ((++scroll) == 8) && (scroll = 0);
                Render(sroll);
            }
            if (BTN1 == 0) {
                ((--scroll) == 8) && (scroll = 0);
                Render(sroll);
            }
		}

		debtn0 = BTN0;
		debtn1 = BTN1;
		delay_ms(10);
    }
}

void Render(uint8_t scroll)
{
    SDA = 1;
    SCL = 1;
    
    // Display single character
    OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
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

    // Display String
    OLED_SetCursor((scroll + 2) % 8,10);  //Set cursor at 2nd-line 10th-Position
    OLED_DisplayString("Lab3 Demo");	
    OLED_SetCursor((scroll + 4) % 8,20);
    OLED_DisplayString("Oled Interface");
    OLED_SetCursor((scroll + 8) % 8,30);
    OLED_DisplayString("Hello World!!!!!");
}