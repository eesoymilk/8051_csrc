#include "REGX51.h"

#define UI unsigned int
#define UC unsigned char
#define DIN P2_4
#define LOAD P2_3
#define CLK P2_2
#define BTN1 P2_1
#define BTN0 P2_0

// REGISTERS
#define DECODE_MODE     0x09
#define INTENSITY       0x0A
#define SCAN_LIMIT      0x0B
#define SHUTDOWN        0x0C
#define DISPLAY_TEST    0x0F

UC SSD_PATTERN[20][2] = {
    // data >>= 1
    {1, 0x40},  // 01000000
    {1, 0x20},  // 01000000
    {1, 0x10},  // 01000000
    {1, 0x08},  // 00000100

    // address++
    {2, 0x08},  // 00000100
    {3, 0x08},  // 00000100
    {4, 0x08},  // 00000100
    {5, 0x08},  // 00000100
    {6, 0x08},  // 00000100
    {7, 0x08},  // 00000100

    // if (data == 0x02)
    //     data = 0x40;
    // else
    //     date >>= 1;
    {8, 0x08},  // 00000100
    {8, 0x04},  // 01000000
    {8, 0x02},  // 00100000
    {8, 0x40},  // 00010000


    // address--
    {7, 0x40},  // 00010000
    {6, 0x40},  // 00010000
    {5, 0x40},  // 00010000
    {4, 0x40},  // 00010000
    {3, 0x40},  // 00010000
    {2, 0x40},  // 00010000
};

void BitExtract(UC bits);
void SerialDIN(UC, UC);
void SSD_Show_CCW();
void INIT();

void main(void)
{
    UC brightness = 0x01;
    UI debtn0, debtn1;

    INIT();

    while (1) {
        if((BTN0 == 0 && debtn0 == 1) || (BTN1 == 0 && debtn1 == 1)) {
			delay_ms(10);
			(BTN0 == 0) && (--brightness = 0x00) && (brightness = 0x0F);
			(BTN1 == 0) && (++brightness = 0x10) && (brightness = 0x01);
		    SerialDIN(INTENSITY, brightness - 1);
        }
        SSD_Show_CCW();
        debtn0 = BTN0;
        debtn1 = BTN1;
        delay_ms(10);
    }
}

void BitExtract(UC bits)
{
    UC i;

    for (i = 0; i < 8; i++) {
        CNT++;
        CLK = 0;
        DIN = (bits & 0x80);
        bits <<= 1;
        CLK = 1;
    }
}

void SerialDIN(UC address, UC dat)
{
    LOAD = 0;
    BitExtract(address);
    BitExtract(dat);
    LOAD = 1;
}

void SSD_Show_CCW()
{
    static UC shift = 0;

    SerialDIN(SSD_PATTERN[shift - 1])
    SerialDIN(SSD_PATTERN[shift][0], SSD_PATTERN[shift][1]);

    (++shift == 20) && (shift = 0);
    delay_ms(1000);
}

void SSD_Show_All()
{
    UI i;
    for (i = 1; i <= 8; i++)
        SerialDIN(i, 0xFF);
}

void INIT()
{
    SerialDIN(SHUTDOWN,     0x01);  // Normal mode (0xX1)
    SerialDIN(DISPLAY_TEST, 0x00);  // Overwrite SHUTDOWN
    SerialDIN(DECODE_MODE,  0x00);  // no decoding
    SerialDIN(SCAN_LIMIT,   0x07);  // use all 8 digits
    SerialDIN(INTENSITY,    0x05);  // brightness
}

void delay_ms(UI input_ms)
{
    UI cnt1 = 0;
    UC cnt2 = 0;

    for (cnt1 = 0; cnt1 < input_ms; cnt1++)
        for (cnt2 = 0; cnt2 < 120; cnt2++) ;
}