#include "REGX51.h"

#define HAL_OK 0
#define HAL_Prog_En_ERROR 1
#define HAL_Verify_ERROR 2

#define LED P1
#define BUZZ P3_7

#define AT8051_MOSI P0_0
#define AT8051_MISO P0_1
#define AT8051_SCK 	P0_2
#define AT8051_RST 	P0_3

#define SPI_MOSI 	AT8051_MOSI
#define SPI_MISO 	AT8051_MISO
#define SPI_SCK 	AT8051_SCK

#define but1 P2_0
#define but2 P2_1
#define but3 P3_2




void delay_ms(unsigned int ms);
void delay_10us();

void INIT_MOVIE(void);
void buzz_hal_ok(void);
void buzz_verify_error(void);
void buzz_prog_en_error(void);

unsigned char AT89S51_Program_All(void);
unsigned char AT89S51_Program_write(void);
unsigned char AT89S51_Program_read(void);
unsigned char AT89S51_Program_erase(void);

unsigned char SPI_MASTER_WR(unsigned char package);
unsigned char AT89S51_Prog_En(void);
unsigned char AT89S51_Chip_Erase(void);
unsigned int AT89S51_Write_Byte(unsigned int address, unsigned char package);
unsigned char AT89S51_Read_Byte(unsigned int address);

unsigned char error_flag;
unsigned char write_flag;
unsigned char read_flag;
unsigned char erase_flag;

const unsigned char hex_file[] = 
{
	0x74, 0xFE, 0xF5, 0x90, 0x03, 0x7D, 0x03, 0x12, 0x00, 0x0C, 0x80, 0xF6, 0x7E, 0xC8, 0x7F, 0xE6,
	0xDF, 0xFE, 0xDE, 0xFA, 0xDD, 0xF6, 0x22
};
const unsigned int hex_size = 0x0017;

void main(void)
{
	unsigned int prebut1 = 0;    //debounce
 	unsigned int prebut2 = 0;
	unsigned int prebut3 = 0; 
	
	AT8051_MOSI = 1;			//Setting input
	AT8051_MISO = 1;			//Setting input
	AT8051_SCK = 1;				//Setting input
	AT8051_RST = 0;				//Release RST
	INIT_MOVIE();
	while(1)
	{
		if((but1 == 0) && (prebut1 == 1))
 		{
 		  delay_ms(10);
 		  if(but1 == 0)
 		  {
			write_flag=AT89S51_Program_write();
			if(write_flag==HAL_OK)
			{	
				LED=0xfe;
				buzz_hal_ok();
			}
			
			else if(write_flag==HAL_Prog_En_ERROR)
			{
				LED=~(0x80);
				buzz_prog_en_error();
			}
 		  }

 		}
	
 		if((but2 == 0) && (prebut2 == 1))
 		{
 		  delay_ms(10);
 		  if(but2==0)
 		  {
			read_flag=AT89S51_Program_read();
			if(read_flag==HAL_OK)
			{	
				LED=0xfc;
				buzz_hal_ok();
			}
			else if(read_flag==HAL_Prog_En_ERROR)
			{
				LED=~(0x80);
				buzz_prog_en_error();
			}
			else if(read_flag==HAL_Verify_ERROR)
			{
				LED=~(0x40);
				buzz_verify_error();
			}
 		  }
 		}
		if((but3 == 0) && (prebut3 == 1))
 		{
 		  delay_ms(10);
 		  if(but3==0)
 		  {
			erase_flag=AT89S51_Program_erase();
			if(erase_flag==HAL_OK)
			{	
				LED=0xf8;
				buzz_hal_ok();
			}
			else if(erase_flag==HAL_Prog_En_ERROR)
			{
				LED=~(0x80);
				buzz_prog_en_error();
			}
			
 		  }
 		}
 		prebut1=but1;
 		prebut2=but2;
		prebut3=but3;	
 		delay_ms(20);

	}
}


unsigned char AT89S51_Program_write(void)
{
	unsigned char spr_r_buf;	
	unsigned int program_cnt = 0;	
	
	//Step1: Setting IO for Program Mode//
	AT8051_MOSI = 0;			//Setting output 0
	AT8051_SCK = 0;				//Setting output 0
		delay_ms(1);
	AT8051_RST = 1;				//Going to reset mode
		delay_ms(10);
	
	//Step2: Programming Enable//
	spr_r_buf = AT89S51_Prog_En();
	if(spr_r_buf != 0x69)
	{
		AT8051_RST = 0;
			delay_ms(100);	
		AT8051_MOSI = 1;
		AT8051_SCK = 1;
			delay_ms(1000);	
		return HAL_Prog_En_ERROR;
	}
	
	//Step3: Erase Chip Flash Area//
	AT89S51_Chip_Erase();
		delay_ms(1000);
	
	//Step4: Write Chip Flash Area//
	for(program_cnt = 0; program_cnt < hex_size; program_cnt ++)
	{
		AT89S51_Write_Byte(program_cnt, hex_file[program_cnt]);
		delay_ms(1);
		
	}
	
	//Step6: Release IO for AT89S51 can start to work//
	AT8051_RST = 0;
		delay_ms(100);	
	AT8051_MOSI = 1;
	AT8051_SCK = 1;
		delay_ms(1000);	
	return HAL_OK;
}

unsigned char AT89S51_Program_read(void)
{
	unsigned char spr_r_buf;	
	unsigned int program_cnt = 0;	
	
	//Step1: Setting IO for Program Mode//
	AT8051_MOSI = 0;			//Setting output 0
	AT8051_SCK = 0;				//Setting output 0
		delay_ms(1);
	AT8051_RST = 1;				//Going to reset mode
		delay_ms(10);
	
	//Step2: Programming Enable//
	spr_r_buf = AT89S51_Prog_En();
	if(spr_r_buf != 0x69)
	{
		AT8051_RST = 0;
			delay_ms(100);	
		AT8051_MOSI = 1;
		AT8051_SCK = 1;
			delay_ms(1000);	
		return HAL_Prog_En_ERROR;
	}
	
	//Step3: Read and Verify Chip Flash Area//
	for(program_cnt = 0; program_cnt < hex_size; program_cnt ++)
	{
		spr_r_buf = AT89S51_Read_Byte(program_cnt);
		delay_ms(1);	
		if(spr_r_buf != hex_file[program_cnt])
		{
			AT8051_RST = 0;
				delay_ms(100);	
			AT8051_MOSI = 1;
			AT8051_SCK = 1;
				delay_ms(1000);	
		
			return HAL_Verify_ERROR;
		}
	}
	
	
	//Step4: Release IO for AT89S51 can start to work//
	AT8051_RST = 0;
		delay_ms(100);	
	AT8051_MOSI = 1;
	AT8051_SCK = 1;
		delay_ms(1000);	
	return HAL_OK;
}

unsigned char AT89S51_Program_erase(void)
{
	unsigned char spr_r_buf;	
	unsigned int program_cnt = 0;	
	
	//Step1: Setting IO for Program Mode//
	AT8051_MOSI = 0;			//Setting output 0
	AT8051_SCK = 0;				//Setting output 0
		delay_ms(1);
	AT8051_RST = 1;				//Going to reset mode
		delay_ms(10);
	
	//Step2: Programming Enable//
	spr_r_buf = AT89S51_Prog_En();
	if(spr_r_buf != 0x69)
	{
		AT8051_RST = 0;
			delay_ms(100);	
		AT8051_MOSI = 1;
		AT8051_SCK = 1;
			delay_ms(1000);	
		return HAL_Prog_En_ERROR;
	}
	
	//Step3: Erase Chip Flash Area//
	AT89S51_Chip_Erase();
		delay_ms(1000);
	
	//Step4: Release IO for AT89S51 can start to work//
	AT8051_RST = 0;
		delay_ms(100);	
	AT8051_MOSI = 1;
	AT8051_SCK = 1;
		delay_ms(1000);	
	return HAL_OK;
}





unsigned char AT89S51_Read_Byte(unsigned int address)
{
	unsigned char spi_r_buf;
	SPI_MASTER_WR(0x20);
		delay_10us();
	SPI_MASTER_WR(address >> 8);
		delay_10us();
	SPI_MASTER_WR(address & 0x00ff);
		delay_10us();
	spi_r_buf = SPI_MASTER_WR(0x00);
		delay_10us();	

	return spi_r_buf;		//return reading address by 89s51
}
unsigned int AT89S51_Write_Byte(unsigned int address, unsigned char package)
{
	unsigned int spi_r_buf1;
	unsigned char spi_r_buf2;
	SPI_MASTER_WR(0x40);
		delay_10us();
	SPI_MASTER_WR(address >> 8);
		delay_10us();
	spi_r_buf1 = SPI_MASTER_WR(address & 0x00ff);
		delay_10us();
	spi_r_buf2 = SPI_MASTER_WR(package);
		delay_10us();	
	
	
	spi_r_buf1 = (spi_r_buf1 << 8) | spi_r_buf2;

	return spi_r_buf1;		//return writing address by 89s51
}

unsigned char AT89S51_Prog_En(void)
{
	unsigned char spi_r_buf;
	SPI_MASTER_WR(0xac);
		delay_10us();
	SPI_MASTER_WR(0x53);
		delay_10us();
	SPI_MASTER_WR(0x00);
		delay_10us();
	spi_r_buf = SPI_MASTER_WR(0x11);
		delay_10us();	

	return spi_r_buf;
}


unsigned char AT89S51_Chip_Erase(void)
{
	unsigned char spi_r_buf;
	SPI_MASTER_WR(0xac);
		delay_10us();
	SPI_MASTER_WR(0x80);
		delay_10us();
	SPI_MASTER_WR(0x12);
		delay_10us();
	spi_r_buf = SPI_MASTER_WR(0x13);
		delay_10us();	

	return spi_r_buf;
}
	

unsigned char SPI_MASTER_WR(unsigned char package)
{
	unsigned char spi_cnt = 0;
	unsigned char spi_r_buf = 0;
	
	SPI_SCK = 0;
		delay_10us();
	
	for(spi_cnt = 0; spi_cnt < 8; spi_cnt ++)
	{
		SPI_MOSI = ((package & 0x80) == 0x80) ? 1 : 0;
		package <<= 1;
			delay_10us();
		
		SPI_SCK = 1;
			delay_10us();
		
		spi_r_buf <<= 1;
		spi_r_buf = (SPI_MISO == 1) ? (spi_r_buf |0x01) : spi_r_buf;
		
		SPI_SCK = 0;
			delay_10us();
	}
	
	return spi_r_buf;
}


void INIT_MOVIE(void)
{
	LED = 0X55;
		delay_ms(200);
	LED = 0XAA;
		delay_ms(200);
	LED = 0X55;
		delay_ms(200);
	LED = 0XAA;
		delay_ms(200);
	LED = 0X55;
		delay_ms(200);
	LED = 0XAA;
		delay_ms(200);
	LED = 0XFF;
		delay_ms(500);
}


void delay_ms(unsigned int ms)
{
	unsigned int j;
	unsigned char i;
	
	for(j = 0; j < ms; j++)
		for(i = 0; i< 90; i++);
}

void delay_10us(void)
{
	unsigned char i;
		for(i = 0; i < 5; i++);
}


void buzz_hal_ok(void)
{
	unsigned int buzz_cnt = 0;
		for(buzz_cnt = 0; buzz_cnt < 100; buzz_cnt ++)
		{
				BUZZ = 1;
				delay_ms(1);
				BUZZ = 0;
				delay_ms(1);
		}
			
}

void buzz_prog_en_error(void)
{
	unsigned int buzz_cnt = 0;
		for(buzz_cnt = 0; buzz_cnt < 500; buzz_cnt ++)
		{
				BUZZ = 1;
				delay_ms(1);
				BUZZ = 0;
				delay_ms(1);
		}
			
}

void buzz_verify_error(void)
{
	unsigned int buzz_cnt = 0;
		for(buzz_cnt = 0; buzz_cnt < 500; buzz_cnt ++)
		{
				BUZZ = 1;
				delay_ms(1);
				BUZZ = 0;
				delay_ms(1);
		}
			
		for(buzz_cnt = 0; buzz_cnt < 500; buzz_cnt ++)
		{
				BUZZ = 1;
				delay_ms(1);
				BUZZ = 0;
				delay_ms(1);
		}
}

