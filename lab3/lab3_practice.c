#include "oled_i2c.h"
#include "REGX51.h"
#include "i2c.h"

#define UI unsigned int
#define UC unsigned char

void delay_ms(UI);
void StringScroll(char*);

void main()
{		
    uint8_t scroll = 0, clean;
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    
    // Display single character
    OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
    // OLED_DisplayString("8051 & OLED");
    OLED_DisplayChar('8');
    OLED_DisplayChar('0');
    OLED_DisplayChar('5');
    OLED_DisplayChar('1');
    OLED_DisplayChar(' ');
    OLED_DisplayChar('&');
    OLED_DisplayChar(' ');
    OLED_DisplayChar('O');
    OLED_DisplayChar('L');
    OLED_DisplayChar('E');
    OLED_DisplayChar('D');

    // Display pattern 
    OLED_SetCursor(0,80); //Set cursor
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
    OLED_SetCursor(2,10);  //Set cursor at 2nd-line 10th-Position
    OLED_DisplayString("Lab3 Demo");
    OLED_SetCursor(4,20);
    OLED_DisplayString("Oled Interface");
    // OLED_SetCursor(6,30);
    // OLED_DisplayString("Hello World!!!!!");

    while(1)
    {
        for(clean = 1 ; clean < 5; clean++) {
            OLED_SetCursor(6, scroll - clean);
            oledSendData(0);
        }

        OLED_SetCursor(6, scroll);
        OLED_DisplayString("Hello World!!!!!");
        (++scroll == 128) && (scroll = 0);
        (++scroll == 128) && (scroll = 0);
        (++scroll == 128) && (scroll = 0);
        (++scroll == 128) && (scroll = 0);
    };
}