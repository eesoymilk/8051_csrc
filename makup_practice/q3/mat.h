#ifndef MAT_H
#define MAT_H

#include "REGX51.h"
#include "delay.h"

#define UC unsigned char
#define DIN P2_4
#define LOAD P2_3
#define CLK P2_2
#define LED P1

// REGISTERS
#define DECODE_MODE     0x09
#define INTENSITY       0x0A
#define SCAN_LIMIT      0x0B
#define SHUTDOWN        0x0C
#define DISPLAY_TEST    0x0F

void MAT_BitExtract(UC bits);
void MAT_SerialDIN(UC, UC, UC);
void MAT_Show(UC*, UC*);
void MAT_Show_R(UC*, UC*);
void MAT_Show_X();
void MAT_Show_Sroll(UC*);
void MAT_INIT();

void MAT_BitExtract(UC bits)
{
    UC i;

    for (i = 0; i < 8; i++) {
        CLK = 0;
        DIN = (bits & 0x80);
        bits <<= 1;
        CLK = 1;
    }
}

void MAT_SerialDIN(UC address, UC dat1, UC dat2)
{
    LOAD = 0;
    MAT_BitExtract(address);
    MAT_BitExtract(dat2);
    MAT_BitExtract(address);
    MAT_BitExtract(dat1);
    LOAD = 1;
}

void MAT_Show(UC* mat1, UC* mat2)
{
    UC i;

    for (i = 0; i < 8; i++)
        MAT_SerialDIN(i + 1, mat1[i], mat2[i]);
}

void MAT_Show_R(UC* mat1, UC* mat2)
{
    UC i;

    for (i = 0; i < 8; i++)
        MAT_SerialDIN(i + 1, mat1[7 - i], mat2[7 - i]);
}

void MAT_Show_X()
{
    UC i;
    MAT_SerialDIN(1, 0x81, 0x81);
    MAT_SerialDIN(8, 0x81, 0x81);
    MAT_SerialDIN(2, 0x42, 0x42);
    MAT_SerialDIN(7, 0x42, 0x42);
    MAT_SerialDIN(3, 0x24, 0x24);
    MAT_SerialDIN(6, 0x24, 0x24);
    MAT_SerialDIN(4, 0x18, 0x18);
    MAT_SerialDIN(5, 0x18, 0x18);
}

// void MAT_Show_Scroll(UC* mat)
// {
//     UC i;
//     static UC shift = 0;

//     for (i = 0; i < 8; i++)
//         MAT_SerialDIN(i + 1, mat[(shift + i) % 16], mat[(shift + 8 + i) % 16]);

//     (++shift == 16) && (shift = 0);
//     delay_ms(1000);
// }

void MAT_INIT()
{
    UC i;

    MAT_SerialDIN(SHUTDOWN,     0x01, 0x01);  // Normal mode (0xX1)
    MAT_SerialDIN(DISPLAY_TEST, 0x00, 0x00);  // Overwrite SHUTDOWN
    MAT_SerialDIN(DECODE_MODE,  0x00, 0x00);  // no decoding
    MAT_SerialDIN(SCAN_LIMIT,   0x07, 0x07);  // use all 8 digits
    MAT_SerialDIN(INTENSITY,    0x00, 0x00);  // brightness
}

#endif