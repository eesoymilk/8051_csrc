// i2c.h 
#define SCL   P0_0
#define SDA   P0_1
typedef signed char int8_t;
typedef signed char sint8_t;
typedef unsigned char uint8_t;

typedef signed int int16_t;
typedef signed int sint16_t;
typedef unsigned int uint16_t;

typedef signed long int int32_t;
typedef signed long int sint32_t;
typedef unsigned long int uint32_t;

void Delay(void);

// I2C Start Condition
void I2C_Start()
{
    SDA = 1;
    SCL = 1;
    Delay();
    SDA = 0;
    Delay();
    SCL = 0;
}

// I2C Stop Condition
void I2C_Stop()
{
    SDA = 0;
    SCL = 1;
    Delay();
    SDA = 1;
    Delay();
}

// Send ACK
void I2C_SendACK(bit ack)
{
    SDA = ack;
    SCL = 1;
    Delay();
    SCL = 0;
    Delay();
}

// Recieve ACK
bit I2C_RecvACK()
{
    SCL = 1;
    Delay();
    CY = SDA;
    SCL = 0;
    Delay();
    return CY;
}

// Send a Byte
void I2C_SendByte(uint8_t dat)
{
    uint8_t i;
    for (i=0; i<8; i++)
    {
        dat <<= 1;
        SDA = CY;
        SCL = 1;
        Delay();
        SCL = 0;
        Delay();
    }
    I2C_RecvACK();
}

// Recieve a Byte
uint8_t I2C_RecvByte()
{
    uint8_t i;
    uint8_t dat = 0;
    SDA = 1;
    for (i=0; i<8; i++)
    {
        dat <<= 1;
        SCL = 1;
        Delay();
        dat |= SDA;             
        SCL = 0;
        Delay();
    }
    return dat;
}

// I2C Data Transfer: Write mode
void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data)
{
    I2C_Start();
    I2C_SendByte(SlaveAddress);
    I2C_SendByte(REG_Address);
    I2C_SendByte(REG_data);
    I2C_Stop();
}

// I2C Data Transfer: Read mode
uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
{
    uint8_t REG_data;
    I2C_Start();
    I2C_SendByte(SlaveAddress);
    I2C_SendByte(REG_Address);
    I2C_Stop();

    I2C_Start();
		I2C_SendByte(SlaveAddress|0x01);  // R/W#: 1 means read mode
    REG_data=I2C_RecvByte();
    I2C_SendACK(1);
    I2C_Stop();
    return REG_data;
}

void Delay(void)
{
  char i = 0;
  for (i = 0; i < 5; i++);
}