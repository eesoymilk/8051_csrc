#include "REGX51.h"
#define UI unsigned int
#define UC unsigned char
#define UL unsigned long

UC C[] = {0x7E, 0x30, 0x6D, 0x79, 0x33, 0x5B, 0x5F, 0x70, 0x7F, 0x7B, 0x77, 0x1F, 0x4E, 0x3D, 0x4F, 0x47};

void BIT(UC b)
{
    UC i;
    for (i = 0; i < 8; i++) {
        P2_2 = 0;
        P2_4 = (b & 0x80);
        b <<= 1;
        P2_2 = 1;
    }
}

void SD(UC a, UC d)
{
    P2_3 = 0;
    BIT(a);
    BIT(d);
    P2_3 = 1;
}

void SSD(UL n)
{
    UI d, i;
    for (i = 1; i <= 8; i++)
        if (i > 1 && !n)
            SD(i, 0);
        else {
            d = n % 10;
            n /= 10;
            SD(i, C[d]);
        }
}

UL CAL(UL a, UL b, UC o)
{
    if (o == 1) return a + b;
    if (o == 2) return a - b;
    if (o == 3) return a * b;
    if (o == 4) return a / b;
    return b;
}

void MS(UI ms)
{
    UI c1;
    UC c2;
    for (c1 = 0; c1 < ms; c1++) for (c2 = 0; c2 < 120; c2++) ;
}

void main()
{
    UC d0, d1, d2, d3, d_o, d_b, d_a, d_e, ss, s = 0, sb1, sb2, sb3, sop = 0, op, led, i;
    UL p = 0, c = 0;
    SD(0x0C, 0x01);
    SD(0x0F, 0x00);
    SD(0x09, 0x00);
    SD(0x0B, 0x07);
    SD(0x0A, 0x00);
    while (1) {
        P3_6 = P3_5 = P3_4 = 1;
        if (!s) P3_6 = 0;
        if (s == 1) P3_5 = 0;
        if (s == 1) P3_5 = 0;
        if (s == 2) P3_4 = 0;
        if (ss == s) {
            P2_7 && (sb1 = 0);
            P2_6 && (sb2 = 0);
            P2_5 && (sb3 = 0);
        }
        if (!P0_7 && d0 || !P2_7 && d1 || !P2_6 && d2 || !P2_5 && d3) {
			MS(10);
            ss = s;
            if (sop) {
                op = sop;
                sop = 0;
                c = 0;
            }
            !P0_7 && (c *= 10);
            if (!P2_7 && !sb1) {
                sb1 = 1;
                c = c * 10 + (1 + s * 3);
            }
            if (!P2_6 && !sb2) {
                sb2 = 1;
                c = c * 10 + (2 + s * 3);
            }
            if (!P2_5 && !sb3) {
                sb3 = 1;
                c = c * 10 + (3 + s * 3);
            }
		}
        if (!P3_2 && d_o || !P3_3 && d_b || !P2_0 && d_a || !P2_1 && d_e) {
			MS(10);
            if (!P3_2) {
                if (!sop) {
                    c = CAL(p, c, op);
                    p = c;
                }
                (++sop == 5) && (sop = 1);
            }
            !P3_3 && (c /= 10);
            if (!P2_0) {
                sop = 0;
                op = 0;
                c = 0;
                p = 0;
            }
            if (!P2_1) {
                c = CAL(p, c, op);
                sop = 0;
            }
		}
        ++s == 3 && (s = 0);
        for (led = 0x10, i = 4 - sop; i; --i) led <<= 1;
        P1 = ~led;
        d0 = P0_7;
        d1 = P2_7;
        d2 = P2_6;
        d3 = P2_5;
        d_o = P3_2;
        d_b = P3_3;
        d_a = P2_0;
        d_e = P2_1;
        SSD(c);
    }
}