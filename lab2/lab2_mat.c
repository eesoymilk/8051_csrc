#include "REGX51.h"

#define UI unsigned int
#define UC unsigned char
#define DIN P2_4
#define LOAD P2_3
#define CLK P2_2

// REGISTERS
#define DECODE_MODE     0x09
#define INTENSITY       0x0A
#define SCAN_LIMIT      0x0B
#define SHUTDOWN        0x0C
#define DISPLAY_TEST    0x0F

UC MAT_STEVE[8] = {
    0x07,
    0x13,
    0xD3,
    0x83,
    0x83,
    0xD3,
    0x13,
    0x07
}, MAT_CREEPER[8] = {
    0x00,
    0x0C,
    0xEC,
    0x70,
    0x70,
    0xEC,
    0x0C,
    0x00
};

void BitExtract(UC);
void SerialDIN(UC, UC, UC);
void MAT_Show(UC*, UC*);
void INIT();

void main(void)
{
    INIT();

    while (1)   MAT_Show(MAT_CREEPER, MAT_STEVE);
}

void BitExtract(UC bits)
{
    UC i;

    for (i = 0; i < 8; i++) {
        CLK = 0;
        DIN = (bits & 0x80);
        bits <<= 1;
        CLK = 1;
    }
}

void SerialDIN(UC address, UC dat1, UC dat2)
{
    LOAD = 0;
    BitExtract(address);
    BitExtract(dat2);
    BitExtract(address);
    BitExtract(dat1);
    LOAD = 1;
}

void MAT_Show(UC* mat1, UC* mat2)
{
    UC i;

    for (i = 0; i < 8; i++)
        SerialDIN(i + 1, mat1[i], mat2[i]);
}

void INIT()
{
    SerialDIN(SHUTDOWN,     0x01, 0x01);
    SerialDIN(DISPLAY_TEST, 0x00, 0x00);
    SerialDIN(DECODE_MODE,  0x00, 0x00);
    SerialDIN(SCAN_LIMIT,   0x07, 0x07);
    SerialDIN(INTENSITY,    0x00, 0x00);
}