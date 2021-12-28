;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Tue Dec 28 09:54:25 2021
;--------------------------------------------------------
	.module Q3MIDE
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Single_ReadI2C
	.globl _Single_WriteI2C
	.globl _I2C_RecvByte
	.globl _I2C_SendByte
	.globl _I2C_RecvACK
	.globl _I2C_SendACK
	.globl _read_adc3202
	.globl _SPI_WR
	.globl _delay_ms
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _dis
	.globl _adc
	.globl _tmpc
	.globl __addr
	.globl _SSD_CODE
	.globl _delay_5
	.globl _BitExtract
	.globl _SerialDIN
	.globl _SSD_Number
	.globl _SSD_Show
	.globl _SSD_Show_Scroll
	.globl _SSD_INIT
	.globl _I2C_Start
	.globl _I2C_Stop
	.globl _delay_i2c
	.globl _readObjectTemp
	.globl _readAmbientTemp
	.globl _readTemp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_SSD_CODE::
	.ds 16
_SSD_Show_Scroll_shift_1_1:
	.ds 1
__addr::
	.ds 1
_tmpc::
	.ds 2
_adc::
	.ds 2
_dis::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD_Show_Scroll'
;------------------------------------------------------------
;num                       Allocated to stack - offset 1
;i                         Allocated to registers r5 r6 
;shift                     Allocated with name '_SSD_Show_Scroll_shift_1_1'
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:155: static UC shift = 0;
	mov	_SSD_Show_Scroll_shift_1_1,#0x00
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:22: UC SSD_CODE[] = {
	mov	_SSD_CODE,#0x7E
	mov	(_SSD_CODE + 0x0001),#0x30
	mov	(_SSD_CODE + 0x0002),#0x6D
	mov	(_SSD_CODE + 0x0003),#0x79
	mov	(_SSD_CODE + 0x0004),#0x33
	mov	(_SSD_CODE + 0x0005),#0x5B
	mov	(_SSD_CODE + 0x0006),#0x5F
	mov	(_SSD_CODE + 0x0007),#0x70
	mov	(_SSD_CODE + 0x0008),#0x7F
	mov	(_SSD_CODE + 0x0009),#0x7B
	mov	(_SSD_CODE + 0x000a),#0x77
	mov	(_SSD_CODE + 0x000b),#0x1F
	mov	(_SSD_CODE + 0x000c),#0x4E
	mov	(_SSD_CODE + 0x000d),#0x3D
	mov	(_SSD_CODE + 0x000e),#0x4F
	mov	(_SSD_CODE + 0x000f),#0x47
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:16: uint8_t  _addr = MLX90614_ADDRESS << 1;    // 0x5a --> 0xb4
	mov	__addr,#0xB4
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;input_ms                  Allocated to registers r2 r3 
;cnt1                      Allocated to registers r4 r5 
;cnt2                      Allocated to registers r6 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:4: void delay_ms(unsigned int input_ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:9: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00108$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:11: for(cnt2 = 0; cnt2 < 90;cnt2 ++);
	mov	r6,#0x5A
00103$:
	djnz	r6,00103$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:9: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_WR'
;------------------------------------------------------------
;data_in                   Allocated to registers r2 
;data_out                  Allocated to registers r3 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:51: char SPI_WR(char data_in)
;	-----------------------------------------
;	 function SPI_WR
;	-----------------------------------------
_SPI_WR:
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:53: char data_out = 0;
	mov	r3,#0x00
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:55: for(i=0;i<8;i++)  // 8 bit transaction
	mov	r4,#0x00
00103$:
	cjne	r4,#0x08,00113$
00113$:
	jnc	00106$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:57: data_out <<= 1;
	mov	a,r3
	add	a,r3
	mov	r3,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:59: CLK = 0;
	clr	_P2_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:60: delay_5();
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay_5
	pop	ar4
	pop	ar3
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:61: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
	mov	a,r2
	rlc	a
	mov	_P2_1,c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:62: delay_5();
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay_5
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:63: CLK = 1;
	setb	_P2_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:64: delay_5();
	lcall	_delay_5
	pop	ar4
	pop	ar3
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:66: if(DOUT == 1)   // Read DOUT
	jnb	_P2_2,00102$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:67: data_out = (data_out | 0x01);   // Store into data_out
	orl	ar3,#0x01
00102$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:68: data_in <<= 1;
	mov	a,r2
	add	a,r2
	mov	r2,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:55: for(i=0;i<8;i++)  // 8 bit transaction
	inc	r4
	sjmp	00103$
00106$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:70: return data_out;
	mov	dpl,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_adc3202'
;------------------------------------------------------------
;channel                   Allocated to registers r2 
;data_buff                 Allocated to registers r3 r4 
;spi_buff                  Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:73: unsigned int read_adc3202(unsigned char channel) {
;	-----------------------------------------
;	 function read_adc3202
;	-----------------------------------------
_read_adc3202:
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:78: LOAD = 0;
	clr	_P2_3
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:81: SPI_WR(0x01);               // First byte transaction includes start bit
	mov	dpl,#0x01
	push	ar2
	lcall	_SPI_WR
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:82: if(channel == 1)            // Channel 1: 11100000, to IR sensor
	cjne	r2,#0x01,00102$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:83: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
	mov	dpl,#0xE0
	lcall	_SPI_WR
	mov	r2,dpl
	sjmp	00103$
00102$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:85: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
	mov	dpl,#0xA0
	lcall	_SPI_WR
	mov	r3,dpl
	mov	ar2,r3
00103$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:86: data_buff = spi_buff & 0x0f;
	mov	a,#0x0F
	anl	a,r2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:87: data_buff <<= 8;            // Store higher 4 bit ADC output
	mov	r4,a
	mov	r3,#0x00
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:89: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
	mov	dpl,#0x00
	push	ar3
	push	ar4
	lcall	_SPI_WR
	mov	r5,dpl
	pop	ar4
	pop	ar3
	mov	ar2,r5
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:90: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
	mov	r5,#0x00
	mov	a,r2
	orl	ar3,a
	mov	a,r5
	orl	ar4,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:92: LOAD = 1;  
	setb	_P2_3
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:93: CLK = 0;
	clr	_P2_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:94: DIN = 0;
	clr	_P2_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:96: return data_buff;
	mov	dpl,r3
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_5'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:99: void delay_5(void)
;	-----------------------------------------
;	 function delay_5
;	-----------------------------------------
_delay_5:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:102: for(i = 0; i < 5; i ++);
	mov	r2,#0x05
00103$:
	djnz	r2,00103$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BitExtract'
;------------------------------------------------------------
;bits                      Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:107: void BitExtract(UC bits)
;	-----------------------------------------
;	 function BitExtract
;	-----------------------------------------
_BitExtract:
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:111: for (i = 0; i < 8; i++) {
	mov	r3,#0x00
00101$:
	cjne	r3,#0x08,00110$
00110$:
	jnc	00105$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:112: CLK = 0;
	clr	_P2_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:113: DIN = (bits & 0x80);
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:114: bits <<= 1;
	mov	a,r2
	add	a,r2
	mov	_P2_1,c
	mov	r2,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:115: CLK = 1;
	setb	_P2_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:111: for (i = 0; i < 8; i++) {
	inc	r3
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialDIN'
;------------------------------------------------------------
;dat                       Allocated to stack - offset -3
;address                   Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:119: void SerialDIN(UC address, UC dat)
;	-----------------------------------------
;	 function SerialDIN
;	-----------------------------------------
_SerialDIN:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:121: LOAD_MAX = 0;
	clr	_P2_4
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:122: BitExtract(address);
	mov	dpl,r2
	lcall	_BitExtract
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:123: BitExtract(dat);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_BitExtract
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:124: LOAD_MAX = 1;
	setb	_P2_4
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD_Number'
;------------------------------------------------------------
;num                       Allocated to stack - offset 1
;i                         Allocated to registers r4 r5 
;n                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:127: void SSD_Number(long num)
;	-----------------------------------------
;	 function SSD_Number
;	-----------------------------------------
_SSD_Number:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:131: n = num > 0 ? num : num * -1;
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	sjmp	00116$
00115$:
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	r6,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r7,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r2,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r3,a
00116$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:133: for (i = 1; i <= 8 && n; i++) {
	mov	r2,#0x01
	mov	r3,#0x00
00105$:
	clr	c
	mov	a,#0x08
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00125$
	mov	a,r6
	orl	a,r7
	jz	00125$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:134: SerialDIN(i, SSD_CODE[n % 10]);
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r4,dpl
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	mov	a,r4
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar4,@r0
	mov	ar5,r2
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	push	ar4
	mov	dpl,r5
	lcall	_SerialDIN
	dec	sp
	pop	ar7
	pop	ar6
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:135: n /= 10;
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	ar6,r4
	mov	ar7,r5
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:133: for (i = 1; i <= 8 && n; i++) {
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	sjmp	00105$
00125$:
	mov	ar4,r2
	mov	ar5,r3
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:137: if (num < 10 && i <= 8) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,#0x0A
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
	clr	c
	mov	a,#0x08
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00102$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:138: SerialDIN(i++, 0x01);
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	push	ar4
	push	ar5
	mov	a,#0x01
	push	acc
	mov	dpl,r2
	lcall	_SerialDIN
	dec	sp
	pop	ar5
	pop	ar4
00102$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:140: for (i++; i <= 8; i++)
	inc	r4
	cjne	r4,#0x00,00133$
	inc	r5
00133$:
	mov	ar2,r4
	mov	ar3,r5
00109$:
	clr	c
	mov	a,#0x08
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00113$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:141: SerialDIN(i, 0);
	mov	ar4,r2
	push	ar2
	push	ar3
	clr	a
	push	acc
	mov	dpl,r4
	lcall	_SerialDIN
	dec	sp
	pop	ar3
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:140: for (i++; i <= 8; i++)
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r3
	sjmp	00109$
00113$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD_Show'
;------------------------------------------------------------
;num                       Allocated to stack - offset 1
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:144: void SSD_Show(UC* num)
;	-----------------------------------------
;	 function SSD_Show
;	-----------------------------------------
_SSD_Show:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:148: for (i = 1; i <= 8; i++)
	mov	r5,#0x01
	mov	r6,#0x00
00101$:
	clr	c
	mov	a,#0x08
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00105$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:149: SerialDIN(i, SSD_CODE[num[8 - i]]);
	mov	a,#0x08
	clr	c
	subb	a,r5
	mov	r7,a
	clr	a
	subb	a,r6
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r7
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	mov	ar3,r5
	push	ar5
	push	ar6
	push	ar2
	mov	dpl,r3
	lcall	_SerialDIN
	dec	sp
	pop	ar6
	pop	ar5
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:148: for (i = 1; i <= 8; i++)
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00105$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD_Show_Scroll'
;------------------------------------------------------------
;num                       Allocated to stack - offset 1
;i                         Allocated to registers r5 r6 
;shift                     Allocated with name '_SSD_Show_Scroll_shift_1_1'
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:152: void SSD_Show_Scroll(UC* num)
;	-----------------------------------------
;	 function SSD_Show_Scroll
;	-----------------------------------------
_SSD_Show_Scroll:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:157: for (i = 1; i <= 8; i++)
	mov	r5,#0x01
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,#0x08
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00106$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:158: SerialDIN(i, SSD_CODE[num[(8 - i + shift) % 8]]);
	mov	a,#0x08
	clr	c
	subb	a,r5
	mov	r7,a
	clr	a
	subb	a,r6
	mov	r2,a
	mov	r3,_SSD_Show_Scroll_shift_1_1
	mov	r4,#0x00
	mov	a,r3
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r2
	anl	ar7,#0x07
	mov	r2,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r7
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	mov	ar3,r5
	push	ar5
	push	ar6
	push	ar2
	mov	dpl,r3
	lcall	_SerialDIN
	dec	sp
	pop	ar6
	pop	ar5
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:157: for (i = 1; i <= 8; i++)
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00106$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:159: shift++;
	inc	_SSD_Show_Scroll_shift_1_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:160: if (shift == 8) shift = 0;
	mov	a,#0x08
	cjne	a,_SSD_Show_Scroll_shift_1_1,00102$
	mov	_SSD_Show_Scroll_shift_1_1,#0x00
00102$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:162: delay_ms(1000);
	mov	dptr,#0x03E8
	lcall	_delay_ms
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD_INIT'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:165: void SSD_INIT()
;	-----------------------------------------
;	 function SSD_INIT
;	-----------------------------------------
_SSD_INIT:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:169: SerialDIN(SHUTDOWN,     0x01);  // Normal mode (0xX1)
	mov	a,#0x01
	push	acc
	mov	dpl,#0x0C
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:170: SerialDIN(DISPLAY_TEST, 0x00);  // Overwrite SHUTDOWN
	clr	a
	push	acc
	mov	dpl,#0x0F
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:171: SerialDIN(DECODE_MODE,  0x00);  // no decoding
	clr	a
	push	acc
	mov	dpl,#0x09
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:172: SerialDIN(SCAN_LIMIT,   0x07);  // use all 8 digits
	mov	a,#0x07
	push	acc
	mov	dpl,#0x0B
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:173: SerialDIN(INTENSITY,    0x0E);  // brightness
	mov	a,#0x0E
	push	acc
	mov	dpl,#0x0A
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:175: for (i = 1; i <= 8; i++)
	mov	r2,#0x01
00101$:
	mov	a,#0x08
	cjne	a,ar2,00110$
00110$:
	jc	00105$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:176: SerialDIN(i, 0);
	push	ar2
	clr	a
	push	acc
	mov	dpl,r2
	lcall	_SerialDIN
	dec	sp
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:175: for (i = 1; i <= 8; i++)
	inc	r2
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Start'
;------------------------------------------------------------
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:24: void I2C_Start(void)
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:26: SDA = 0;                    
	clr	_P0_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:27: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:28: SCL = 0;                    
	clr	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:29: delay_i2c();                  
	ljmp	_delay_i2c
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Stop'
;------------------------------------------------------------
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:34: void I2C_Stop(void)
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:36: SDA = 0;                    
	clr	_P0_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:37: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:38: SCL = 1;                    
	setb	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:39: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:40: SDA = 1;                    
	setb	_P0_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:41: delay_i2c();                  
	ljmp	_delay_i2c
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_SendACK'
;------------------------------------------------------------
;ack                       Allocated to registers 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:46: void I2C_SendACK(__bit ack)
;	-----------------------------------------
;	 function I2C_SendACK
;	-----------------------------------------
_I2C_SendACK:
	mov	c,b0
	mov	_P0_1,c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:49: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:50: SCL = 1;                    
	setb	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:51: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:52: SCL = 0;                    
	clr	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:53: delay_i2c();                  
	ljmp	_delay_i2c
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_RecvACK'
;------------------------------------------------------------
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:58: __sbit I2C_RecvACK()
;	-----------------------------------------
;	 function I2C_RecvACK
;	-----------------------------------------
_I2C_RecvACK:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:60: delay_i2c();  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:61: SDA = 1;                 
	setb	_P0_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:62: delay_i2c();      
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:63: SCL = 1;    
	setb	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:64: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:65: CY = SDA;                   
	mov	c,_P0_1
	mov	_CY,c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:66: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:67: SCL = 0;                    
	clr	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:68: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:69: return CY;
	mov	c,_CY
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_SendByte'
;------------------------------------------------------------
;dat                       Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:75: void I2C_SendByte(uint8_t dat)
;	-----------------------------------------
;	 function I2C_SendByte
;	-----------------------------------------
_I2C_SendByte:
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:78: for (i=0; i<8; i++)         
	mov	r3,#0x00
00104$:
	cjne	r3,#0x08,00114$
00114$:
	jnc	00107$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:80: if(dat & 0x80)
	mov	a,r2
	jnb	acc.7,00102$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:81: SDA = 1;               
	setb	_P0_1
	sjmp	00103$
00102$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:83: SDA = 0;               
	clr	_P0_1
00103$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:84: delay_i2c();                  
	push	ar2
	push	ar3
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:85: SCL = 1;                
	setb	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:86: delay_i2c();                  
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:87: SCL = 0;                
	clr	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:88: delay_i2c();                  
	lcall	_delay_i2c
	pop	ar3
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:89: dat <<= 1;              
	mov	a,r2
	add	a,r2
	mov	r2,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:78: for (i=0; i<8; i++)         
	inc	r3
	sjmp	00104$
00107$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:91: I2C_RecvACK();
	ljmp	_I2C_RecvACK
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_RecvByte'
;------------------------------------------------------------
;i                         Allocated to registers r3 
;dat                       Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:96: uint8_t I2C_RecvByte()
;	-----------------------------------------
;	 function I2C_RecvByte
;	-----------------------------------------
_I2C_RecvByte:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:99: uint8_t dat = 0;
	mov	r2,#0x00
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:100: SDA = 1;                    
	setb	_P0_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:101: for (i=0; i<8; i++)         
	mov	r3,#0x00
00101$:
	cjne	r3,#0x08,00110$
00110$:
	jnc	00104$
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:103: dat <<= 1;
	mov	a,r2
	add	a,r2
	mov	r2,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:104: SCL = 1;                
	setb	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:105: delay_i2c();                  
	push	ar2
	push	ar3
	lcall	_delay_i2c
	pop	ar3
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:106: dat |= SDA;             
	mov	c,_P0_1
	clr	a
	rlc	a
	orl	ar2,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:107: delay_i2c();                                
	push	ar2
	push	ar3
	lcall	_delay_i2c
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:108: SCL = 0;                
	clr	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:109: delay_i2c();                  
	lcall	_delay_i2c
	pop	ar3
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:101: for (i=0; i<8; i++)         
	inc	r3
	sjmp	00101$
00104$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:111: return dat;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Single_WriteI2C'
;------------------------------------------------------------
;REG_Address               Allocated to stack - offset -3
;REG_data                  Allocated to stack - offset -4
;SlaveAddress              Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:116: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data)
;	-----------------------------------------
;	 function Single_WriteI2C
;	-----------------------------------------
_Single_WriteI2C:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:118: I2C_Start();                  
	push	ar2
	lcall	_I2C_Start
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:119: I2C_SendByte(SlaveAddress);   
	mov	dpl,r2
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:120: I2C_SendByte(REG_Address);    
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:121: I2C_SendByte(REG_data);       
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:122: I2C_Stop();                   
	lcall	_I2C_Stop
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Single_ReadI2C'
;------------------------------------------------------------
;REG_Address               Allocated to stack - offset -3
;SlaveAddress              Allocated to registers r2 
;REG_data                  Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:127: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
;	-----------------------------------------
;	 function Single_ReadI2C
;	-----------------------------------------
_Single_ReadI2C:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:130: I2C_Start();                   
	push	ar2
	lcall	_I2C_Start
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:131: I2C_SendByte(SlaveAddress);    
	mov	dpl,r2
	push	ar2
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:132: I2C_SendByte(REG_Address);       
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:133: I2C_Stop();                    
	lcall	_I2C_Stop
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:135: I2C_Start();                   
	lcall	_I2C_Start
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:136: I2C_SendByte(SlaveAddress|0x01);  
	mov	a,#0x01
	orl	a,r2
	mov	dpl,a
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:137: REG_data=I2C_RecvByte();       
	lcall	_I2C_RecvByte
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:138: I2C_SendACK(1);                
	setb	b[0]
	push	ar2
	mov	bits,b
	lcall	_I2C_SendACK
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:139: I2C_Stop();                    
	lcall	_I2C_Stop
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:140: return REG_data;
	mov	dpl,r2
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_i2c'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:159: void delay_i2c(void)
;	-----------------------------------------
;	 function delay_i2c
;	-----------------------------------------
_delay_i2c:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:162: for(i = 0; i < 5; i ++);    
	mov	r2,#0x05
00103$:
	djnz	r2,00103$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readObjectTemp'
;------------------------------------------------------------
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:18: double readObjectTemp(void) {
;	-----------------------------------------
;	 function readObjectTemp
;	-----------------------------------------
_readObjectTemp:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:19: return readTemp(OBJECT_TEMP);
	mov	dpl,#0x07
	ljmp	_readTemp
;------------------------------------------------------------
;Allocation info for local variables in function 'readAmbientTemp'
;------------------------------------------------------------
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:22: double readAmbientTemp(void) {
;	-----------------------------------------
;	 function readAmbientTemp
;	-----------------------------------------
_readAmbientTemp:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:23: return readTemp(AMBIENT_TEMP);
	mov	dpl,#0x06
	ljmp	_readTemp
;------------------------------------------------------------
;Allocation info for local variables in function 'readTemp'
;------------------------------------------------------------
;reg                       Allocated to registers r2 
;temp                      Allocated to registers r2 r3 r4 r5 
;tempData                  Allocated to registers r2 r3 
;pec                       Allocated to registers 
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:26: float readTemp(uint8_t reg) {
;	-----------------------------------------
;	 function readTemp
;	-----------------------------------------
_readTemp:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r2,dpl
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:31: I2C_Start();
	push	ar2
	lcall	_I2C_Start
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:32: I2C_SendByte(_addr);            // 0xb4
	mov	dpl,__addr
	lcall	_I2C_SendByte
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:33: I2C_SendByte(reg);
	mov	dpl,r2
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:34: SDA = 1;                        // pull up 2 wires to restart
	setb	_P0_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:35: SCL = 1;                        
	setb	_P0_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:36: I2C_Start();                    // restart
	lcall	_I2C_Start
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:37: I2C_SendByte(_addr|0x01);       // 0xb4 --> 0xb5
	mov	a,#0x01
	orl	a,__addr
	mov	dpl,a
	lcall	_I2C_SendByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:38: tempData = I2C_RecvByte();      // LSByte
	lcall	_I2C_RecvByte
	mov	r2,dpl
	mov	r3,#0x00
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:39: I2C_SendACK(0);
	clr	b[0]
	push	ar2
	push	ar3
	mov	bits,b
	lcall	_I2C_SendACK
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:40: tempData |= I2C_RecvByte() << 8;  // { MSByte , LSByte } 
	lcall	_I2C_RecvByte
	mov	r4,dpl
	pop	ar3
	pop	ar2
	mov	ar5,r4
	clr	a
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:41: I2C_SendACK(0);
	clr	b[0]
	push	ar2
	push	ar3
	mov	bits,b
	lcall	_I2C_SendACK
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:42: pec = I2C_RecvByte();           // 8-bit pec 
	lcall	_I2C_RecvByte
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:43: I2C_SendACK(1);
	setb	b[0]
	mov	bits,b
	lcall	_I2C_SendACK
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:44: I2C_Stop();
	lcall	_I2C_Stop
	pop	ar3
	pop	ar2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:45: temp = tempData;               // raw 16-bit tempData 
	mov	dpl,r2
	mov	dph,r3
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:46: temp *= 0.02;                  // calculate temperature in Celsius 
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xD70A
	mov	b,#0xA3
	mov	a,#0x3C
	lcall	___fsmul
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:47: temp -= 273.15;
	mov	a,#0x33
	push	acc
	mov	a,#0x93
	push	acc
	mov	a,#0x88
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:48: temp = temp * 10 ;             // in order to show 1 decimal bit
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:50: return temp;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:14: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:16: DOUT = 1; //Setting gpio input mode
	setb	_P2_2
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:17: LOAD = 1; 
	setb	_P2_3
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:18: CLK = 0;
	clr	_P2_0
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:19: DIN = 0;
	clr	_P2_1
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:20: SSD_INIT();
	lcall	_SSD_INIT
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:22: while(1)
00102$:
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:24: adc = read_adc3202(1);    // Read voltage from ADC channel 1
	mov	dpl,#0x01
	lcall	_read_adc3202
	mov	_adc,dpl
	mov	(_adc + 1),dph
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:25: SerialDIN(4,SSD_CODE[adc / 1000] | 0x80);
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_adc
	mov	dph,(_adc + 1)
	lcall	__divuint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	orl	ar2,#0x80
	push	ar2
	mov	dpl,#0x04
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:26: SerialDIN(3,SSD_CODE[adc % 1000 / 100]);
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_adc
	mov	dph,(_adc + 1)
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x03
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:27: SerialDIN(2,SSD_CODE[adc % 100 / 10]);
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,_adc
	mov	dph,(_adc + 1)
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x02
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:28: SerialDIN(1,SSD_CODE[adc % 10]);
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,_adc
	mov	dph,(_adc + 1)
	lcall	__moduint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x01
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:30: tmpc = readObjectTemp();
	lcall	_readObjectTemp
	lcall	___fs2sint
	mov	_tmpc,dpl
	mov	(_tmpc + 1),dph
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:31: SerialDIN(7,SSD_CODE[tmpc % 1000 / 100]);
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_tmpc
	mov	dph,(_tmpc + 1)
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x07
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:32: SerialDIN(6,SSD_CODE[tmpc % 100 / 10] | 0x80);
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,_tmpc
	mov	dph,(_tmpc + 1)
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	orl	ar2,#0x80
	push	ar2
	mov	dpl,#0x06
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:33: SerialDIN(5,SSD_CODE[tmpc % 10]);
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,_tmpc
	mov	dph,(_tmpc + 1)
	lcall	__modsint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_SSD_CODE
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x05
	lcall	_SerialDIN
	dec	sp
;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:44: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
