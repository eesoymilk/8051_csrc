#include "REGX51.h"
#include "delay.h"

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long
#define PB1 P3_2
#define PB2 P3_3
#define PB3 P2_0
#define LED P1

UC PlayingSong = 0, patt, IDX = 0, cnt;
UL timer_ms = 0;
UL CurNote, Notes[4] = {0, 1911, 1702, 1517};
UC rythm[16] = {
    1, 1, 1, 2,
    3, 3, 3, 1,
    3, 3, 1, 1,
    3, 3, 3, 3
};

void PlayOneNote(UC idx);
void PlaySong();

void T0_isr(void) interrupt 1
{
    TH0 = (65536-1000) / 256;
	TL0 = (65536-1000) % 256;
    timer_ms++;
    if (PlayingSong) {
        if (timer_ms % 250 == 0) {
            timer_ms = 0;
            IDX = rythm[++cnt];
            if (cnt >= 16) {
                PlayingSong = 0;
                timer_ms = 0;
                IDX = 0;
                ET1 = 0;
                TR1 = 0;
            }
        }
    } else {
        if (timer_ms >= 1000) {
            timer_ms = 0;
            IDX = 0;
            ET1 = 0;
            TR1 = 0;
        }
    }
}

void T1_isr(void) interrupt 3
{
    TH1 = (65536 - Notes[IDX]) / 256;
	TL1 = (65536 - Notes[IDX]) % 256;
    P3_7 = ~P3_7;
}

void main(void)
{
    UI depb1 = 1, depb2 = 1, depb3 = 1;
    // UC i, j, shift, idx;

    IE = 0x82;  // 1001_0010
    // EA = 1;
    // ES = 1;
    // ET0 = 1;

	TMOD = 0x11;
	TH0 = (65536 - 1000) / 256;
	TL0 = (65536 - 1000) % 256;
	TR0 = 1;

	while (1) {
		if((PB1 == 1 && depb1 == 0) || (PB2 == 1 && depb2 == 0) || (PB3 == 1 && depb3 == 0)) {
			delay_ms(10);
            if (depb1 == 0 && depb2 == 0) {
                patt = 0xff;
                PlaySong();
            } else if (depb1 == 0) {
                patt = 0x03;
                PlayOneNote(1);
            } else if (depb2 == 0) {
                patt = 0x0c;
                PlayOneNote(2);
            } else if (depb3 == 0) {
                patt = 0x30;
                PlayOneNote(3);
            }
		}

		depb1 = PB1;
		depb2 = PB2;
		depb3 = PB3;
        LED = ~patt;
		delay_ms(10);
	}
}

void PlaySong()
{
    PlayingSong = 1;
    cnt = 0;
    IDX = rythm[cnt];
    TH1 = (65536 - Notes[IDX]) / 256;
	TL1 = (65536 - Notes[IDX]) % 256;
    ET1 = 1;
	TR1 = 1;
    timer_ms = 1;
}

void PlayOneNote(UC idx)
{
    IDX = idx;
    TH1 = (65536 - Notes[IDX]) / 256;
	TL1 = (65536 - Notes[IDX]) % 256;
    ET1 = 1;
	TR1 = 1;
    timer_ms = 0;
}