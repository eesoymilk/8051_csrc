                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Tue Nov 16 16:56:26 2021
                              5 ;--------------------------------------------------------
                              6 	.module lab6
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _Initial
                             14 	.globl _Write7219
                             15 	.globl _sendbyte
                             16 	.globl _read_adc3202
                             17 	.globl _SPI_WR
                             18 	.globl _CY
                             19 	.globl _AC
                             20 	.globl _F0
                             21 	.globl _RS1
                             22 	.globl _RS0
                             23 	.globl _OV
                             24 	.globl _F1
                             25 	.globl _P
                             26 	.globl _PS
                             27 	.globl _PT1
                             28 	.globl _PX1
                             29 	.globl _PT0
                             30 	.globl _PX0
                             31 	.globl _RD
                             32 	.globl _WR
                             33 	.globl _T1
                             34 	.globl _T0
                             35 	.globl _INT1
                             36 	.globl _INT0
                             37 	.globl _TXD
                             38 	.globl _RXD
                             39 	.globl _P3_7
                             40 	.globl _P3_6
                             41 	.globl _P3_5
                             42 	.globl _P3_4
                             43 	.globl _P3_3
                             44 	.globl _P3_2
                             45 	.globl _P3_1
                             46 	.globl _P3_0
                             47 	.globl _EA
                             48 	.globl _ES
                             49 	.globl _ET1
                             50 	.globl _EX1
                             51 	.globl _ET0
                             52 	.globl _EX0
                             53 	.globl _P2_7
                             54 	.globl _P2_6
                             55 	.globl _P2_5
                             56 	.globl _P2_4
                             57 	.globl _P2_3
                             58 	.globl _P2_2
                             59 	.globl _P2_1
                             60 	.globl _P2_0
                             61 	.globl _SM0
                             62 	.globl _SM1
                             63 	.globl _SM2
                             64 	.globl _REN
                             65 	.globl _TB8
                             66 	.globl _RB8
                             67 	.globl _TI
                             68 	.globl _RI
                             69 	.globl _P1_7
                             70 	.globl _P1_6
                             71 	.globl _P1_5
                             72 	.globl _P1_4
                             73 	.globl _P1_3
                             74 	.globl _P1_2
                             75 	.globl _P1_1
                             76 	.globl _P1_0
                             77 	.globl _TF1
                             78 	.globl _TR1
                             79 	.globl _TF0
                             80 	.globl _TR0
                             81 	.globl _IE1
                             82 	.globl _IT1
                             83 	.globl _IE0
                             84 	.globl _IT0
                             85 	.globl _P0_7
                             86 	.globl _P0_6
                             87 	.globl _P0_5
                             88 	.globl _P0_4
                             89 	.globl _P0_3
                             90 	.globl _P0_2
                             91 	.globl _P0_1
                             92 	.globl _P0_0
                             93 	.globl _B
                             94 	.globl _ACC
                             95 	.globl _PSW
                             96 	.globl _IP
                             97 	.globl _P3
                             98 	.globl _IE
                             99 	.globl _P2
                            100 	.globl _SBUF
                            101 	.globl _SCON
                            102 	.globl _P1
                            103 	.globl _TH1
                            104 	.globl _TH0
                            105 	.globl _TL1
                            106 	.globl _TL0
                            107 	.globl _TMOD
                            108 	.globl _TCON
                            109 	.globl _PCON
                            110 	.globl _DPH
                            111 	.globl _DPL
                            112 	.globl _SP
                            113 	.globl _P0
                            114 	.globl _led_out
                            115 	.globl _segment_out
                            116 	.globl _dis_value
                            117 	.globl _adc_value
                            118 	.globl _seg_dot
                            119 	.globl _seg
                            120 	.globl _delay_5
                            121 	.globl _delay_ms
                            122 ;--------------------------------------------------------
                            123 ; special function registers
                            124 ;--------------------------------------------------------
                            125 	.area RSEG    (ABS,DATA)
   0000                     126 	.org 0x0000
                    0080    127 _P0	=	0x0080
                    0081    128 _SP	=	0x0081
                    0082    129 _DPL	=	0x0082
                    0083    130 _DPH	=	0x0083
                    0087    131 _PCON	=	0x0087
                    0088    132 _TCON	=	0x0088
                    0089    133 _TMOD	=	0x0089
                    008A    134 _TL0	=	0x008a
                    008B    135 _TL1	=	0x008b
                    008C    136 _TH0	=	0x008c
                    008D    137 _TH1	=	0x008d
                    0090    138 _P1	=	0x0090
                    0098    139 _SCON	=	0x0098
                    0099    140 _SBUF	=	0x0099
                    00A0    141 _P2	=	0x00a0
                    00A8    142 _IE	=	0x00a8
                    00B0    143 _P3	=	0x00b0
                    00B8    144 _IP	=	0x00b8
                    00D0    145 _PSW	=	0x00d0
                    00E0    146 _ACC	=	0x00e0
                    00F0    147 _B	=	0x00f0
                            148 ;--------------------------------------------------------
                            149 ; special function bits
                            150 ;--------------------------------------------------------
                            151 	.area RSEG    (ABS,DATA)
   0000                     152 	.org 0x0000
                    0080    153 _P0_0	=	0x0080
                    0081    154 _P0_1	=	0x0081
                    0082    155 _P0_2	=	0x0082
                    0083    156 _P0_3	=	0x0083
                    0084    157 _P0_4	=	0x0084
                    0085    158 _P0_5	=	0x0085
                    0086    159 _P0_6	=	0x0086
                    0087    160 _P0_7	=	0x0087
                    0088    161 _IT0	=	0x0088
                    0089    162 _IE0	=	0x0089
                    008A    163 _IT1	=	0x008a
                    008B    164 _IE1	=	0x008b
                    008C    165 _TR0	=	0x008c
                    008D    166 _TF0	=	0x008d
                    008E    167 _TR1	=	0x008e
                    008F    168 _TF1	=	0x008f
                    0090    169 _P1_0	=	0x0090
                    0091    170 _P1_1	=	0x0091
                    0092    171 _P1_2	=	0x0092
                    0093    172 _P1_3	=	0x0093
                    0094    173 _P1_4	=	0x0094
                    0095    174 _P1_5	=	0x0095
                    0096    175 _P1_6	=	0x0096
                    0097    176 _P1_7	=	0x0097
                    0098    177 _RI	=	0x0098
                    0099    178 _TI	=	0x0099
                    009A    179 _RB8	=	0x009a
                    009B    180 _TB8	=	0x009b
                    009C    181 _REN	=	0x009c
                    009D    182 _SM2	=	0x009d
                    009E    183 _SM1	=	0x009e
                    009F    184 _SM0	=	0x009f
                    00A0    185 _P2_0	=	0x00a0
                    00A1    186 _P2_1	=	0x00a1
                    00A2    187 _P2_2	=	0x00a2
                    00A3    188 _P2_3	=	0x00a3
                    00A4    189 _P2_4	=	0x00a4
                    00A5    190 _P2_5	=	0x00a5
                    00A6    191 _P2_6	=	0x00a6
                    00A7    192 _P2_7	=	0x00a7
                    00A8    193 _EX0	=	0x00a8
                    00A9    194 _ET0	=	0x00a9
                    00AA    195 _EX1	=	0x00aa
                    00AB    196 _ET1	=	0x00ab
                    00AC    197 _ES	=	0x00ac
                    00AF    198 _EA	=	0x00af
                    00B0    199 _P3_0	=	0x00b0
                    00B1    200 _P3_1	=	0x00b1
                    00B2    201 _P3_2	=	0x00b2
                    00B3    202 _P3_3	=	0x00b3
                    00B4    203 _P3_4	=	0x00b4
                    00B5    204 _P3_5	=	0x00b5
                    00B6    205 _P3_6	=	0x00b6
                    00B7    206 _P3_7	=	0x00b7
                    00B0    207 _RXD	=	0x00b0
                    00B1    208 _TXD	=	0x00b1
                    00B2    209 _INT0	=	0x00b2
                    00B3    210 _INT1	=	0x00b3
                    00B4    211 _T0	=	0x00b4
                    00B5    212 _T1	=	0x00b5
                    00B6    213 _WR	=	0x00b6
                    00B7    214 _RD	=	0x00b7
                    00B8    215 _PX0	=	0x00b8
                    00B9    216 _PT0	=	0x00b9
                    00BA    217 _PX1	=	0x00ba
                    00BB    218 _PT1	=	0x00bb
                    00BC    219 _PS	=	0x00bc
                    00D0    220 _P	=	0x00d0
                    00D1    221 _F1	=	0x00d1
                    00D2    222 _OV	=	0x00d2
                    00D3    223 _RS0	=	0x00d3
                    00D4    224 _RS1	=	0x00d4
                    00D5    225 _F0	=	0x00d5
                    00D6    226 _AC	=	0x00d6
                    00D7    227 _CY	=	0x00d7
                            228 ;--------------------------------------------------------
                            229 ; overlayable register banks
                            230 ;--------------------------------------------------------
                            231 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     232 	.ds 8
                            233 ;--------------------------------------------------------
                            234 ; internal ram data
                            235 ;--------------------------------------------------------
                            236 	.area DSEG    (DATA)
   0008                     237 _seg::
   0008                     238 	.ds 10
   0012                     239 _seg_dot::
   0012                     240 	.ds 3
   0015                     241 _adc_value::
   0015                     242 	.ds 2
   0017                     243 _dis_value::
   0017                     244 	.ds 2
   0019                     245 _segment_out::
   0019                     246 	.ds 2
   001B                     247 _led_out::
   001B                     248 	.ds 1
                            249 ;--------------------------------------------------------
                            250 ; overlayable items in internal ram 
                            251 ;--------------------------------------------------------
                            252 	.area OSEG    (OVR,DATA)
                            253 ;--------------------------------------------------------
                            254 ; Stack segment in internal ram 
                            255 ;--------------------------------------------------------
                            256 	.area	SSEG	(DATA)
   001D                     257 __start__stack:
   001D                     258 	.ds	1
                            259 
                            260 ;--------------------------------------------------------
                            261 ; indirectly addressable internal ram data
                            262 ;--------------------------------------------------------
                            263 	.area ISEG    (DATA)
                            264 ;--------------------------------------------------------
                            265 ; absolute internal ram data
                            266 ;--------------------------------------------------------
                            267 	.area IABS    (ABS,DATA)
                            268 	.area IABS    (ABS,DATA)
                            269 ;--------------------------------------------------------
                            270 ; bit data
                            271 ;--------------------------------------------------------
                            272 	.area BSEG    (BIT)
                            273 ;--------------------------------------------------------
                            274 ; paged external ram data
                            275 ;--------------------------------------------------------
                            276 	.area PSEG    (PAG,XDATA)
                            277 ;--------------------------------------------------------
                            278 ; external ram data
                            279 ;--------------------------------------------------------
                            280 	.area XSEG    (XDATA)
                            281 ;--------------------------------------------------------
                            282 ; absolute external ram data
                            283 ;--------------------------------------------------------
                            284 	.area XABS    (ABS,XDATA)
                            285 ;--------------------------------------------------------
                            286 ; external initialized ram data
                            287 ;--------------------------------------------------------
                            288 	.area XISEG   (XDATA)
                            289 	.area HOME    (CODE)
                            290 	.area GSINIT0 (CODE)
                            291 	.area GSINIT1 (CODE)
                            292 	.area GSINIT2 (CODE)
                            293 	.area GSINIT3 (CODE)
                            294 	.area GSINIT4 (CODE)
                            295 	.area GSINIT5 (CODE)
                            296 	.area GSINIT  (CODE)
                            297 	.area GSFINAL (CODE)
                            298 	.area CSEG    (CODE)
                            299 ;--------------------------------------------------------
                            300 ; interrupt vector 
                            301 ;--------------------------------------------------------
                            302 	.area HOME    (CODE)
   0000                     303 __interrupt_vect:
   0000 02 00 08            304 	ljmp	__sdcc_gsinit_startup
                            305 ;--------------------------------------------------------
                            306 ; global & static initialisations
                            307 ;--------------------------------------------------------
                            308 	.area HOME    (CODE)
                            309 	.area GSINIT  (CODE)
                            310 	.area GSFINAL (CODE)
                            311 	.area GSINIT  (CODE)
                            312 	.globl __sdcc_gsinit_startup
                            313 	.globl __sdcc_program_startup
                            314 	.globl __start__stack
                            315 	.globl __mcs51_genXINIT
                            316 	.globl __mcs51_genXRAMCLEAR
                            317 	.globl __mcs51_genRAMCLEAR
                            318 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:20: unsigned char seg[10]={
   0061 75 08 7E            319 	mov	_seg,#0x7E
   0064 75 09 30            320 	mov	(_seg + 0x0001),#0x30
   0067 75 0A 6D            321 	mov	(_seg + 0x0002),#0x6D
   006A 75 0B 79            322 	mov	(_seg + 0x0003),#0x79
   006D 75 0C 33            323 	mov	(_seg + 0x0004),#0x33
   0070 75 0D 5B            324 	mov	(_seg + 0x0005),#0x5B
   0073 75 0E 5F            325 	mov	(_seg + 0x0006),#0x5F
   0076 75 0F 70            326 	mov	(_seg + 0x0007),#0x70
   0079 75 10 7F            327 	mov	(_seg + 0x0008),#0x7F
   007C 75 11 7B            328 	mov	(_seg + 0x0009),#0x7B
                            329 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:33: unsigned char seg_dot[3]={
   007F 75 12 FE            330 	mov	_seg_dot,#0xFE
   0082 75 13 B0            331 	mov	(_seg_dot + 0x0001),#0xB0
   0085 75 14 ED            332 	mov	(_seg_dot + 0x0002),#0xED
                            333 	.area GSFINAL (CODE)
   0088 02 00 03            334 	ljmp	__sdcc_program_startup
                            335 ;--------------------------------------------------------
                            336 ; Home
                            337 ;--------------------------------------------------------
                            338 	.area HOME    (CODE)
                            339 	.area HOME    (CODE)
   0003                     340 __sdcc_program_startup:
   0003 12 01 E0            341 	lcall	_main
                            342 ;	return from main will lock up
   0006 80 FE               343 	sjmp .
                            344 ;--------------------------------------------------------
                            345 ; code
                            346 ;--------------------------------------------------------
                            347 	.area CSEG    (CODE)
                            348 ;------------------------------------------------------------
                            349 ;Allocation info for local variables in function 'SPI_WR'
                            350 ;------------------------------------------------------------
                            351 ;data_in                   Allocated to registers r2 
                            352 ;data_out                  Allocated to registers r3 
                            353 ;i                         Allocated to registers r4 
                            354 ;------------------------------------------------------------
                            355 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:41: char SPI_WR(char data_in)
                            356 ;	-----------------------------------------
                            357 ;	 function SPI_WR
                            358 ;	-----------------------------------------
   008B                     359 _SPI_WR:
                    0002    360 	ar2 = 0x02
                    0003    361 	ar3 = 0x03
                    0004    362 	ar4 = 0x04
                    0005    363 	ar5 = 0x05
                    0006    364 	ar6 = 0x06
                    0007    365 	ar7 = 0x07
                    0000    366 	ar0 = 0x00
                    0001    367 	ar1 = 0x01
   008B AA 82               368 	mov	r2,dpl
                            369 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:43: char data_out = 0;
   008D 7B 00               370 	mov	r3,#0x00
                            371 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:45: for(i=0;i<8;i++)  // 8 bit transaction
   008F 7C 00               372 	mov	r4,#0x00
   0091                     373 00103$:
   0091 BC 08 00            374 	cjne	r4,#0x08,00113$
   0094                     375 00113$:
   0094 50 38               376 	jnc	00106$
                            377 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:47: data_out <<= 1;
   0096 EB                  378 	mov	a,r3
   0097 2B                  379 	add	a,r3
   0098 FB                  380 	mov	r3,a
                            381 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:49: CLK = 0;
   0099 C2 A0               382 	clr	_P2_0
                            383 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:50: delay_5();
   009B C0 02               384 	push	ar2
   009D C0 03               385 	push	ar3
   009F C0 04               386 	push	ar4
   00A1 12 01 21            387 	lcall	_delay_5
   00A4 D0 04               388 	pop	ar4
   00A6 D0 03               389 	pop	ar3
   00A8 D0 02               390 	pop	ar2
                            391 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:51: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
   00AA EA                  392 	mov	a,r2
   00AB 33                  393 	rlc	a
   00AC 92 A1               394 	mov	_P2_1,c
                            395 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:52: delay_5();
   00AE C0 02               396 	push	ar2
   00B0 C0 03               397 	push	ar3
   00B2 C0 04               398 	push	ar4
   00B4 12 01 21            399 	lcall	_delay_5
                            400 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:53: CLK = 1;
   00B7 D2 A0               401 	setb	_P2_0
                            402 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:54: delay_5();
   00B9 12 01 21            403 	lcall	_delay_5
   00BC D0 04               404 	pop	ar4
   00BE D0 03               405 	pop	ar3
   00C0 D0 02               406 	pop	ar2
                            407 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:56: if(DOUT == 1)   // Read DOUT
   00C2 30 A2 03            408 	jnb	_P2_2,00102$
                            409 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:57: data_out = (data_out | 0x01);   // Store into data_out
   00C5 43 03 01            410 	orl	ar3,#0x01
   00C8                     411 00102$:
                            412 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:58: data_in <<= 1;
   00C8 EA                  413 	mov	a,r2
   00C9 2A                  414 	add	a,r2
   00CA FA                  415 	mov	r2,a
                            416 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:45: for(i=0;i<8;i++)  // 8 bit transaction
   00CB 0C                  417 	inc	r4
   00CC 80 C3               418 	sjmp	00103$
   00CE                     419 00106$:
                            420 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:60: return data_out;
   00CE 8B 82               421 	mov	dpl,r3
   00D0 22                  422 	ret
                            423 ;------------------------------------------------------------
                            424 ;Allocation info for local variables in function 'read_adc3202'
                            425 ;------------------------------------------------------------
                            426 ;channel                   Allocated to registers r2 
                            427 ;data_buff                 Allocated to registers r3 r4 
                            428 ;spi_buff                  Allocated to registers r2 
                            429 ;------------------------------------------------------------
                            430 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:63: unsigned int read_adc3202(unsigned char channel){
                            431 ;	-----------------------------------------
                            432 ;	 function read_adc3202
                            433 ;	-----------------------------------------
   00D1                     434 _read_adc3202:
   00D1 AA 82               435 	mov	r2,dpl
                            436 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:68: LOAD = 0;
   00D3 C2 A3               437 	clr	_P2_3
                            438 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:71: SPI_WR(0x01);               // First byte transaction includes start bit
   00D5 75 82 01            439 	mov	dpl,#0x01
   00D8 C0 02               440 	push	ar2
   00DA 12 00 8B            441 	lcall	_SPI_WR
   00DD D0 02               442 	pop	ar2
                            443 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:72: if(channel == 1)            // Channel 1: 11100000, to IR sensor
   00DF BA 01 0A            444 	cjne	r2,#0x01,00102$
                            445 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:73: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
   00E2 75 82 E0            446 	mov	dpl,#0xE0
   00E5 12 00 8B            447 	lcall	_SPI_WR
   00E8 AA 82               448 	mov	r2,dpl
   00EA 80 0A               449 	sjmp	00103$
   00EC                     450 00102$:
                            451 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:75: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
   00EC 75 82 A0            452 	mov	dpl,#0xA0
   00EF 12 00 8B            453 	lcall	_SPI_WR
   00F2 AB 82               454 	mov	r3,dpl
   00F4 8B 02               455 	mov	ar2,r3
   00F6                     456 00103$:
                            457 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:76: data_buff = spi_buff & 0x0f;
   00F6 74 0F               458 	mov	a,#0x0F
   00F8 5A                  459 	anl	a,r2
                            460 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:77: data_buff <<= 8;            // Store higher 4 bit ADC output
   00F9 FC                  461 	mov	r4,a
   00FA 7B 00               462 	mov	r3,#0x00
                            463 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:79: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
   00FC 75 82 00            464 	mov	dpl,#0x00
   00FF C0 03               465 	push	ar3
   0101 C0 04               466 	push	ar4
   0103 12 00 8B            467 	lcall	_SPI_WR
   0106 AD 82               468 	mov	r5,dpl
   0108 D0 04               469 	pop	ar4
   010A D0 03               470 	pop	ar3
   010C 8D 02               471 	mov	ar2,r5
                            472 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:80: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
   010E 7D 00               473 	mov	r5,#0x00
   0110 EA                  474 	mov	a,r2
   0111 42 03               475 	orl	ar3,a
   0113 ED                  476 	mov	a,r5
   0114 42 04               477 	orl	ar4,a
                            478 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:82: LOAD = 1;  
   0116 D2 A3               479 	setb	_P2_3
                            480 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:83: CLK = 0;
   0118 C2 A0               481 	clr	_P2_0
                            482 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:84: DIN = 0;
   011A C2 A1               483 	clr	_P2_1
                            484 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:86: return data_buff;
   011C 8B 82               485 	mov	dpl,r3
   011E 8C 83               486 	mov	dph,r4
   0120 22                  487 	ret
                            488 ;------------------------------------------------------------
                            489 ;Allocation info for local variables in function 'delay_5'
                            490 ;------------------------------------------------------------
                            491 ;i                         Allocated to registers r2 
                            492 ;------------------------------------------------------------
                            493 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:89: void delay_5(void)
                            494 ;	-----------------------------------------
                            495 ;	 function delay_5
                            496 ;	-----------------------------------------
   0121                     497 _delay_5:
                            498 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:92: for(i = 0; i < 5; i ++);
   0121 7A 05               499 	mov	r2,#0x05
   0123                     500 00103$:
   0123 DA FE               501 	djnz	r2,00103$
   0125 22                  502 	ret
                            503 ;------------------------------------------------------------
                            504 ;Allocation info for local variables in function 'sendbyte'
                            505 ;------------------------------------------------------------
                            506 ;dat                       Allocated to stack - offset -3
                            507 ;address                   Allocated to registers r2 
                            508 ;i                         Allocated to registers r3 
                            509 ;------------------------------------------------------------
                            510 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:96: void sendbyte(unsigned char address,unsigned char dat){
                            511 ;	-----------------------------------------
                            512 ;	 function sendbyte
                            513 ;	-----------------------------------------
   0126                     514 _sendbyte:
   0126 C0 1C               515 	push	_bp
   0128 85 81 1C            516 	mov	_bp,sp
   012B AA 82               517 	mov	r2,dpl
                            518 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:98: for (i=0;i<8;i++)
   012D 7B 00               519 	mov	r3,#0x00
   012F                     520 00101$:
   012F BB 08 00            521 	cjne	r3,#0x08,00117$
   0132                     522 00117$:
   0132 50 0C               523 	jnc	00104$
                            524 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:100: CLK=0;
   0134 C2 A0               525 	clr	_P2_0
                            526 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:101: DIN=(address&0x80);
                            527 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:102: address<<=1;
   0136 EA                  528 	mov	a,r2
   0137 2A                  529 	add	a,r2
   0138 92 A1               530 	mov	_P2_1,c
   013A FA                  531 	mov	r2,a
                            532 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:103: CLK=1;
   013B D2 A0               533 	setb	_P2_0
                            534 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:98: for (i=0;i<8;i++)
   013D 0B                  535 	inc	r3
   013E 80 EF               536 	sjmp	00101$
   0140                     537 00104$:
                            538 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:106: for (i=0;i<8;i++)
   0140 7A 00               539 	mov	r2,#0x00
   0142                     540 00105$:
   0142 BA 08 00            541 	cjne	r2,#0x08,00119$
   0145                     542 00119$:
   0145 50 19               543 	jnc	00109$
                            544 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:108: CLK=0;
   0147 C2 A0               545 	clr	_P2_0
                            546 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:109: DIN=(dat&0x80);
   0149 E5 1C               547 	mov	a,_bp
   014B 24 FD               548 	add	a,#0xfd
   014D F8                  549 	mov	r0,a
   014E E6                  550 	mov	a,@r0
   014F 33                  551 	rlc	a
   0150 92 A1               552 	mov	_P2_1,c
                            553 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:110: dat<<=1;
   0152 E5 1C               554 	mov	a,_bp
   0154 24 FD               555 	add	a,#0xfd
   0156 F8                  556 	mov	r0,a
   0157 E6                  557 	mov	a,@r0
   0158 25 E0               558 	add	a,acc
   015A F6                  559 	mov	@r0,a
                            560 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:111: CLK=1;
   015B D2 A0               561 	setb	_P2_0
                            562 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:106: for (i=0;i<8;i++)
   015D 0A                  563 	inc	r2
   015E 80 E2               564 	sjmp	00105$
   0160                     565 00109$:
   0160 D0 1C               566 	pop	_bp
   0162 22                  567 	ret
                            568 ;------------------------------------------------------------
                            569 ;Allocation info for local variables in function 'Write7219'
                            570 ;------------------------------------------------------------
                            571 ;dat                       Allocated to stack - offset -3
                            572 ;address                   Allocated to registers r2 
                            573 ;cnt                       Allocated to registers r3 
                            574 ;------------------------------------------------------------
                            575 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:115: void Write7219(unsigned char address,unsigned char dat)
                            576 ;	-----------------------------------------
                            577 ;	 function Write7219
                            578 ;	-----------------------------------------
   0163                     579 _Write7219:
   0163 C0 1C               580 	push	_bp
   0165 85 81 1C            581 	mov	_bp,sp
   0168 AA 82               582 	mov	r2,dpl
                            583 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:118: LOAD_MAX=0;
   016A C2 A4               584 	clr	_P2_4
                            585 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:119: for(cnt=1;cnt<=matrixnum;cnt++)
   016C 7B 01               586 	mov	r3,#0x01
   016E                     587 00103$:
                            588 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:121: sendbyte(address,dat);
   016E C0 02               589 	push	ar2
   0170 C0 03               590 	push	ar3
   0172 E5 1C               591 	mov	a,_bp
   0174 24 FD               592 	add	a,#0xfd
   0176 F8                  593 	mov	r0,a
   0177 E6                  594 	mov	a,@r0
   0178 C0 E0               595 	push	acc
   017A 8A 82               596 	mov	dpl,r2
   017C 12 01 26            597 	lcall	_sendbyte
   017F 15 81               598 	dec	sp
   0181 D0 03               599 	pop	ar3
   0183 D0 02               600 	pop	ar2
   0185 DB E7               601 	djnz	r3,00103$
                            602 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:119: for(cnt=1;cnt<=matrixnum;cnt++)
                            603 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:123: LOAD_MAX=1;
   0187 D2 A4               604 	setb	_P2_4
   0189 D0 1C               605 	pop	_bp
   018B 22                  606 	ret
                            607 ;------------------------------------------------------------
                            608 ;Allocation info for local variables in function 'Initial'
                            609 ;------------------------------------------------------------
                            610 ;i                         Allocated to registers r2 
                            611 ;------------------------------------------------------------
                            612 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:126: void Initial(void)
                            613 ;	-----------------------------------------
                            614 ;	 function Initial
                            615 ;	-----------------------------------------
   018C                     616 _Initial:
                            617 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:129: Write7219(SHUT_DOWN,0x01);
   018C 74 01               618 	mov	a,#0x01
   018E C0 E0               619 	push	acc
   0190 75 82 0C            620 	mov	dpl,#0x0C
   0193 12 01 63            621 	lcall	_Write7219
   0196 15 81               622 	dec	sp
                            623 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:130: Write7219(DISPLAY_TEST,0x00);
   0198 E4                  624 	clr	a
   0199 C0 E0               625 	push	acc
   019B 75 82 0F            626 	mov	dpl,#0x0F
   019E 12 01 63            627 	lcall	_Write7219
   01A1 15 81               628 	dec	sp
                            629 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:131: Write7219(DECODE_MODE,0x00);
   01A3 E4                  630 	clr	a
   01A4 C0 E0               631 	push	acc
   01A6 75 82 09            632 	mov	dpl,#0x09
   01A9 12 01 63            633 	lcall	_Write7219
   01AC 15 81               634 	dec	sp
                            635 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:132: Write7219(SCAN_LIMIT,0x07);
   01AE 74 07               636 	mov	a,#0x07
   01B0 C0 E0               637 	push	acc
   01B2 75 82 0B            638 	mov	dpl,#0x0B
   01B5 12 01 63            639 	lcall	_Write7219
   01B8 15 81               640 	dec	sp
                            641 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:133: Write7219(INTENSITY,0x00);
   01BA E4                  642 	clr	a
   01BB C0 E0               643 	push	acc
   01BD 75 82 0A            644 	mov	dpl,#0x0A
   01C0 12 01 63            645 	lcall	_Write7219
   01C3 15 81               646 	dec	sp
                            647 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:135: for(i=1;i<=8;i++){
   01C5 7A 01               648 	mov	r2,#0x01
   01C7                     649 00101$:
   01C7 74 08               650 	mov	a,#0x08
   01C9 B5 02 00            651 	cjne	a,ar2,00110$
   01CC                     652 00110$:
   01CC 40 11               653 	jc	00105$
                            654 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:136: Write7219(i,0x00);
   01CE C0 02               655 	push	ar2
   01D0 E4                  656 	clr	a
   01D1 C0 E0               657 	push	acc
   01D3 8A 82               658 	mov	dpl,r2
   01D5 12 01 63            659 	lcall	_Write7219
   01D8 15 81               660 	dec	sp
   01DA D0 02               661 	pop	ar2
                            662 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\/lab6_adc_7segment.h:135: for(i=1;i<=8;i++){
   01DC 0A                  663 	inc	r2
   01DD 80 E8               664 	sjmp	00101$
   01DF                     665 00105$:
   01DF 22                  666 	ret
                            667 ;------------------------------------------------------------
                            668 ;Allocation info for local variables in function 'main'
                            669 ;------------------------------------------------------------
                            670 ;------------------------------------------------------------
                            671 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:13: void main(){
                            672 ;	-----------------------------------------
                            673 ;	 function main
                            674 ;	-----------------------------------------
   01E0                     675 _main:
                            676 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:14: DOUT = 1; //Setting gpio input mode
   01E0 D2 A2               677 	setb	_P2_2
                            678 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:15: LOAD = 1; 
   01E2 D2 A3               679 	setb	_P2_3
                            680 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:16: CLK = 0;
   01E4 C2 A0               681 	clr	_P2_0
                            682 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:17: DIN = 0;
   01E6 C2 A1               683 	clr	_P2_1
                            684 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:18: Initial();
   01E8 12 01 8C            685 	lcall	_Initial
                            686 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:20: while(1)
   01EB                     687 00102$:
                            688 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:22: adc_value = read_adc3202(1);    // Read voltage from ADC channel 1
   01EB 75 82 01            689 	mov	dpl,#0x01
   01EE 12 00 D1            690 	lcall	_read_adc3202
   01F1 85 82 15            691 	mov	_adc_value,dpl
   01F4 85 83 16            692 	mov	(_adc_value + 1),dph
                            693 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:24: Write7219(0x04,seg[adc_value / 1000] | 0x80);    // Display on MAX7219
   01F7 74 E8               694 	mov	a,#0xE8
   01F9 C0 E0               695 	push	acc
   01FB 74 03               696 	mov	a,#0x03
   01FD C0 E0               697 	push	acc
   01FF 85 15 82            698 	mov	dpl,_adc_value
   0202 85 16 83            699 	mov	dph,(_adc_value + 1)
   0205 12 04 3F            700 	lcall	__divuint
   0208 AA 82               701 	mov	r2,dpl
   020A 15 81               702 	dec	sp
   020C 15 81               703 	dec	sp
   020E EA                  704 	mov	a,r2
   020F 24 08               705 	add	a,#_seg
   0211 F8                  706 	mov	r0,a
   0212 86 02               707 	mov	ar2,@r0
   0214 43 02 80            708 	orl	ar2,#0x80
   0217 C0 02               709 	push	ar2
   0219 75 82 04            710 	mov	dpl,#0x04
   021C 12 01 63            711 	lcall	_Write7219
   021F 15 81               712 	dec	sp
                            713 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:25: Write7219(0x03,seg[adc_value % 1000 / 100]);
   0221 74 E8               714 	mov	a,#0xE8
   0223 C0 E0               715 	push	acc
   0225 74 03               716 	mov	a,#0x03
   0227 C0 E0               717 	push	acc
   0229 85 15 82            718 	mov	dpl,_adc_value
   022C 85 16 83            719 	mov	dph,(_adc_value + 1)
   022F 12 07 06            720 	lcall	__moduint
   0232 AA 82               721 	mov	r2,dpl
   0234 AB 83               722 	mov	r3,dph
   0236 15 81               723 	dec	sp
   0238 15 81               724 	dec	sp
   023A 74 64               725 	mov	a,#0x64
   023C C0 E0               726 	push	acc
   023E E4                  727 	clr	a
   023F C0 E0               728 	push	acc
   0241 8A 82               729 	mov	dpl,r2
   0243 8B 83               730 	mov	dph,r3
   0245 12 04 3F            731 	lcall	__divuint
   0248 AA 82               732 	mov	r2,dpl
   024A 15 81               733 	dec	sp
   024C 15 81               734 	dec	sp
   024E EA                  735 	mov	a,r2
   024F 24 08               736 	add	a,#_seg
   0251 F8                  737 	mov	r0,a
   0252 86 02               738 	mov	ar2,@r0
   0254 C0 02               739 	push	ar2
   0256 75 82 03            740 	mov	dpl,#0x03
   0259 12 01 63            741 	lcall	_Write7219
   025C 15 81               742 	dec	sp
                            743 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:26: Write7219(0x02,seg[adc_value % 100 / 10]);
   025E 74 64               744 	mov	a,#0x64
   0260 C0 E0               745 	push	acc
   0262 E4                  746 	clr	a
   0263 C0 E0               747 	push	acc
   0265 85 15 82            748 	mov	dpl,_adc_value
   0268 85 16 83            749 	mov	dph,(_adc_value + 1)
   026B 12 07 06            750 	lcall	__moduint
   026E AA 82               751 	mov	r2,dpl
   0270 AB 83               752 	mov	r3,dph
   0272 15 81               753 	dec	sp
   0274 15 81               754 	dec	sp
   0276 74 0A               755 	mov	a,#0x0A
   0278 C0 E0               756 	push	acc
   027A E4                  757 	clr	a
   027B C0 E0               758 	push	acc
   027D 8A 82               759 	mov	dpl,r2
   027F 8B 83               760 	mov	dph,r3
   0281 12 04 3F            761 	lcall	__divuint
   0284 AA 82               762 	mov	r2,dpl
   0286 15 81               763 	dec	sp
   0288 15 81               764 	dec	sp
   028A EA                  765 	mov	a,r2
   028B 24 08               766 	add	a,#_seg
   028D F8                  767 	mov	r0,a
   028E 86 02               768 	mov	ar2,@r0
   0290 C0 02               769 	push	ar2
   0292 75 82 02            770 	mov	dpl,#0x02
   0295 12 01 63            771 	lcall	_Write7219
   0298 15 81               772 	dec	sp
                            773 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:27: Write7219(0x01,seg[adc_value % 10]);
   029A 74 0A               774 	mov	a,#0x0A
   029C C0 E0               775 	push	acc
   029E E4                  776 	clr	a
   029F C0 E0               777 	push	acc
   02A1 85 15 82            778 	mov	dpl,_adc_value
   02A4 85 16 83            779 	mov	dph,(_adc_value + 1)
   02A7 12 07 06            780 	lcall	__moduint
   02AA AA 82               781 	mov	r2,dpl
   02AC 15 81               782 	dec	sp
   02AE 15 81               783 	dec	sp
   02B0 EA                  784 	mov	a,r2
   02B1 24 08               785 	add	a,#_seg
   02B3 F8                  786 	mov	r0,a
   02B4 86 02               787 	mov	ar2,@r0
   02B6 C0 02               788 	push	ar2
   02B8 75 82 01            789 	mov	dpl,#0x01
   02BB 12 01 63            790 	lcall	_Write7219
   02BE 15 81               791 	dec	sp
                            792 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:29: dis_value = 100.0/(adc_value * 0.0003 - 0.0409);
   02C0 85 15 82            793 	mov	dpl,_adc_value
   02C3 85 16 83            794 	mov	dph,(_adc_value + 1)
   02C6 12 05 C3            795 	lcall	___uint2fs
   02C9 AA 82               796 	mov	r2,dpl
   02CB AB 83               797 	mov	r3,dph
   02CD AC F0               798 	mov	r4,b
   02CF FD                  799 	mov	r5,a
   02D0 C0 02               800 	push	ar2
   02D2 C0 03               801 	push	ar3
   02D4 C0 04               802 	push	ar4
   02D6 C0 05               803 	push	ar5
   02D8 90 49 52            804 	mov	dptr,#0x4952
   02DB 75 F0 9D            805 	mov	b,#0x9D
   02DE 74 39               806 	mov	a,#0x39
   02E0 12 04 70            807 	lcall	___fsmul
   02E3 AA 82               808 	mov	r2,dpl
   02E5 AB 83               809 	mov	r3,dph
   02E7 AC F0               810 	mov	r4,b
   02E9 FD                  811 	mov	r5,a
   02EA E5 81               812 	mov	a,sp
   02EC 24 FC               813 	add	a,#0xfc
   02EE F5 81               814 	mov	sp,a
   02F0 74 C2               815 	mov	a,#0xC2
   02F2 C0 E0               816 	push	acc
   02F4 74 86               817 	mov	a,#0x86
   02F6 C0 E0               818 	push	acc
   02F8 74 27               819 	mov	a,#0x27
   02FA C0 E0               820 	push	acc
   02FC 74 3D               821 	mov	a,#0x3D
   02FE C0 E0               822 	push	acc
   0300 8A 82               823 	mov	dpl,r2
   0302 8B 83               824 	mov	dph,r3
   0304 8C F0               825 	mov	b,r4
   0306 ED                  826 	mov	a,r5
   0307 12 04 34            827 	lcall	___fssub
   030A AA 82               828 	mov	r2,dpl
   030C AB 83               829 	mov	r3,dph
   030E AC F0               830 	mov	r4,b
   0310 FD                  831 	mov	r5,a
   0311 E5 81               832 	mov	a,sp
   0313 24 FC               833 	add	a,#0xfc
   0315 F5 81               834 	mov	sp,a
   0317 C0 02               835 	push	ar2
   0319 C0 03               836 	push	ar3
   031B C0 04               837 	push	ar4
   031D C0 05               838 	push	ar5
   031F 90 00 00            839 	mov	dptr,#0x0000
   0322 75 F0 C8            840 	mov	b,#0xC8
   0325 74 42               841 	mov	a,#0x42
   0327 12 06 43            842 	lcall	___fsdiv
   032A AA 82               843 	mov	r2,dpl
   032C AB 83               844 	mov	r3,dph
   032E AC F0               845 	mov	r4,b
   0330 FD                  846 	mov	r5,a
   0331 E5 81               847 	mov	a,sp
   0333 24 FC               848 	add	a,#0xfc
   0335 F5 81               849 	mov	sp,a
   0337 8A 82               850 	mov	dpl,r2
   0339 8B 83               851 	mov	dph,r3
   033B 8C F0               852 	mov	b,r4
   033D ED                  853 	mov	a,r5
   033E 12 05 CF            854 	lcall	___fs2uint
   0341 85 82 17            855 	mov	_dis_value,dpl
   0344 85 83 18            856 	mov	(_dis_value + 1),dph
                            857 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:30: Write7219(0x08,seg[dis_value / 1000]);    // Display on MAX7219
   0347 74 E8               858 	mov	a,#0xE8
   0349 C0 E0               859 	push	acc
   034B 74 03               860 	mov	a,#0x03
   034D C0 E0               861 	push	acc
   034F 85 17 82            862 	mov	dpl,_dis_value
   0352 85 18 83            863 	mov	dph,(_dis_value + 1)
   0355 12 04 3F            864 	lcall	__divuint
   0358 AA 82               865 	mov	r2,dpl
   035A 15 81               866 	dec	sp
   035C 15 81               867 	dec	sp
   035E EA                  868 	mov	a,r2
   035F 24 08               869 	add	a,#_seg
   0361 F8                  870 	mov	r0,a
   0362 86 02               871 	mov	ar2,@r0
   0364 C0 02               872 	push	ar2
   0366 75 82 08            873 	mov	dpl,#0x08
   0369 12 01 63            874 	lcall	_Write7219
   036C 15 81               875 	dec	sp
                            876 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:31: Write7219(0x07,seg[dis_value % 1000 / 100] | 0x80);
   036E 74 E8               877 	mov	a,#0xE8
   0370 C0 E0               878 	push	acc
   0372 74 03               879 	mov	a,#0x03
   0374 C0 E0               880 	push	acc
   0376 85 17 82            881 	mov	dpl,_dis_value
   0379 85 18 83            882 	mov	dph,(_dis_value + 1)
   037C 12 07 06            883 	lcall	__moduint
   037F AA 82               884 	mov	r2,dpl
   0381 AB 83               885 	mov	r3,dph
   0383 15 81               886 	dec	sp
   0385 15 81               887 	dec	sp
   0387 74 64               888 	mov	a,#0x64
   0389 C0 E0               889 	push	acc
   038B E4                  890 	clr	a
   038C C0 E0               891 	push	acc
   038E 8A 82               892 	mov	dpl,r2
   0390 8B 83               893 	mov	dph,r3
   0392 12 04 3F            894 	lcall	__divuint
   0395 AA 82               895 	mov	r2,dpl
   0397 15 81               896 	dec	sp
   0399 15 81               897 	dec	sp
   039B EA                  898 	mov	a,r2
   039C 24 08               899 	add	a,#_seg
   039E F8                  900 	mov	r0,a
   039F 86 02               901 	mov	ar2,@r0
   03A1 43 02 80            902 	orl	ar2,#0x80
   03A4 C0 02               903 	push	ar2
   03A6 75 82 07            904 	mov	dpl,#0x07
   03A9 12 01 63            905 	lcall	_Write7219
   03AC 15 81               906 	dec	sp
                            907 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:32: Write7219(0x06,seg[dis_value % 100 / 10]);
   03AE 74 64               908 	mov	a,#0x64
   03B0 C0 E0               909 	push	acc
   03B2 E4                  910 	clr	a
   03B3 C0 E0               911 	push	acc
   03B5 85 17 82            912 	mov	dpl,_dis_value
   03B8 85 18 83            913 	mov	dph,(_dis_value + 1)
   03BB 12 07 06            914 	lcall	__moduint
   03BE AA 82               915 	mov	r2,dpl
   03C0 AB 83               916 	mov	r3,dph
   03C2 15 81               917 	dec	sp
   03C4 15 81               918 	dec	sp
   03C6 74 0A               919 	mov	a,#0x0A
   03C8 C0 E0               920 	push	acc
   03CA E4                  921 	clr	a
   03CB C0 E0               922 	push	acc
   03CD 8A 82               923 	mov	dpl,r2
   03CF 8B 83               924 	mov	dph,r3
   03D1 12 04 3F            925 	lcall	__divuint
   03D4 AA 82               926 	mov	r2,dpl
   03D6 15 81               927 	dec	sp
   03D8 15 81               928 	dec	sp
   03DA EA                  929 	mov	a,r2
   03DB 24 08               930 	add	a,#_seg
   03DD F8                  931 	mov	r0,a
   03DE 86 02               932 	mov	ar2,@r0
   03E0 C0 02               933 	push	ar2
   03E2 75 82 06            934 	mov	dpl,#0x06
   03E5 12 01 63            935 	lcall	_Write7219
   03E8 15 81               936 	dec	sp
                            937 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:33: Write7219(0x05,seg[dis_value % 10]);
   03EA 74 0A               938 	mov	a,#0x0A
   03EC C0 E0               939 	push	acc
   03EE E4                  940 	clr	a
   03EF C0 E0               941 	push	acc
   03F1 85 17 82            942 	mov	dpl,_dis_value
   03F4 85 18 83            943 	mov	dph,(_dis_value + 1)
   03F7 12 07 06            944 	lcall	__moduint
   03FA AA 82               945 	mov	r2,dpl
   03FC 15 81               946 	dec	sp
   03FE 15 81               947 	dec	sp
   0400 EA                  948 	mov	a,r2
   0401 24 08               949 	add	a,#_seg
   0403 F8                  950 	mov	r0,a
   0404 86 02               951 	mov	ar2,@r0
   0406 C0 02               952 	push	ar2
   0408 75 82 05            953 	mov	dpl,#0x05
   040B 12 01 63            954 	lcall	_Write7219
   040E 15 81               955 	dec	sp
                            956 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:34: delay_ms(200);
   0410 90 00 C8            957 	mov	dptr,#0x00C8
   0413 12 04 19            958 	lcall	_delay_ms
   0416 02 01 EB            959 	ljmp	00102$
                            960 ;------------------------------------------------------------
                            961 ;Allocation info for local variables in function 'delay_ms'
                            962 ;------------------------------------------------------------
                            963 ;input_ms                  Allocated to registers r2 r3 
                            964 ;cnt1                      Allocated to registers r4 r5 
                            965 ;cnt2                      Allocated to registers r6 
                            966 ;------------------------------------------------------------
                            967 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:38: void delay_ms(UI input_ms)
                            968 ;	-----------------------------------------
                            969 ;	 function delay_ms
                            970 ;	-----------------------------------------
   0419                     971 _delay_ms:
   0419 AA 82               972 	mov	r2,dpl
   041B AB 83               973 	mov	r3,dph
                            974 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:43: for (cnt1 = 0; cnt1 < input_ms; cnt1++)
   041D 7C 00               975 	mov	r4,#0x00
   041F 7D 00               976 	mov	r5,#0x00
   0421                     977 00104$:
   0421 C3                  978 	clr	c
   0422 EC                  979 	mov	a,r4
   0423 9A                  980 	subb	a,r2
   0424 ED                  981 	mov	a,r5
   0425 9B                  982 	subb	a,r3
   0426 50 0B               983 	jnc	00108$
                            984 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:44: for (cnt2 = 0; cnt2 < 120; cnt2++) ;
   0428 7E 78               985 	mov	r6,#0x78
   042A                     986 00103$:
   042A DE FE               987 	djnz	r6,00103$
                            988 ;	C:\Users\user\Desktop\lab6\8051_C~1\lab6\lab6.c:43: for (cnt1 = 0; cnt1 < input_ms; cnt1++)
   042C 0C                  989 	inc	r4
   042D BC 00 F1            990 	cjne	r4,#0x00,00104$
   0430 0D                  991 	inc	r5
   0431 80 EE               992 	sjmp	00104$
   0433                     993 00108$:
   0433 22                  994 	ret
                            995 	.area CSEG    (CODE)
                            996 	.area CONST   (CODE)
                            997 	.area XINIT   (CODE)
                            998 	.area CABS    (ABS,CODE)
