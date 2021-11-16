;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Tue Nov 16 16:56:26 2021
;--------------------------------------------------------
	.module lab6
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Initial
	.globl _Write7219
	.globl _sendbyte
	.globl _read_adc3202
	.globl _SPI_WR
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
	.globl _led_out
	.globl _segment_out
	.globl _dis_value
	.globl _adc_value
	.globl _seg_dot
	.globl _seg
	.globl _delay_5
	.globl _delay_ms
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_seg::
	.ds 10
_seg_dot::
	.ds 3
_adc_value::
	.ds 2
_dis_value::
	.ds 2
_segment_out::
	.ds 2
_led_out::
	.ds 1
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
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:20: unsigned char seg[10]={
	mov	_seg,#0x7E
	mov	(_seg + 0x0001),#0x30
	mov	(_seg + 0x0002),#0x6D
	mov	(_seg + 0x0003),#0x79
	mov	(_seg + 0x0004),#0x33
	mov	(_seg + 0x0005),#0x5B
	mov	(_seg + 0x0006),#0x5F
	mov	(_seg + 0x0007),#0x70
	mov	(_seg + 0x0008),#0x7F
	mov	(_seg + 0x0009),#0x7B
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:33: unsigned char seg_dot[3]={
	mov	_seg_dot,#0xFE
	mov	(_seg_dot + 0x0001),#0xB0
	mov	(_seg_dot + 0x0002),#0xED
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
;Allocation info for local variables in function 'SPI_WR'
;------------------------------------------------------------
;data_in                   Allocated to registers r2 
;data_out                  Allocated to registers r3 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:41: char SPI_WR(char data_in)
;	-----------------------------------------
;	 function SPI_WR
;	-----------------------------------------
_SPI_WR:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:43: char data_out = 0;
	mov	r3,#0x00
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:45: for(i=0;i<8;i++)  // 8 bit transaction
	mov	r4,#0x00
00103$:
	cjne	r4,#0x08,00113$
00113$:
	jnc	00106$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:47: data_out <<= 1;
	mov	a,r3
	add	a,r3
	mov	r3,a
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:49: CLK = 0;
	clr	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:50: delay_5();
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay_5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:51: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
	mov	a,r2
	rlc	a
	mov	_P2_1,c
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:52: delay_5();
	push	ar2
	push	ar3
	push	ar4
	lcall	_delay_5
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:53: CLK = 1;
	setb	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:54: delay_5();
	lcall	_delay_5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:56: if(DOUT == 1)   // Read DOUT
	jnb	_P2_2,00102$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:57: data_out = (data_out | 0x01);   // Store into data_out
	orl	ar3,#0x01
00102$:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:58: data_in <<= 1;
	mov	a,r2
	add	a,r2
	mov	r2,a
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:45: for(i=0;i<8;i++)  // 8 bit transaction
	inc	r4
	sjmp	00103$
00106$:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:60: return data_out;
	mov	dpl,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_adc3202'
;------------------------------------------------------------
;channel                   Allocated to registers r2 
;data_buff                 Allocated to registers r3 r4 
;spi_buff                  Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:63: unsigned int read_adc3202(unsigned char channel){
;	-----------------------------------------
;	 function read_adc3202
;	-----------------------------------------
_read_adc3202:
	mov	r2,dpl
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:68: LOAD = 0;
	clr	_P2_3
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:71: SPI_WR(0x01);               // First byte transaction includes start bit
	mov	dpl,#0x01
	push	ar2
	lcall	_SPI_WR
	pop	ar2
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:72: if(channel == 1)            // Channel 1: 11100000, to IR sensor
	cjne	r2,#0x01,00102$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:73: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
	mov	dpl,#0xE0
	lcall	_SPI_WR
	mov	r2,dpl
	sjmp	00103$
00102$:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:75: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
	mov	dpl,#0xA0
	lcall	_SPI_WR
	mov	r3,dpl
	mov	ar2,r3
00103$:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:76: data_buff = spi_buff & 0x0f;
	mov	a,#0x0F
	anl	a,r2
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:77: data_buff <<= 8;            // Store higher 4 bit ADC output
	mov	r4,a
	mov	r3,#0x00
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:79: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
	mov	dpl,#0x00
	push	ar3
	push	ar4
	lcall	_SPI_WR
	mov	r5,dpl
	pop	ar4
	pop	ar3
	mov	ar2,r5
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:80: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
	mov	r5,#0x00
	mov	a,r2
	orl	ar3,a
	mov	a,r5
	orl	ar4,a
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:82: LOAD = 1;  
	setb	_P2_3
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:83: CLK = 0;
	clr	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:84: DIN = 0;
	clr	_P2_1
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:86: return data_buff;
	mov	dpl,r3
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_5'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:89: void delay_5(void)
;	-----------------------------------------
;	 function delay_5
;	-----------------------------------------
_delay_5:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:92: for(i = 0; i < 5; i ++);
	mov	r2,#0x05
00103$:
	djnz	r2,00103$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat                       Allocated to stack - offset -3
;address                   Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:96: void sendbyte(unsigned char address,unsigned char dat){
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:98: for (i=0;i<8;i++)
	mov	r3,#0x00
00101$:
	cjne	r3,#0x08,00117$
00117$:
	jnc	00104$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:100: CLK=0;
	clr	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:101: DIN=(address&0x80);
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:102: address<<=1;
	mov	a,r2
	add	a,r2
	mov	_P2_1,c
	mov	r2,a
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:103: CLK=1;
	setb	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:98: for (i=0;i<8;i++)
	inc	r3
	sjmp	00101$
00104$:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:106: for (i=0;i<8;i++)
	mov	r2,#0x00
00105$:
	cjne	r2,#0x08,00119$
00119$:
	jnc	00109$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:108: CLK=0;
	clr	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:109: DIN=(dat&0x80);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	rlc	a
	mov	_P2_1,c
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:110: dat<<=1;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	@r0,a
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:111: CLK=1;
	setb	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:106: for (i=0;i<8;i++)
	inc	r2
	sjmp	00105$
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated to stack - offset -3
;address                   Allocated to registers r2 
;cnt                       Allocated to registers r3 
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:115: void Write7219(unsigned char address,unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:118: LOAD_MAX=0;
	clr	_P2_4
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:119: for(cnt=1;cnt<=matrixnum;cnt++)
	mov	r3,#0x01
00103$:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:121: sendbyte(address,dat);
	push	ar2
	push	ar3
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r2
	lcall	_sendbyte
	dec	sp
	pop	ar3
	pop	ar2
	djnz	r3,00103$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:119: for(cnt=1;cnt<=matrixnum;cnt++)
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:123: LOAD_MAX=1;
	setb	_P2_4
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:126: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:129: Write7219(SHUT_DOWN,0x01);
	mov	a,#0x01
	push	acc
	mov	dpl,#0x0C
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:130: Write7219(DISPLAY_TEST,0x00);
	clr	a
	push	acc
	mov	dpl,#0x0F
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:131: Write7219(DECODE_MODE,0x00);
	clr	a
	push	acc
	mov	dpl,#0x09
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:132: Write7219(SCAN_LIMIT,0x07);
	mov	a,#0x07
	push	acc
	mov	dpl,#0x0B
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:133: Write7219(INTENSITY,0x00);
	clr	a
	push	acc
	mov	dpl,#0x0A
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:135: for(i=1;i<=8;i++){
	mov	r2,#0x01
00101$:
	mov	a,#0x08
	cjne	a,ar2,00110$
00110$:
	jc	00105$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:136: Write7219(i,0x00);
	push	ar2
	clr	a
	push	acc
	mov	dpl,r2
	lcall	_Write7219
	dec	sp
	pop	ar2
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:135: for(i=1;i<=8;i++){
	inc	r2
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:13: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:14: DOUT = 1; //Setting gpio input mode
	setb	_P2_2
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:15: LOAD = 1; 
	setb	_P2_3
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:16: CLK = 0;
	clr	_P2_0
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:17: DIN = 0;
	clr	_P2_1
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:18: Initial();
	lcall	_Initial
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:20: while(1)
00102$:
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:22: adc_value = read_adc3202(1);    // Read voltage from ADC channel 1
	mov	dpl,#0x01
	lcall	_read_adc3202
	mov	_adc_value,dpl
	mov	(_adc_value + 1),dph
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:24: Write7219(0x04,seg[adc_value / 1000] | 0x80);    // Display on MAX7219
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_adc_value
	mov	dph,(_adc_value + 1)
	lcall	__divuint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	orl	ar2,#0x80
	push	ar2
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:25: Write7219(0x03,seg[adc_value % 1000 / 100]);
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_adc_value
	mov	dph,(_adc_value + 1)
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
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:26: Write7219(0x02,seg[adc_value % 100 / 10]);
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,_adc_value
	mov	dph,(_adc_value + 1)
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
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x02
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:27: Write7219(0x01,seg[adc_value % 10]);
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,_adc_value
	mov	dph,(_adc_value + 1)
	lcall	__moduint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x01
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:29: dis_value = 100.0/(adc_value * 0.0003 - 0.0409);
	mov	dpl,_adc_value
	mov	dph,(_adc_value + 1)
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x4952
	mov	b,#0x9D
	mov	a,#0x39
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xC2
	push	acc
	mov	a,#0x86
	push	acc
	mov	a,#0x27
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2uint
	mov	_dis_value,dpl
	mov	(_dis_value + 1),dph
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:30: Write7219(0x08,seg[dis_value / 1000]);    // Display on MAX7219
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_dis_value
	mov	dph,(_dis_value + 1)
	lcall	__divuint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:31: Write7219(0x07,seg[dis_value % 1000 / 100] | 0x80);
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_dis_value
	mov	dph,(_dis_value + 1)
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
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	orl	ar2,#0x80
	push	ar2
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:32: Write7219(0x06,seg[dis_value % 100 / 10]);
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,_dis_value
	mov	dph,(_dis_value + 1)
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
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:33: Write7219(0x05,seg[dis_value % 10]);
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,_dis_value
	mov	dph,(_dis_value + 1)
	lcall	__moduint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,r2
	add	a,#_seg
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:34: delay_ms(200);
	mov	dptr,#0x00C8
	lcall	_delay_ms
	ljmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;input_ms                  Allocated to registers r2 r3 
;cnt1                      Allocated to registers r4 r5 
;cnt2                      Allocated to registers r6 
;------------------------------------------------------------
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:38: void delay_ms(UI input_ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:43: for (cnt1 = 0; cnt1 < input_ms; cnt1++)
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00108$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:44: for (cnt2 = 0; cnt2 < 120; cnt2++) ;
	mov	r6,#0x78
00103$:
	djnz	r6,00103$
;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:43: for (cnt1 = 0; cnt1 < input_ms; cnt1++)
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00108$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
