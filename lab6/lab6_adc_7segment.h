#include <8051.h>
#define CLK  P2_0           //MCP3202串列時鐘  
#define DIN  P2_1                
#define DOUT P2_2          
#define LOAD P2_3           //MCP3202片選
#define LOAD_MAX P2_4       //MAX7219片選

#define UI unsigned int
#define UC unsigned char
#define UL unsigned long

//define 7-segment reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F
#define matrixnum 1

unsigned char seg[10]={
	0x7E,  //0
	0x30,  //1
	0x6D,  //2
	0x79,  //3
	0x33,  //4
	0x5B,  //5
	0x5F,  //6
	0x70,  //7
	0x7F,  //8
	0x7B	 //9
};

unsigned char seg_dot[3]={
	0xFE,  //0.
	0xB0,  //1.
  0xED   //2.
};

void delay_5(void);

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

/*-------------------- 7-segment display function --------------------*/
void sendbyte(unsigned char address,unsigned char dat){
 unsigned char i;
    for (i=0;i<8;i++)
    {
       CLK=0;
       DIN=(address&0x80);
       address<<=1;
       CLK=1;
    }

    for (i=0;i<8;i++)
    {
       CLK=0;
       DIN=(dat&0x80);
       dat<<=1;
       CLK=1;
    }
 }

void Write7219(unsigned char address,unsigned char dat)
{
    unsigned char cnt;
    LOAD_MAX=0;
  	for(cnt=1;cnt<=matrixnum;cnt++)
 	{
        sendbyte(address,dat);
    }
    LOAD_MAX=1;
}

void Initial(void)
{   unsigned char i;

    Write7219(SHUT_DOWN,0x01);
    Write7219(DISPLAY_TEST,0x00);
    Write7219(DECODE_MODE,0x00);
    Write7219(SCAN_LIMIT,0x07);
    Write7219(INTENSITY,0x00);

    for(i=1;i<=8;i++){
    	Write7219(i,0x00);
    }
}

// void BitExtract(UC bits)
// {
//     UC i;

//     for (i = 0; i < 8; i++) {
//         CLK = 0;
//         DIN = (bits & 0x80);
//         bits <<= 1;
//         CLK = 1;
//     }
// }

// void SerialDIN(UC address, UC dat)
// {
//     LOAD = 0;
//     BitExtract(address);
//     BitExtract(dat);
//     LOAD = 1;
// }

// void Initial(void)
// {   
//     unsigned char i;

//     SerialDIN(SHUT_DOWN,0x01);
//     SerialDIN(DISPLAY_TEST,0x00);
//     SerialDIN(DECODE_MODE,0x00);
//     SerialDIN(SCAN_LIMIT,0x07);
//     SerialDIN(INTENSITY,0x00);

//     for(i=1;i<=8;i++){
//     	SerialDIN(i,0x00);
//     }
// }