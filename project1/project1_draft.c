#include "REGX51.h"

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long

#define BTN_OP P3_2
#define BTN_BK P3_3
#define BTN_AC P2_0
#define BTN_EQ P2_1

#define SCAN1 P3_6
#define SCAN2 P3_5
#define SCAN3 P3_4

#define BTN0 P0_7
#define BTN1 P2_7
#define BTN2 P2_6
#define BTN3 P2_5

#define DIN     P0_6
#define LOAD    P2_3
#define CLK     P2_2
#define LED     P1

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

void BitExtract(UC);
void SerialDIN(UC, UC);
void SSD_Show(UL);
UL CAL(UL, UL, UC);
void delay_ms(UI);

void main(void)
{
    UC debtn0, debtn1, debtn2, debtn3;
    UC debtn_op, debtn_bk, debtn_ac, debtn_eq;

    UC s_scan, scan = 0, s_btn1, s_btn2, s_btn3;
    UC s_op = 0, op, cur_rst, led = 0, i;

    UL prv = 0, cur = 0;

    SerialDIN(0x0C, 0x01);  // Normal mode (0xX1)
    SerialDIN(0x0F, 0x00);  // Overwrite SHUTDOWN
    SerialDIN(0x09, 0x00);  // no decoding
    SerialDIN(0x0B, 0x07);  // use all 8 digits
    SerialDIN(0x0A, 0x00);  // brightness

    while (1) {

        SCAN1 = SCAN2 = SCAN3 = 1;

        if (scan == 0)  SCAN1 = 0;
        if (scan == 1)  SCAN2 = 0;
        if (scan == 2)  SCAN3 = 0;

        if (s_scan == scan) {
            (BTN1 == 1) && (s_btn1 = 0);
            (BTN2 == 1) && (s_btn2 = 0);
            (BTN3 == 1) && (s_btn3 = 0);
        }

        // Number pad
        if((BTN0 == 0 && debtn0 == 1)
            || (BTN1 == 0 && debtn1 == 1)
            || (BTN2 == 0 && debtn2 == 1)
            || (BTN3 == 0 && debtn3 == 1))
            {
			delay_ms(10);

            if (s_op) {
                op = s_op;
                s_op = 0;
                cur = 0;
            }

            s_scan = scan;

            (BTN0 == 0) && (cur *= 10);

            if (BTN1 == 0 && s_btn1 == 0) {
                s_btn1 = 1;
                cur = cur * 10 + (1 + scan * 3);
            }
            if (BTN2 == 0 && s_btn2 == 0) {
                s_btn2 = 1;
                cur = cur * 10 + (2 + scan * 3);
            }
            if (BTN3 == 0 && s_btn3 == 0) {
                s_btn3 = 1;
                cur = cur * 10 + (3 + scan * 3);
            }
		}

        // Function Keys
        if((BTN_OP == 0 && debtn_op == 1)
            || (BTN_BK == 0 && debtn_bk == 1)
            || (BTN_AC == 0 && debtn_ac == 1)
            || (BTN_EQ == 0 && debtn_eq == 1))
            {
			delay_ms(10);

            if (BTN_OP == 0) {
                if (s_op == 0) {
                    cur = CAL(prv, cur, op);
                    prv = cur;
                }
                (++s_op == 5) && (s_op = 1);
            }

            if (BTN_BK == 0) {
                cur /= 10;
            }

            if (BTN_AC == 0) {
                s_op = 0;
                op = 0;
                cur = 0;
                prv = 0;
            }

            if (BTN_EQ == 0) {
                cur = CAL(prv, cur, op);
                s_op = 0;
            }
		}

        (++scan == 3) && (scan = 0);

        for (led = 0x10, i = 4 - s_op; i; --i) led <<= 1;
        LED = ~led;

        debtn0 = BTN0;
        debtn1 = BTN1;
        debtn2 = BTN2;
        debtn3 = BTN3;
        debtn_op = BTN_OP;
        debtn_bk = BTN_BK;
        debtn_ac = BTN_AC;
        debtn_eq = BTN_EQ;

        SSD_Show(cur);
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

UL CAL(UL a, UL b, UC o)
{
    if (o == 1)
        return a + b;
    if (o == 2)
        return a - b;
    if (o == 3)
        return a * b;
    if (o == 4)
        return a / b;
    return b;
}

void delay_ms(UI input_ms)
{
    UI cnt1;
    UC cnt2;

    for (cnt1 = 0; cnt1 < input_ms; cnt1++)
        for (cnt2 = 0; cnt2 < 120; cnt2++) ;
}