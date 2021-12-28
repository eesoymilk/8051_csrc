#ifndef ADC_SSD_H
#define ADC_SSD_H

#include "8051.h"
#include "delay.h"

#define UI unsigned int
#define UC unsigned char
#define CLK  P2_0           //MCP3202串列時鐘  
#define DIN  P2_1                
#define DOUT P2_2          
#define LOAD P2_3           //MCP3202片選
#define LOAD_MAX P2_4       //MAX7219片選

// REGISTERS
#define DECODE_MODE     0x09
#define INTENSITY       0x0A
#define SCAN_LIMIT      0x0B
#define SHUTDOWN        0x0C
#define DISPLAY_TEST    0x0F

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

void BitExtract(UC bits);
void SerialDIN(UC, UC);
void SSD_Number(long);
void SSD_Show(UC*);
void SSD_Show_Scroll(UC*);
void SSD_INIT();
void delay_5();

// ADC

char SPI_WR(char data_in)
{
  char data_out = 0;
  unsigned char i;
  for(i=0;i<8;i++)  // 8 bit transaction
  {
    data_out <<= 1;

    CLK = 0;
    delay_5();
    DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
    delay_5();
    CLK = 1;
    delay_5();

    if(DOUT == 1)   // Read DOUT
      data_out = (data_out | 0x01);   // Store into data_out
    data_in <<= 1;
  }
  return data_out;
}

unsigned int read_adc3202(unsigned char channel) {
  
  unsigned int data_buff = 0;
  unsigned char spi_buff = 0;

  LOAD = 0;
  
  // Each read requires 24-bit transaction (3 byte transactions)
  SPI_WR(0x01);               // First byte transaction includes start bit
  if(channel == 1)            // Channel 1: 11100000, to IR sensor
    spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
  else                        // Channel 0: 10100000, to variable resistor
    spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
  data_buff = spi_buff & 0x0f;
  data_buff <<= 8;            // Store higher 4 bit ADC output
    
  spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
  data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output

  LOAD = 1;  
  CLK = 0;
  DIN = 0;

  return data_buff;
}

void delay_5(void)
{
  char i = 0;
  for(i = 0; i < 5; i ++);
}

// SSD

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
    LOAD_MAX = 0;
    BitExtract(address);
    BitExtract(dat);
    LOAD_MAX = 1;
}

void SSD_Number(long num)
{
    UI i, n;

    n = num > 0 ? num : num * -1;

    for (i = 1; i <= 8 && n; i++) {
        SerialDIN(i, SSD_CODE[n % 10]);
        n /= 10;
    }
    if (num < 10 && i <= 8) {
        SerialDIN(i++, 0x01);
    }
    for (i++; i <= 8; i++)
        SerialDIN(i, 0);
}

void SSD_Show(UC* num)
{
    UI i;

    for (i = 1; i <= 8; i++)
        SerialDIN(i, SSD_CODE[num[8 - i]]);
}

void SSD_Show_Scroll(UC* num)
{
    UI i;
    static UC shift = 0;

    for (i = 1; i <= 8; i++)
        SerialDIN(i, SSD_CODE[num[(8 - i + shift) % 8]]);
    shift++;
    if (shift == 8) shift = 0;
    // (++shift == 8) && (shift = 0);
    delay_ms(1000);
}

void SSD_INIT()
{
    UC i;

    SerialDIN(SHUTDOWN,     0x01);  // Normal mode (0xX1)
    SerialDIN(DISPLAY_TEST, 0x00);  // Overwrite SHUTDOWN
    SerialDIN(DECODE_MODE,  0x00);  // no decoding
    SerialDIN(SCAN_LIMIT,   0x07);  // use all 8 digits
    SerialDIN(INTENSITY,    0x0E);  // brightness

    for (i = 1; i <= 8; i++)
        SerialDIN(i, 0);
}

#endif