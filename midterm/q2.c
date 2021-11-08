#include <REGX51.h>

#define DIN     P2_4
#define LOAD    P2_3
#define CLK     P2_2
#define LED     P1

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long

void BitExtract(UC);
void SerialDIN(UC, UC);
void SSD_Show(UL);
void SSD_ShowSID(UI);
void delay_ms(UI);

UL timer_ms = 0;
UL timer_s = 0;
UC SSD_CODE[] = {
    0x7E,   // 0b01111110: 0
    0x30,   // 0b00110000: 1
    0x6D,   // 0b01101101: 2
    0x79,   // 0b01111001: 3
    0x33,   // 0b00110011: 4
    0x5B,   // 0b01011011: 5
    0x5F,   // 0b01011111: 6
    0x70,   // 0b01110000: 7
    0x7F,   // 0b01111111: 8
    0x7B,   // 0b01111011: 9
    0x77,   // 0b01110111: A
    0x1F,   // 0b00011111: b
    0x4E,   // 0b01001110: C
    0x3D,   // 0b00111101: d
    0x4F,   // 0b01001111: E
    0x47    // 0b01000111: F
}, SID[] = {1, 0, 9, 0, 6, 1, 1, 3, 8};

void T0_isr(void) interrupt 1
{
    TH0 = (65536-1000) / 256;
	TL0 = (65536-1000) % 256;

    timer_ms++;
    if (timer_ms == 1000) {
        timer_s++;
        timer_ms = 0;
    }
}

int main() {
    UI i;
    int shift;

    SerialDIN(0x0C, 0x01);  // Normal mode (0xX1)
    SerialDIN(0x0F, 0x00);  // Overwrite SHUTDOWN
    SerialDIN(0x09, 0x00);  // no decoding
    SerialDIN(0x0B, 0x07);  // use all 8 digits
    SerialDIN(0x0A, 0x07);  // brightness
    SSD_Show(20211109);
    delay_ms(3000);

    while (1) {
        shift = 6;
        SSD_ShowSID(shift);
        delay_ms(3000);
        for ( ; shift >= 0; shift--) {
            SSD_ShowSID(shift);
            delay_ms(1000);
        }
        for (i = 0; i < 3; i++) {
            // SSD_ShowSID(shift);
            delay_ms(500);
            SerialDIN(0x0C, 0);
            delay_ms(500);
            SerialDIN(0x0C, 1);
        }
    }
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

void SerialDIN(UC address, UC dat)
{
    LOAD = 0;
    BitExtract(address);
    BitExtract(dat);
    LOAD = 1;
}

void SSD_Show(UL num)
{
    UI digit = 0, i;

    for (i = 1; i <= 8; i++) {
        if (i > 1 && num == 0)
            SerialDIN(i, 0);
        else {
            digit = num % 10;
            num /= 10;
            SerialDIN(i, SSD_CODE[digit]);
        }
    }
}

void SSD_ShowSID(UI shift)
{
    UI i;
    int idx;

    for (i = 1; i <= 8; i++) {
        idx = 9 - shift - i;
        if (idx < 0) {
            SerialDIN(i, 0);
            continue;
        }
        SerialDIN(i, SSD_CODE[SID[idx]]);
    }
}

void delay_ms(UI input_ms)
{
    UI cnt1 = 0;
    UC cnt2 = 0;

    for (cnt1 = 0; cnt1 < input_ms; cnt1++)
        for (cnt2 = 0; cnt2 < 120; cnt2++) ;
}