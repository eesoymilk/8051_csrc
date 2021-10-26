#include <REGX51.h>

#define Hall_In P3_7

#define DIN     P2_4
#define LOAD    P2_3
#define CLK     P2_2
#define LED     P1

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long

void BitExtract(UC);
void SerialDIN(UC, UC);
void SSD_ShowTime(UL);

UC hall_last_state = 0;
UL cnt = 0;
UL timer_ms = 0;
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
};

void T0_isr(void) interrupt 1
{
    TH0 = (65536-1000) / 256;
	TL0 = (65536-1000) % 256;

    cnt++;
	if(Hall_In == 0 && hall_last_state == 1) {
        timer_ms = cnt;
        cnt = 0;
    }

    hall_last_state = Hall_In;
}

int main() {
    SerialDIN(0x0C, 0x01);  // Normal mode (0xX1)
    SerialDIN(0x0F, 0x00);  // Overwrite SHUTDOWN
    SerialDIN(0x09, 0x00);  // no decoding
    SerialDIN(0x0B, 0x07);  // use all 8 digits
    SerialDIN(0x0A, 0x07);  // brightness
	TMOD = 0x01;
	TH0  = (65536 - 1000) / 256;
	TL0  = (65536 - 1000) % 256;
	ET0  = 1;
	EA   = 1;
	TR0  = 1;
    Hall_In = 1;    // Initialize Hall sensor signal (deactivated)

    while (1) {
        SSD_ShowTime(timer_ms);
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

void SSD_ShowTime(UL num)
{
    UC ssd_pattern;
    UI digit, i;

    for (i = 1; i <= 8; i++) {
        // output nothing to the ssd
        if (i > 4 && num == 0) {
            SerialDIN(i, 0);
            continue;
        }

        digit = num % 10;
        ssd_pattern = SSD_CODE[digit];
        if (i == 4)
            ssd_pattern |= 0x80;
        SerialDIN(i, ssd_pattern);
        num /= 10;
    }
}