                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Tue Dec 28 09:54:25 2021
                              5 ;--------------------------------------------------------
                              6 	.module Q3MIDE
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _Single_ReadI2C
                             14 	.globl _Single_WriteI2C
                             15 	.globl _I2C_RecvByte
                             16 	.globl _I2C_SendByte
                             17 	.globl _I2C_RecvACK
                             18 	.globl _I2C_SendACK
                             19 	.globl _read_adc3202
                             20 	.globl _SPI_WR
                             21 	.globl _delay_ms
                             22 	.globl _CY
                             23 	.globl _AC
                             24 	.globl _F0
                             25 	.globl _RS1
                             26 	.globl _RS0
                             27 	.globl _OV
                             28 	.globl _F1
                             29 	.globl _P
                             30 	.globl _PS
                             31 	.globl _PT1
                             32 	.globl _PX1
                             33 	.globl _PT0
                             34 	.globl _PX0
                             35 	.globl _RD
                             36 	.globl _WR
                             37 	.globl _T1
                             38 	.globl _T0
                             39 	.globl _INT1
                             40 	.globl _INT0
                             41 	.globl _TXD
                             42 	.globl _RXD
                             43 	.globl _P3_7
                             44 	.globl _P3_6
                             45 	.globl _P3_5
                             46 	.globl _P3_4
                             47 	.globl _P3_3
                             48 	.globl _P3_2
                             49 	.globl _P3_1
                             50 	.globl _P3_0
                             51 	.globl _EA
                             52 	.globl _ES
                             53 	.globl _ET1
                             54 	.globl _EX1
                             55 	.globl _ET0
                             56 	.globl _EX0
                             57 	.globl _P2_7
                             58 	.globl _P2_6
                             59 	.globl _P2_5
                             60 	.globl _P2_4
                             61 	.globl _P2_3
                             62 	.globl _P2_2
                             63 	.globl _P2_1
                             64 	.globl _P2_0
                             65 	.globl _SM0
                             66 	.globl _SM1
                             67 	.globl _SM2
                             68 	.globl _REN
                             69 	.globl _TB8
                             70 	.globl _RB8
                             71 	.globl _TI
                             72 	.globl _RI
                             73 	.globl _P1_7
                             74 	.globl _P1_6
                             75 	.globl _P1_5
                             76 	.globl _P1_4
                             77 	.globl _P1_3
                             78 	.globl _P1_2
                             79 	.globl _P1_1
                             80 	.globl _P1_0
                             81 	.globl _TF1
                             82 	.globl _TR1
                             83 	.globl _TF0
                             84 	.globl _TR0
                             85 	.globl _IE1
                             86 	.globl _IT1
                             87 	.globl _IE0
                             88 	.globl _IT0
                             89 	.globl _P0_7
                             90 	.globl _P0_6
                             91 	.globl _P0_5
                             92 	.globl _P0_4
                             93 	.globl _P0_3
                             94 	.globl _P0_2
                             95 	.globl _P0_1
                             96 	.globl _P0_0
                             97 	.globl _B
                             98 	.globl _ACC
                             99 	.globl _PSW
                            100 	.globl _IP
                            101 	.globl _P3
                            102 	.globl _IE
                            103 	.globl _P2
                            104 	.globl _SBUF
                            105 	.globl _SCON
                            106 	.globl _P1
                            107 	.globl _TH1
                            108 	.globl _TH0
                            109 	.globl _TL1
                            110 	.globl _TL0
                            111 	.globl _TMOD
                            112 	.globl _TCON
                            113 	.globl _PCON
                            114 	.globl _DPH
                            115 	.globl _DPL
                            116 	.globl _SP
                            117 	.globl _P0
                            118 	.globl _dis
                            119 	.globl _adc
                            120 	.globl _tmpc
                            121 	.globl __addr
                            122 	.globl _SSD_CODE
                            123 	.globl _delay_5
                            124 	.globl _BitExtract
                            125 	.globl _SerialDIN
                            126 	.globl _SSD_Number
                            127 	.globl _SSD_Show
                            128 	.globl _SSD_Show_Scroll
                            129 	.globl _SSD_INIT
                            130 	.globl _I2C_Start
                            131 	.globl _I2C_Stop
                            132 	.globl _delay_i2c
                            133 	.globl _readObjectTemp
                            134 	.globl _readAmbientTemp
                            135 	.globl _readTemp
                            136 ;--------------------------------------------------------
                            137 ; special function registers
                            138 ;--------------------------------------------------------
                            139 	.area RSEG    (ABS,DATA)
   0000                     140 	.org 0x0000
                    0080    141 _P0	=	0x0080
                    0081    142 _SP	=	0x0081
                    0082    143 _DPL	=	0x0082
                    0083    144 _DPH	=	0x0083
                    0087    145 _PCON	=	0x0087
                    0088    146 _TCON	=	0x0088
                    0089    147 _TMOD	=	0x0089
                    008A    148 _TL0	=	0x008a
                    008B    149 _TL1	=	0x008b
                    008C    150 _TH0	=	0x008c
                    008D    151 _TH1	=	0x008d
                    0090    152 _P1	=	0x0090
                    0098    153 _SCON	=	0x0098
                    0099    154 _SBUF	=	0x0099
                    00A0    155 _P2	=	0x00a0
                    00A8    156 _IE	=	0x00a8
                    00B0    157 _P3	=	0x00b0
                    00B8    158 _IP	=	0x00b8
                    00D0    159 _PSW	=	0x00d0
                    00E0    160 _ACC	=	0x00e0
                    00F0    161 _B	=	0x00f0
                            162 ;--------------------------------------------------------
                            163 ; special function bits
                            164 ;--------------------------------------------------------
                            165 	.area RSEG    (ABS,DATA)
   0000                     166 	.org 0x0000
                    0080    167 _P0_0	=	0x0080
                    0081    168 _P0_1	=	0x0081
                    0082    169 _P0_2	=	0x0082
                    0083    170 _P0_3	=	0x0083
                    0084    171 _P0_4	=	0x0084
                    0085    172 _P0_5	=	0x0085
                    0086    173 _P0_6	=	0x0086
                    0087    174 _P0_7	=	0x0087
                    0088    175 _IT0	=	0x0088
                    0089    176 _IE0	=	0x0089
                    008A    177 _IT1	=	0x008a
                    008B    178 _IE1	=	0x008b
                    008C    179 _TR0	=	0x008c
                    008D    180 _TF0	=	0x008d
                    008E    181 _TR1	=	0x008e
                    008F    182 _TF1	=	0x008f
                    0090    183 _P1_0	=	0x0090
                    0091    184 _P1_1	=	0x0091
                    0092    185 _P1_2	=	0x0092
                    0093    186 _P1_3	=	0x0093
                    0094    187 _P1_4	=	0x0094
                    0095    188 _P1_5	=	0x0095
                    0096    189 _P1_6	=	0x0096
                    0097    190 _P1_7	=	0x0097
                    0098    191 _RI	=	0x0098
                    0099    192 _TI	=	0x0099
                    009A    193 _RB8	=	0x009a
                    009B    194 _TB8	=	0x009b
                    009C    195 _REN	=	0x009c
                    009D    196 _SM2	=	0x009d
                    009E    197 _SM1	=	0x009e
                    009F    198 _SM0	=	0x009f
                    00A0    199 _P2_0	=	0x00a0
                    00A1    200 _P2_1	=	0x00a1
                    00A2    201 _P2_2	=	0x00a2
                    00A3    202 _P2_3	=	0x00a3
                    00A4    203 _P2_4	=	0x00a4
                    00A5    204 _P2_5	=	0x00a5
                    00A6    205 _P2_6	=	0x00a6
                    00A7    206 _P2_7	=	0x00a7
                    00A8    207 _EX0	=	0x00a8
                    00A9    208 _ET0	=	0x00a9
                    00AA    209 _EX1	=	0x00aa
                    00AB    210 _ET1	=	0x00ab
                    00AC    211 _ES	=	0x00ac
                    00AF    212 _EA	=	0x00af
                    00B0    213 _P3_0	=	0x00b0
                    00B1    214 _P3_1	=	0x00b1
                    00B2    215 _P3_2	=	0x00b2
                    00B3    216 _P3_3	=	0x00b3
                    00B4    217 _P3_4	=	0x00b4
                    00B5    218 _P3_5	=	0x00b5
                    00B6    219 _P3_6	=	0x00b6
                    00B7    220 _P3_7	=	0x00b7
                    00B0    221 _RXD	=	0x00b0
                    00B1    222 _TXD	=	0x00b1
                    00B2    223 _INT0	=	0x00b2
                    00B3    224 _INT1	=	0x00b3
                    00B4    225 _T0	=	0x00b4
                    00B5    226 _T1	=	0x00b5
                    00B6    227 _WR	=	0x00b6
                    00B7    228 _RD	=	0x00b7
                    00B8    229 _PX0	=	0x00b8
                    00B9    230 _PT0	=	0x00b9
                    00BA    231 _PX1	=	0x00ba
                    00BB    232 _PT1	=	0x00bb
                    00BC    233 _PS	=	0x00bc
                    00D0    234 _P	=	0x00d0
                    00D1    235 _F1	=	0x00d1
                    00D2    236 _OV	=	0x00d2
                    00D3    237 _RS0	=	0x00d3
                    00D4    238 _RS1	=	0x00d4
                    00D5    239 _F0	=	0x00d5
                    00D6    240 _AC	=	0x00d6
                    00D7    241 _CY	=	0x00d7
                            242 ;--------------------------------------------------------
                            243 ; overlayable register banks
                            244 ;--------------------------------------------------------
                            245 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     246 	.ds 8
                            247 ;--------------------------------------------------------
                            248 ; overlayable bit register bank
                            249 ;--------------------------------------------------------
                            250 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     251 bits:
   0020                     252 	.ds 1
                    8000    253 	b0 = bits[0]
                    8100    254 	b1 = bits[1]
                    8200    255 	b2 = bits[2]
                    8300    256 	b3 = bits[3]
                    8400    257 	b4 = bits[4]
                    8500    258 	b5 = bits[5]
                    8600    259 	b6 = bits[6]
                    8700    260 	b7 = bits[7]
                            261 ;--------------------------------------------------------
                            262 ; internal ram data
                            263 ;--------------------------------------------------------
                            264 	.area DSEG    (DATA)
   0008                     265 _SSD_CODE::
   0008                     266 	.ds 16
   0018                     267 _SSD_Show_Scroll_shift_1_1:
   0018                     268 	.ds 1
   0019                     269 __addr::
   0019                     270 	.ds 1
   001A                     271 _tmpc::
   001A                     272 	.ds 2
   001C                     273 _adc::
   001C                     274 	.ds 2
   001E                     275 _dis::
   001E                     276 	.ds 2
                            277 ;--------------------------------------------------------
                            278 ; overlayable items in internal ram 
                            279 ;--------------------------------------------------------
                            280 	.area OSEG    (OVR,DATA)
                            281 ;--------------------------------------------------------
                            282 ; Stack segment in internal ram 
                            283 ;--------------------------------------------------------
                            284 	.area	SSEG	(DATA)
   0022                     285 __start__stack:
   0022                     286 	.ds	1
                            287 
                            288 ;--------------------------------------------------------
                            289 ; indirectly addressable internal ram data
                            290 ;--------------------------------------------------------
                            291 	.area ISEG    (DATA)
                            292 ;--------------------------------------------------------
                            293 ; absolute internal ram data
                            294 ;--------------------------------------------------------
                            295 	.area IABS    (ABS,DATA)
                            296 	.area IABS    (ABS,DATA)
                            297 ;--------------------------------------------------------
                            298 ; bit data
                            299 ;--------------------------------------------------------
                            300 	.area BSEG    (BIT)
                            301 ;--------------------------------------------------------
                            302 ; paged external ram data
                            303 ;--------------------------------------------------------
                            304 	.area PSEG    (PAG,XDATA)
                            305 ;--------------------------------------------------------
                            306 ; external ram data
                            307 ;--------------------------------------------------------
                            308 	.area XSEG    (XDATA)
                            309 ;--------------------------------------------------------
                            310 ; absolute external ram data
                            311 ;--------------------------------------------------------
                            312 	.area XABS    (ABS,XDATA)
                            313 ;--------------------------------------------------------
                            314 ; external initialized ram data
                            315 ;--------------------------------------------------------
                            316 	.area XISEG   (XDATA)
                            317 	.area HOME    (CODE)
                            318 	.area GSINIT0 (CODE)
                            319 	.area GSINIT1 (CODE)
                            320 	.area GSINIT2 (CODE)
                            321 	.area GSINIT3 (CODE)
                            322 	.area GSINIT4 (CODE)
                            323 	.area GSINIT5 (CODE)
                            324 	.area GSINIT  (CODE)
                            325 	.area GSFINAL (CODE)
                            326 	.area CSEG    (CODE)
                            327 ;--------------------------------------------------------
                            328 ; interrupt vector 
                            329 ;--------------------------------------------------------
                            330 	.area HOME    (CODE)
   0000                     331 __interrupt_vect:
   0000 02 00 08            332 	ljmp	__sdcc_gsinit_startup
                            333 ;--------------------------------------------------------
                            334 ; global & static initialisations
                            335 ;--------------------------------------------------------
                            336 	.area HOME    (CODE)
                            337 	.area GSINIT  (CODE)
                            338 	.area GSFINAL (CODE)
                            339 	.area GSINIT  (CODE)
                            340 	.globl __sdcc_gsinit_startup
                            341 	.globl __sdcc_program_startup
                            342 	.globl __start__stack
                            343 	.globl __mcs51_genXINIT
                            344 	.globl __mcs51_genXRAMCLEAR
                            345 	.globl __mcs51_genRAMCLEAR
                            346 ;------------------------------------------------------------
                            347 ;Allocation info for local variables in function 'SSD_Show_Scroll'
                            348 ;------------------------------------------------------------
                            349 ;num                       Allocated to stack - offset 1
                            350 ;i                         Allocated to registers r5 r6 
                            351 ;shift                     Allocated with name '_SSD_Show_Scroll_shift_1_1'
                            352 ;------------------------------------------------------------
                            353 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:155: static UC shift = 0;
   0061 75 18 00            354 	mov	_SSD_Show_Scroll_shift_1_1,#0x00
                            355 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:22: UC SSD_CODE[] = {
   0064 75 08 7E            356 	mov	_SSD_CODE,#0x7E
   0067 75 09 30            357 	mov	(_SSD_CODE + 0x0001),#0x30
   006A 75 0A 6D            358 	mov	(_SSD_CODE + 0x0002),#0x6D
   006D 75 0B 79            359 	mov	(_SSD_CODE + 0x0003),#0x79
   0070 75 0C 33            360 	mov	(_SSD_CODE + 0x0004),#0x33
   0073 75 0D 5B            361 	mov	(_SSD_CODE + 0x0005),#0x5B
   0076 75 0E 5F            362 	mov	(_SSD_CODE + 0x0006),#0x5F
   0079 75 0F 70            363 	mov	(_SSD_CODE + 0x0007),#0x70
   007C 75 10 7F            364 	mov	(_SSD_CODE + 0x0008),#0x7F
   007F 75 11 7B            365 	mov	(_SSD_CODE + 0x0009),#0x7B
   0082 75 12 77            366 	mov	(_SSD_CODE + 0x000a),#0x77
   0085 75 13 1F            367 	mov	(_SSD_CODE + 0x000b),#0x1F
   0088 75 14 4E            368 	mov	(_SSD_CODE + 0x000c),#0x4E
   008B 75 15 3D            369 	mov	(_SSD_CODE + 0x000d),#0x3D
   008E 75 16 4F            370 	mov	(_SSD_CODE + 0x000e),#0x4F
   0091 75 17 47            371 	mov	(_SSD_CODE + 0x000f),#0x47
                            372 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:16: uint8_t  _addr = MLX90614_ADDRESS << 1;    // 0x5a --> 0xb4
   0094 75 19 B4            373 	mov	__addr,#0xB4
                            374 	.area GSFINAL (CODE)
   0097 02 00 03            375 	ljmp	__sdcc_program_startup
                            376 ;--------------------------------------------------------
                            377 ; Home
                            378 ;--------------------------------------------------------
                            379 	.area HOME    (CODE)
                            380 	.area HOME    (CODE)
   0003                     381 __sdcc_program_startup:
   0003 12 06 39            382 	lcall	_main
                            383 ;	return from main will lock up
   0006 80 FE               384 	sjmp .
                            385 ;--------------------------------------------------------
                            386 ; code
                            387 ;--------------------------------------------------------
                            388 	.area CSEG    (CODE)
                            389 ;------------------------------------------------------------
                            390 ;Allocation info for local variables in function 'delay_ms'
                            391 ;------------------------------------------------------------
                            392 ;input_ms                  Allocated to registers r2 r3 
                            393 ;cnt1                      Allocated to registers r4 r5 
                            394 ;cnt2                      Allocated to registers r6 
                            395 ;------------------------------------------------------------
                            396 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:4: void delay_ms(unsigned int input_ms)
                            397 ;	-----------------------------------------
                            398 ;	 function delay_ms
                            399 ;	-----------------------------------------
   009A                     400 _delay_ms:
                    0002    401 	ar2 = 0x02
                    0003    402 	ar3 = 0x03
                    0004    403 	ar4 = 0x04
                    0005    404 	ar5 = 0x05
                    0006    405 	ar6 = 0x06
                    0007    406 	ar7 = 0x07
                    0000    407 	ar0 = 0x00
                    0001    408 	ar1 = 0x01
   009A AA 82               409 	mov	r2,dpl
   009C AB 83               410 	mov	r3,dph
                            411 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:9: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
   009E 7C 00               412 	mov	r4,#0x00
   00A0 7D 00               413 	mov	r5,#0x00
   00A2                     414 00104$:
   00A2 C3                  415 	clr	c
   00A3 EC                  416 	mov	a,r4
   00A4 9A                  417 	subb	a,r2
   00A5 ED                  418 	mov	a,r5
   00A6 9B                  419 	subb	a,r3
   00A7 50 0B               420 	jnc	00108$
                            421 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:11: for(cnt2 = 0; cnt2 < 90;cnt2 ++);
   00A9 7E 5A               422 	mov	r6,#0x5A
   00AB                     423 00103$:
   00AB DE FE               424 	djnz	r6,00103$
                            425 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:9: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
   00AD 0C                  426 	inc	r4
   00AE BC 00 F1            427 	cjne	r4,#0x00,00104$
   00B1 0D                  428 	inc	r5
   00B2 80 EE               429 	sjmp	00104$
   00B4                     430 00108$:
   00B4 22                  431 	ret
                            432 ;------------------------------------------------------------
                            433 ;Allocation info for local variables in function 'SPI_WR'
                            434 ;------------------------------------------------------------
                            435 ;data_in                   Allocated to registers r2 
                            436 ;data_out                  Allocated to registers r3 
                            437 ;i                         Allocated to registers r4 
                            438 ;------------------------------------------------------------
                            439 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:51: char SPI_WR(char data_in)
                            440 ;	-----------------------------------------
                            441 ;	 function SPI_WR
                            442 ;	-----------------------------------------
   00B5                     443 _SPI_WR:
   00B5 AA 82               444 	mov	r2,dpl
                            445 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:53: char data_out = 0;
   00B7 7B 00               446 	mov	r3,#0x00
                            447 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:55: for(i=0;i<8;i++)  // 8 bit transaction
   00B9 7C 00               448 	mov	r4,#0x00
   00BB                     449 00103$:
   00BB BC 08 00            450 	cjne	r4,#0x08,00113$
   00BE                     451 00113$:
   00BE 50 38               452 	jnc	00106$
                            453 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:57: data_out <<= 1;
   00C0 EB                  454 	mov	a,r3
   00C1 2B                  455 	add	a,r3
   00C2 FB                  456 	mov	r3,a
                            457 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:59: CLK = 0;
   00C3 C2 A0               458 	clr	_P2_0
                            459 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:60: delay_5();
   00C5 C0 02               460 	push	ar2
   00C7 C0 03               461 	push	ar3
   00C9 C0 04               462 	push	ar4
   00CB 12 01 4B            463 	lcall	_delay_5
   00CE D0 04               464 	pop	ar4
   00D0 D0 03               465 	pop	ar3
   00D2 D0 02               466 	pop	ar2
                            467 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:61: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
   00D4 EA                  468 	mov	a,r2
   00D5 33                  469 	rlc	a
   00D6 92 A1               470 	mov	_P2_1,c
                            471 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:62: delay_5();
   00D8 C0 02               472 	push	ar2
   00DA C0 03               473 	push	ar3
   00DC C0 04               474 	push	ar4
   00DE 12 01 4B            475 	lcall	_delay_5
                            476 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:63: CLK = 1;
   00E1 D2 A0               477 	setb	_P2_0
                            478 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:64: delay_5();
   00E3 12 01 4B            479 	lcall	_delay_5
   00E6 D0 04               480 	pop	ar4
   00E8 D0 03               481 	pop	ar3
   00EA D0 02               482 	pop	ar2
                            483 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:66: if(DOUT == 1)   // Read DOUT
   00EC 30 A2 03            484 	jnb	_P2_2,00102$
                            485 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:67: data_out = (data_out | 0x01);   // Store into data_out
   00EF 43 03 01            486 	orl	ar3,#0x01
   00F2                     487 00102$:
                            488 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:68: data_in <<= 1;
   00F2 EA                  489 	mov	a,r2
   00F3 2A                  490 	add	a,r2
   00F4 FA                  491 	mov	r2,a
                            492 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:55: for(i=0;i<8;i++)  // 8 bit transaction
   00F5 0C                  493 	inc	r4
   00F6 80 C3               494 	sjmp	00103$
   00F8                     495 00106$:
                            496 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:70: return data_out;
   00F8 8B 82               497 	mov	dpl,r3
   00FA 22                  498 	ret
                            499 ;------------------------------------------------------------
                            500 ;Allocation info for local variables in function 'read_adc3202'
                            501 ;------------------------------------------------------------
                            502 ;channel                   Allocated to registers r2 
                            503 ;data_buff                 Allocated to registers r3 r4 
                            504 ;spi_buff                  Allocated to registers r2 
                            505 ;------------------------------------------------------------
                            506 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:73: unsigned int read_adc3202(unsigned char channel) {
                            507 ;	-----------------------------------------
                            508 ;	 function read_adc3202
                            509 ;	-----------------------------------------
   00FB                     510 _read_adc3202:
   00FB AA 82               511 	mov	r2,dpl
                            512 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:78: LOAD = 0;
   00FD C2 A3               513 	clr	_P2_3
                            514 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:81: SPI_WR(0x01);               // First byte transaction includes start bit
   00FF 75 82 01            515 	mov	dpl,#0x01
   0102 C0 02               516 	push	ar2
   0104 12 00 B5            517 	lcall	_SPI_WR
   0107 D0 02               518 	pop	ar2
                            519 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:82: if(channel == 1)            // Channel 1: 11100000, to IR sensor
   0109 BA 01 0A            520 	cjne	r2,#0x01,00102$
                            521 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:83: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
   010C 75 82 E0            522 	mov	dpl,#0xE0
   010F 12 00 B5            523 	lcall	_SPI_WR
   0112 AA 82               524 	mov	r2,dpl
   0114 80 0A               525 	sjmp	00103$
   0116                     526 00102$:
                            527 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:85: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
   0116 75 82 A0            528 	mov	dpl,#0xA0
   0119 12 00 B5            529 	lcall	_SPI_WR
   011C AB 82               530 	mov	r3,dpl
   011E 8B 02               531 	mov	ar2,r3
   0120                     532 00103$:
                            533 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:86: data_buff = spi_buff & 0x0f;
   0120 74 0F               534 	mov	a,#0x0F
   0122 5A                  535 	anl	a,r2
                            536 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:87: data_buff <<= 8;            // Store higher 4 bit ADC output
   0123 FC                  537 	mov	r4,a
   0124 7B 00               538 	mov	r3,#0x00
                            539 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:89: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
   0126 75 82 00            540 	mov	dpl,#0x00
   0129 C0 03               541 	push	ar3
   012B C0 04               542 	push	ar4
   012D 12 00 B5            543 	lcall	_SPI_WR
   0130 AD 82               544 	mov	r5,dpl
   0132 D0 04               545 	pop	ar4
   0134 D0 03               546 	pop	ar3
   0136 8D 02               547 	mov	ar2,r5
                            548 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:90: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
   0138 7D 00               549 	mov	r5,#0x00
   013A EA                  550 	mov	a,r2
   013B 42 03               551 	orl	ar3,a
   013D ED                  552 	mov	a,r5
   013E 42 04               553 	orl	ar4,a
                            554 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:92: LOAD = 1;  
   0140 D2 A3               555 	setb	_P2_3
                            556 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:93: CLK = 0;
   0142 C2 A0               557 	clr	_P2_0
                            558 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:94: DIN = 0;
   0144 C2 A1               559 	clr	_P2_1
                            560 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:96: return data_buff;
   0146 8B 82               561 	mov	dpl,r3
   0148 8C 83               562 	mov	dph,r4
   014A 22                  563 	ret
                            564 ;------------------------------------------------------------
                            565 ;Allocation info for local variables in function 'delay_5'
                            566 ;------------------------------------------------------------
                            567 ;i                         Allocated to registers r2 
                            568 ;------------------------------------------------------------
                            569 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:99: void delay_5(void)
                            570 ;	-----------------------------------------
                            571 ;	 function delay_5
                            572 ;	-----------------------------------------
   014B                     573 _delay_5:
                            574 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:102: for(i = 0; i < 5; i ++);
   014B 7A 05               575 	mov	r2,#0x05
   014D                     576 00103$:
   014D DA FE               577 	djnz	r2,00103$
   014F 22                  578 	ret
                            579 ;------------------------------------------------------------
                            580 ;Allocation info for local variables in function 'BitExtract'
                            581 ;------------------------------------------------------------
                            582 ;bits                      Allocated to registers r2 
                            583 ;i                         Allocated to registers r3 
                            584 ;------------------------------------------------------------
                            585 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:107: void BitExtract(UC bits)
                            586 ;	-----------------------------------------
                            587 ;	 function BitExtract
                            588 ;	-----------------------------------------
   0150                     589 _BitExtract:
   0150 AA 82               590 	mov	r2,dpl
                            591 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:111: for (i = 0; i < 8; i++) {
   0152 7B 00               592 	mov	r3,#0x00
   0154                     593 00101$:
   0154 BB 08 00            594 	cjne	r3,#0x08,00110$
   0157                     595 00110$:
   0157 50 0C               596 	jnc	00105$
                            597 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:112: CLK = 0;
   0159 C2 A0               598 	clr	_P2_0
                            599 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:113: DIN = (bits & 0x80);
                            600 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:114: bits <<= 1;
   015B EA                  601 	mov	a,r2
   015C 2A                  602 	add	a,r2
   015D 92 A1               603 	mov	_P2_1,c
   015F FA                  604 	mov	r2,a
                            605 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:115: CLK = 1;
   0160 D2 A0               606 	setb	_P2_0
                            607 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:111: for (i = 0; i < 8; i++) {
   0162 0B                  608 	inc	r3
   0163 80 EF               609 	sjmp	00101$
   0165                     610 00105$:
   0165 22                  611 	ret
                            612 ;------------------------------------------------------------
                            613 ;Allocation info for local variables in function 'SerialDIN'
                            614 ;------------------------------------------------------------
                            615 ;dat                       Allocated to stack - offset -3
                            616 ;address                   Allocated to registers r2 
                            617 ;------------------------------------------------------------
                            618 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:119: void SerialDIN(UC address, UC dat)
                            619 ;	-----------------------------------------
                            620 ;	 function SerialDIN
                            621 ;	-----------------------------------------
   0166                     622 _SerialDIN:
   0166 C0 21               623 	push	_bp
   0168 85 81 21            624 	mov	_bp,sp
   016B AA 82               625 	mov	r2,dpl
                            626 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:121: LOAD_MAX = 0;
   016D C2 A4               627 	clr	_P2_4
                            628 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:122: BitExtract(address);
   016F 8A 82               629 	mov	dpl,r2
   0171 12 01 50            630 	lcall	_BitExtract
                            631 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:123: BitExtract(dat);
   0174 E5 21               632 	mov	a,_bp
   0176 24 FD               633 	add	a,#0xfd
   0178 F8                  634 	mov	r0,a
   0179 86 82               635 	mov	dpl,@r0
   017B 12 01 50            636 	lcall	_BitExtract
                            637 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:124: LOAD_MAX = 1;
   017E D2 A4               638 	setb	_P2_4
   0180 D0 21               639 	pop	_bp
   0182 22                  640 	ret
                            641 ;------------------------------------------------------------
                            642 ;Allocation info for local variables in function 'SSD_Number'
                            643 ;------------------------------------------------------------
                            644 ;num                       Allocated to stack - offset 1
                            645 ;i                         Allocated to registers r4 r5 
                            646 ;n                         Allocated to registers r6 r7 
                            647 ;------------------------------------------------------------
                            648 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:127: void SSD_Number(long num)
                            649 ;	-----------------------------------------
                            650 ;	 function SSD_Number
                            651 ;	-----------------------------------------
   0183                     652 _SSD_Number:
   0183 C0 21               653 	push	_bp
   0185 85 81 21            654 	mov	_bp,sp
   0188 C0 82               655 	push	dpl
   018A C0 83               656 	push	dph
   018C C0 F0               657 	push	b
   018E C0 E0               658 	push	acc
                            659 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:131: n = num > 0 ? num : num * -1;
   0190 A8 21               660 	mov	r0,_bp
   0192 08                  661 	inc	r0
   0193 C3                  662 	clr	c
   0194 E4                  663 	clr	a
   0195 96                  664 	subb	a,@r0
   0196 E4                  665 	clr	a
   0197 08                  666 	inc	r0
   0198 96                  667 	subb	a,@r0
   0199 E4                  668 	clr	a
   019A 08                  669 	inc	r0
   019B 96                  670 	subb	a,@r0
   019C 74 80               671 	mov	a,#(0x00 ^ 0x80)
   019E 08                  672 	inc	r0
   019F 86 F0               673 	mov	b,@r0
   01A1 63 F0 80            674 	xrl	b,#0x80
   01A4 95 F0               675 	subb	a,b
   01A6 50 10               676 	jnc	00115$
   01A8 A8 21               677 	mov	r0,_bp
   01AA 08                  678 	inc	r0
   01AB 86 06               679 	mov	ar6,@r0
   01AD 08                  680 	inc	r0
   01AE 86 07               681 	mov	ar7,@r0
   01B0 08                  682 	inc	r0
   01B1 86 02               683 	mov	ar2,@r0
   01B3 08                  684 	inc	r0
   01B4 86 03               685 	mov	ar3,@r0
   01B6 80 13               686 	sjmp	00116$
   01B8                     687 00115$:
   01B8 A8 21               688 	mov	r0,_bp
   01BA 08                  689 	inc	r0
   01BB C3                  690 	clr	c
   01BC E4                  691 	clr	a
   01BD 96                  692 	subb	a,@r0
   01BE FE                  693 	mov	r6,a
   01BF 08                  694 	inc	r0
   01C0 E4                  695 	clr	a
   01C1 96                  696 	subb	a,@r0
   01C2 FF                  697 	mov	r7,a
   01C3 08                  698 	inc	r0
   01C4 E4                  699 	clr	a
   01C5 96                  700 	subb	a,@r0
   01C6 FA                  701 	mov	r2,a
   01C7 08                  702 	inc	r0
   01C8 E4                  703 	clr	a
   01C9 96                  704 	subb	a,@r0
   01CA FB                  705 	mov	r3,a
   01CB                     706 00116$:
                            707 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:133: for (i = 1; i <= 8 && n; i++) {
   01CB 7A 01               708 	mov	r2,#0x01
   01CD 7B 00               709 	mov	r3,#0x00
   01CF                     710 00105$:
   01CF C3                  711 	clr	c
   01D0 74 08               712 	mov	a,#0x08
   01D2 9A                  713 	subb	a,r2
   01D3 E4                  714 	clr	a
   01D4 9B                  715 	subb	a,r3
   01D5 40 6A               716 	jc	00125$
   01D7 EE                  717 	mov	a,r6
   01D8 4F                  718 	orl	a,r7
   01D9 60 66               719 	jz	00125$
                            720 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:134: SerialDIN(i, SSD_CODE[n % 10]);
   01DB C0 02               721 	push	ar2
   01DD C0 03               722 	push	ar3
   01DF C0 06               723 	push	ar6
   01E1 C0 07               724 	push	ar7
   01E3 74 0A               725 	mov	a,#0x0A
   01E5 C0 E0               726 	push	acc
   01E7 E4                  727 	clr	a
   01E8 C0 E0               728 	push	acc
   01EA 8E 82               729 	mov	dpl,r6
   01EC 8F 83               730 	mov	dph,r7
   01EE 12 0A 61            731 	lcall	__moduint
   01F1 AC 82               732 	mov	r4,dpl
   01F3 15 81               733 	dec	sp
   01F5 15 81               734 	dec	sp
   01F7 D0 07               735 	pop	ar7
   01F9 D0 06               736 	pop	ar6
   01FB D0 03               737 	pop	ar3
   01FD D0 02               738 	pop	ar2
   01FF EC                  739 	mov	a,r4
   0200 24 08               740 	add	a,#_SSD_CODE
   0202 F8                  741 	mov	r0,a
   0203 86 04               742 	mov	ar4,@r0
   0205 8A 05               743 	mov	ar5,r2
   0207 C0 02               744 	push	ar2
   0209 C0 03               745 	push	ar3
   020B C0 06               746 	push	ar6
   020D C0 07               747 	push	ar7
   020F C0 04               748 	push	ar4
   0211 8D 82               749 	mov	dpl,r5
   0213 12 01 66            750 	lcall	_SerialDIN
   0216 15 81               751 	dec	sp
   0218 D0 07               752 	pop	ar7
   021A D0 06               753 	pop	ar6
                            754 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:135: n /= 10;
   021C 74 0A               755 	mov	a,#0x0A
   021E C0 E0               756 	push	acc
   0220 E4                  757 	clr	a
   0221 C0 E0               758 	push	acc
   0223 8E 82               759 	mov	dpl,r6
   0225 8F 83               760 	mov	dph,r7
   0227 12 07 DB            761 	lcall	__divuint
   022A AC 82               762 	mov	r4,dpl
   022C AD 83               763 	mov	r5,dph
   022E 15 81               764 	dec	sp
   0230 15 81               765 	dec	sp
   0232 D0 03               766 	pop	ar3
   0234 D0 02               767 	pop	ar2
   0236 8C 06               768 	mov	ar6,r4
   0238 8D 07               769 	mov	ar7,r5
                            770 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:133: for (i = 1; i <= 8 && n; i++) {
   023A 0A                  771 	inc	r2
   023B BA 00 91            772 	cjne	r2,#0x00,00105$
   023E 0B                  773 	inc	r3
   023F 80 8E               774 	sjmp	00105$
   0241                     775 00125$:
   0241 8A 04               776 	mov	ar4,r2
   0243 8B 05               777 	mov	ar5,r3
                            778 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:137: if (num < 10 && i <= 8) {
   0245 A8 21               779 	mov	r0,_bp
   0247 08                  780 	inc	r0
   0248 C3                  781 	clr	c
   0249 E6                  782 	mov	a,@r0
   024A 94 0A               783 	subb	a,#0x0A
   024C 08                  784 	inc	r0
   024D E6                  785 	mov	a,@r0
   024E 94 00               786 	subb	a,#0x00
   0250 08                  787 	inc	r0
   0251 E6                  788 	mov	a,@r0
   0252 94 00               789 	subb	a,#0x00
   0254 08                  790 	inc	r0
   0255 E6                  791 	mov	a,@r0
   0256 64 80               792 	xrl	a,#0x80
   0258 94 80               793 	subb	a,#0x80
   025A 50 22               794 	jnc	00102$
   025C C3                  795 	clr	c
   025D 74 08               796 	mov	a,#0x08
   025F 9A                  797 	subb	a,r2
   0260 E4                  798 	clr	a
   0261 9B                  799 	subb	a,r3
   0262 40 1A               800 	jc	00102$
                            801 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:138: SerialDIN(i++, 0x01);
   0264 74 01               802 	mov	a,#0x01
   0266 2A                  803 	add	a,r2
   0267 FC                  804 	mov	r4,a
   0268 E4                  805 	clr	a
   0269 3B                  806 	addc	a,r3
   026A FD                  807 	mov	r5,a
   026B C0 04               808 	push	ar4
   026D C0 05               809 	push	ar5
   026F 74 01               810 	mov	a,#0x01
   0271 C0 E0               811 	push	acc
   0273 8A 82               812 	mov	dpl,r2
   0275 12 01 66            813 	lcall	_SerialDIN
   0278 15 81               814 	dec	sp
   027A D0 05               815 	pop	ar5
   027C D0 04               816 	pop	ar4
   027E                     817 00102$:
                            818 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:140: for (i++; i <= 8; i++)
   027E 0C                  819 	inc	r4
   027F BC 00 01            820 	cjne	r4,#0x00,00133$
   0282 0D                  821 	inc	r5
   0283                     822 00133$:
   0283 8C 02               823 	mov	ar2,r4
   0285 8D 03               824 	mov	ar3,r5
   0287                     825 00109$:
   0287 C3                  826 	clr	c
   0288 74 08               827 	mov	a,#0x08
   028A 9A                  828 	subb	a,r2
   028B E4                  829 	clr	a
   028C 9B                  830 	subb	a,r3
   028D 40 1B               831 	jc	00113$
                            832 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:141: SerialDIN(i, 0);
   028F 8A 04               833 	mov	ar4,r2
   0291 C0 02               834 	push	ar2
   0293 C0 03               835 	push	ar3
   0295 E4                  836 	clr	a
   0296 C0 E0               837 	push	acc
   0298 8C 82               838 	mov	dpl,r4
   029A 12 01 66            839 	lcall	_SerialDIN
   029D 15 81               840 	dec	sp
   029F D0 03               841 	pop	ar3
   02A1 D0 02               842 	pop	ar2
                            843 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:140: for (i++; i <= 8; i++)
   02A3 0A                  844 	inc	r2
   02A4 BA 00 E0            845 	cjne	r2,#0x00,00109$
   02A7 0B                  846 	inc	r3
   02A8 80 DD               847 	sjmp	00109$
   02AA                     848 00113$:
   02AA 85 21 81            849 	mov	sp,_bp
   02AD D0 21               850 	pop	_bp
   02AF 22                  851 	ret
                            852 ;------------------------------------------------------------
                            853 ;Allocation info for local variables in function 'SSD_Show'
                            854 ;------------------------------------------------------------
                            855 ;num                       Allocated to stack - offset 1
                            856 ;i                         Allocated to registers r5 r6 
                            857 ;------------------------------------------------------------
                            858 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:144: void SSD_Show(UC* num)
                            859 ;	-----------------------------------------
                            860 ;	 function SSD_Show
                            861 ;	-----------------------------------------
   02B0                     862 _SSD_Show:
   02B0 C0 21               863 	push	_bp
   02B2 85 81 21            864 	mov	_bp,sp
   02B5 C0 82               865 	push	dpl
   02B7 C0 83               866 	push	dph
   02B9 C0 F0               867 	push	b
                            868 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:148: for (i = 1; i <= 8; i++)
   02BB 7D 01               869 	mov	r5,#0x01
   02BD 7E 00               870 	mov	r6,#0x00
   02BF                     871 00101$:
   02BF C3                  872 	clr	c
   02C0 74 08               873 	mov	a,#0x08
   02C2 9D                  874 	subb	a,r5
   02C3 E4                  875 	clr	a
   02C4 9E                  876 	subb	a,r6
   02C5 40 3D               877 	jc	00105$
                            878 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:149: SerialDIN(i, SSD_CODE[num[8 - i]]);
   02C7 74 08               879 	mov	a,#0x08
   02C9 C3                  880 	clr	c
   02CA 9D                  881 	subb	a,r5
   02CB FF                  882 	mov	r7,a
   02CC E4                  883 	clr	a
   02CD 9E                  884 	subb	a,r6
   02CE FA                  885 	mov	r2,a
   02CF A8 21               886 	mov	r0,_bp
   02D1 08                  887 	inc	r0
   02D2 EF                  888 	mov	a,r7
   02D3 26                  889 	add	a,@r0
   02D4 FF                  890 	mov	r7,a
   02D5 EA                  891 	mov	a,r2
   02D6 08                  892 	inc	r0
   02D7 36                  893 	addc	a,@r0
   02D8 FA                  894 	mov	r2,a
   02D9 08                  895 	inc	r0
   02DA 86 03               896 	mov	ar3,@r0
   02DC 8F 82               897 	mov	dpl,r7
   02DE 8A 83               898 	mov	dph,r2
   02E0 8B F0               899 	mov	b,r3
   02E2 12 0A 08            900 	lcall	__gptrget
   02E5 24 08               901 	add	a,#_SSD_CODE
   02E7 F8                  902 	mov	r0,a
   02E8 86 02               903 	mov	ar2,@r0
   02EA 8D 03               904 	mov	ar3,r5
   02EC C0 05               905 	push	ar5
   02EE C0 06               906 	push	ar6
   02F0 C0 02               907 	push	ar2
   02F2 8B 82               908 	mov	dpl,r3
   02F4 12 01 66            909 	lcall	_SerialDIN
   02F7 15 81               910 	dec	sp
   02F9 D0 06               911 	pop	ar6
   02FB D0 05               912 	pop	ar5
                            913 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:148: for (i = 1; i <= 8; i++)
   02FD 0D                  914 	inc	r5
   02FE BD 00 BE            915 	cjne	r5,#0x00,00101$
   0301 0E                  916 	inc	r6
   0302 80 BB               917 	sjmp	00101$
   0304                     918 00105$:
   0304 85 21 81            919 	mov	sp,_bp
   0307 D0 21               920 	pop	_bp
   0309 22                  921 	ret
                            922 ;------------------------------------------------------------
                            923 ;Allocation info for local variables in function 'SSD_Show_Scroll'
                            924 ;------------------------------------------------------------
                            925 ;num                       Allocated to stack - offset 1
                            926 ;i                         Allocated to registers r5 r6 
                            927 ;shift                     Allocated with name '_SSD_Show_Scroll_shift_1_1'
                            928 ;------------------------------------------------------------
                            929 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:152: void SSD_Show_Scroll(UC* num)
                            930 ;	-----------------------------------------
                            931 ;	 function SSD_Show_Scroll
                            932 ;	-----------------------------------------
   030A                     933 _SSD_Show_Scroll:
   030A C0 21               934 	push	_bp
   030C 85 81 21            935 	mov	_bp,sp
   030F C0 82               936 	push	dpl
   0311 C0 83               937 	push	dph
   0313 C0 F0               938 	push	b
                            939 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:157: for (i = 1; i <= 8; i++)
   0315 7D 01               940 	mov	r5,#0x01
   0317 7E 00               941 	mov	r6,#0x00
   0319                     942 00103$:
   0319 C3                  943 	clr	c
   031A 74 08               944 	mov	a,#0x08
   031C 9D                  945 	subb	a,r5
   031D E4                  946 	clr	a
   031E 9E                  947 	subb	a,r6
   031F 40 4B               948 	jc	00106$
                            949 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:158: SerialDIN(i, SSD_CODE[num[(8 - i + shift) % 8]]);
   0321 74 08               950 	mov	a,#0x08
   0323 C3                  951 	clr	c
   0324 9D                  952 	subb	a,r5
   0325 FF                  953 	mov	r7,a
   0326 E4                  954 	clr	a
   0327 9E                  955 	subb	a,r6
   0328 FA                  956 	mov	r2,a
   0329 AB 18               957 	mov	r3,_SSD_Show_Scroll_shift_1_1
   032B 7C 00               958 	mov	r4,#0x00
   032D EB                  959 	mov	a,r3
   032E 2F                  960 	add	a,r7
   032F FF                  961 	mov	r7,a
   0330 EC                  962 	mov	a,r4
   0331 3A                  963 	addc	a,r2
   0332 53 07 07            964 	anl	ar7,#0x07
   0335 7A 00               965 	mov	r2,#0x00
   0337 A8 21               966 	mov	r0,_bp
   0339 08                  967 	inc	r0
   033A EF                  968 	mov	a,r7
   033B 26                  969 	add	a,@r0
   033C FF                  970 	mov	r7,a
   033D EA                  971 	mov	a,r2
   033E 08                  972 	inc	r0
   033F 36                  973 	addc	a,@r0
   0340 FA                  974 	mov	r2,a
   0341 08                  975 	inc	r0
   0342 86 03               976 	mov	ar3,@r0
   0344 8F 82               977 	mov	dpl,r7
   0346 8A 83               978 	mov	dph,r2
   0348 8B F0               979 	mov	b,r3
   034A 12 0A 08            980 	lcall	__gptrget
   034D 24 08               981 	add	a,#_SSD_CODE
   034F F8                  982 	mov	r0,a
   0350 86 02               983 	mov	ar2,@r0
   0352 8D 03               984 	mov	ar3,r5
   0354 C0 05               985 	push	ar5
   0356 C0 06               986 	push	ar6
   0358 C0 02               987 	push	ar2
   035A 8B 82               988 	mov	dpl,r3
   035C 12 01 66            989 	lcall	_SerialDIN
   035F 15 81               990 	dec	sp
   0361 D0 06               991 	pop	ar6
   0363 D0 05               992 	pop	ar5
                            993 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:157: for (i = 1; i <= 8; i++)
   0365 0D                  994 	inc	r5
   0366 BD 00 B0            995 	cjne	r5,#0x00,00103$
   0369 0E                  996 	inc	r6
   036A 80 AD               997 	sjmp	00103$
   036C                     998 00106$:
                            999 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:159: shift++;
   036C 05 18              1000 	inc	_SSD_Show_Scroll_shift_1_1
                           1001 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:160: if (shift == 8) shift = 0;
   036E 74 08              1002 	mov	a,#0x08
   0370 B5 18 03           1003 	cjne	a,_SSD_Show_Scroll_shift_1_1,00102$
   0373 75 18 00           1004 	mov	_SSD_Show_Scroll_shift_1_1,#0x00
   0376                    1005 00102$:
                           1006 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:162: delay_ms(1000);
   0376 90 03 E8           1007 	mov	dptr,#0x03E8
   0379 12 00 9A           1008 	lcall	_delay_ms
   037C 85 21 81           1009 	mov	sp,_bp
   037F D0 21              1010 	pop	_bp
   0381 22                 1011 	ret
                           1012 ;------------------------------------------------------------
                           1013 ;Allocation info for local variables in function 'SSD_INIT'
                           1014 ;------------------------------------------------------------
                           1015 ;i                         Allocated to registers r2 
                           1016 ;------------------------------------------------------------
                           1017 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:165: void SSD_INIT()
                           1018 ;	-----------------------------------------
                           1019 ;	 function SSD_INIT
                           1020 ;	-----------------------------------------
   0382                    1021 _SSD_INIT:
                           1022 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:169: SerialDIN(SHUTDOWN,     0x01);  // Normal mode (0xX1)
   0382 74 01              1023 	mov	a,#0x01
   0384 C0 E0              1024 	push	acc
   0386 75 82 0C           1025 	mov	dpl,#0x0C
   0389 12 01 66           1026 	lcall	_SerialDIN
   038C 15 81              1027 	dec	sp
                           1028 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:170: SerialDIN(DISPLAY_TEST, 0x00);  // Overwrite SHUTDOWN
   038E E4                 1029 	clr	a
   038F C0 E0              1030 	push	acc
   0391 75 82 0F           1031 	mov	dpl,#0x0F
   0394 12 01 66           1032 	lcall	_SerialDIN
   0397 15 81              1033 	dec	sp
                           1034 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:171: SerialDIN(DECODE_MODE,  0x00);  // no decoding
   0399 E4                 1035 	clr	a
   039A C0 E0              1036 	push	acc
   039C 75 82 09           1037 	mov	dpl,#0x09
   039F 12 01 66           1038 	lcall	_SerialDIN
   03A2 15 81              1039 	dec	sp
                           1040 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:172: SerialDIN(SCAN_LIMIT,   0x07);  // use all 8 digits
   03A4 74 07              1041 	mov	a,#0x07
   03A6 C0 E0              1042 	push	acc
   03A8 75 82 0B           1043 	mov	dpl,#0x0B
   03AB 12 01 66           1044 	lcall	_SerialDIN
   03AE 15 81              1045 	dec	sp
                           1046 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:173: SerialDIN(INTENSITY,    0x0E);  // brightness
   03B0 74 0E              1047 	mov	a,#0x0E
   03B2 C0 E0              1048 	push	acc
   03B4 75 82 0A           1049 	mov	dpl,#0x0A
   03B7 12 01 66           1050 	lcall	_SerialDIN
   03BA 15 81              1051 	dec	sp
                           1052 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:175: for (i = 1; i <= 8; i++)
   03BC 7A 01              1053 	mov	r2,#0x01
   03BE                    1054 00101$:
   03BE 74 08              1055 	mov	a,#0x08
   03C0 B5 02 00           1056 	cjne	a,ar2,00110$
   03C3                    1057 00110$:
   03C3 40 11              1058 	jc	00105$
                           1059 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:176: SerialDIN(i, 0);
   03C5 C0 02              1060 	push	ar2
   03C7 E4                 1061 	clr	a
   03C8 C0 E0              1062 	push	acc
   03CA 8A 82              1063 	mov	dpl,r2
   03CC 12 01 66           1064 	lcall	_SerialDIN
   03CF 15 81              1065 	dec	sp
   03D1 D0 02              1066 	pop	ar2
                           1067 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:175: for (i = 1; i <= 8; i++)
   03D3 0A                 1068 	inc	r2
   03D4 80 E8              1069 	sjmp	00101$
   03D6                    1070 00105$:
   03D6 22                 1071 	ret
                           1072 ;------------------------------------------------------------
                           1073 ;Allocation info for local variables in function 'I2C_Start'
                           1074 ;------------------------------------------------------------
                           1075 ;------------------------------------------------------------
                           1076 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:24: void I2C_Start(void)
                           1077 ;	-----------------------------------------
                           1078 ;	 function I2C_Start
                           1079 ;	-----------------------------------------
   03D7                    1080 _I2C_Start:
                           1081 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:26: SDA = 0;                    
   03D7 C2 81              1082 	clr	_P0_1
                           1083 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:27: delay_i2c();                  
   03D9 12 04 FA           1084 	lcall	_delay_i2c
                           1085 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:28: SCL = 0;                    
   03DC C2 80              1086 	clr	_P0_0
                           1087 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:29: delay_i2c();                  
   03DE 02 04 FA           1088 	ljmp	_delay_i2c
                           1089 ;------------------------------------------------------------
                           1090 ;Allocation info for local variables in function 'I2C_Stop'
                           1091 ;------------------------------------------------------------
                           1092 ;------------------------------------------------------------
                           1093 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:34: void I2C_Stop(void)
                           1094 ;	-----------------------------------------
                           1095 ;	 function I2C_Stop
                           1096 ;	-----------------------------------------
   03E1                    1097 _I2C_Stop:
                           1098 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:36: SDA = 0;                    
   03E1 C2 81              1099 	clr	_P0_1
                           1100 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:37: delay_i2c();                  
   03E3 12 04 FA           1101 	lcall	_delay_i2c
                           1102 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:38: SCL = 1;                    
   03E6 D2 80              1103 	setb	_P0_0
                           1104 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:39: delay_i2c();                  
   03E8 12 04 FA           1105 	lcall	_delay_i2c
                           1106 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:40: SDA = 1;                    
   03EB D2 81              1107 	setb	_P0_1
                           1108 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:41: delay_i2c();                  
   03ED 02 04 FA           1109 	ljmp	_delay_i2c
                           1110 ;------------------------------------------------------------
                           1111 ;Allocation info for local variables in function 'I2C_SendACK'
                           1112 ;------------------------------------------------------------
                           1113 ;ack                       Allocated to registers 
                           1114 ;------------------------------------------------------------
                           1115 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:46: void I2C_SendACK(__bit ack)
                           1116 ;	-----------------------------------------
                           1117 ;	 function I2C_SendACK
                           1118 ;	-----------------------------------------
   03F0                    1119 _I2C_SendACK:
   03F0 A2 00              1120 	mov	c,b0
   03F2 92 81              1121 	mov	_P0_1,c
                           1122 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:49: delay_i2c();                  
   03F4 12 04 FA           1123 	lcall	_delay_i2c
                           1124 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:50: SCL = 1;                    
   03F7 D2 80              1125 	setb	_P0_0
                           1126 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:51: delay_i2c();                  
   03F9 12 04 FA           1127 	lcall	_delay_i2c
                           1128 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:52: SCL = 0;                    
   03FC C2 80              1129 	clr	_P0_0
                           1130 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:53: delay_i2c();                  
   03FE 02 04 FA           1131 	ljmp	_delay_i2c
                           1132 ;------------------------------------------------------------
                           1133 ;Allocation info for local variables in function 'I2C_RecvACK'
                           1134 ;------------------------------------------------------------
                           1135 ;------------------------------------------------------------
                           1136 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:58: __sbit I2C_RecvACK()
                           1137 ;	-----------------------------------------
                           1138 ;	 function I2C_RecvACK
                           1139 ;	-----------------------------------------
   0401                    1140 _I2C_RecvACK:
                           1141 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:60: delay_i2c();  
   0401 12 04 FA           1142 	lcall	_delay_i2c
                           1143 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:61: SDA = 1;                 
   0404 D2 81              1144 	setb	_P0_1
                           1145 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:62: delay_i2c();      
   0406 12 04 FA           1146 	lcall	_delay_i2c
                           1147 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:63: SCL = 1;    
   0409 D2 80              1148 	setb	_P0_0
                           1149 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:64: delay_i2c();                  
   040B 12 04 FA           1150 	lcall	_delay_i2c
                           1151 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:65: CY = SDA;                   
   040E A2 81              1152 	mov	c,_P0_1
   0410 92 D7              1153 	mov	_CY,c
                           1154 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:66: delay_i2c();                  
   0412 12 04 FA           1155 	lcall	_delay_i2c
                           1156 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:67: SCL = 0;                    
   0415 C2 80              1157 	clr	_P0_0
                           1158 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:68: delay_i2c();                  
   0417 12 04 FA           1159 	lcall	_delay_i2c
                           1160 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:69: return CY;
   041A A2 D7              1161 	mov	c,_CY
   041C 22                 1162 	ret
                           1163 ;------------------------------------------------------------
                           1164 ;Allocation info for local variables in function 'I2C_SendByte'
                           1165 ;------------------------------------------------------------
                           1166 ;dat                       Allocated to registers r2 
                           1167 ;i                         Allocated to registers r3 
                           1168 ;------------------------------------------------------------
                           1169 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:75: void I2C_SendByte(uint8_t dat)
                           1170 ;	-----------------------------------------
                           1171 ;	 function I2C_SendByte
                           1172 ;	-----------------------------------------
   041D                    1173 _I2C_SendByte:
   041D AA 82              1174 	mov	r2,dpl
                           1175 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:78: for (i=0; i<8; i++)         
   041F 7B 00              1176 	mov	r3,#0x00
   0421                    1177 00104$:
   0421 BB 08 00           1178 	cjne	r3,#0x08,00114$
   0424                    1179 00114$:
   0424 50 25              1180 	jnc	00107$
                           1181 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:80: if(dat & 0x80)
   0426 EA                 1182 	mov	a,r2
   0427 30 E7 04           1183 	jnb	acc.7,00102$
                           1184 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:81: SDA = 1;               
   042A D2 81              1185 	setb	_P0_1
   042C 80 02              1186 	sjmp	00103$
   042E                    1187 00102$:
                           1188 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:83: SDA = 0;               
   042E C2 81              1189 	clr	_P0_1
   0430                    1190 00103$:
                           1191 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:84: delay_i2c();                  
   0430 C0 02              1192 	push	ar2
   0432 C0 03              1193 	push	ar3
   0434 12 04 FA           1194 	lcall	_delay_i2c
                           1195 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:85: SCL = 1;                
   0437 D2 80              1196 	setb	_P0_0
                           1197 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:86: delay_i2c();                  
   0439 12 04 FA           1198 	lcall	_delay_i2c
                           1199 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:87: SCL = 0;                
   043C C2 80              1200 	clr	_P0_0
                           1201 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:88: delay_i2c();                  
   043E 12 04 FA           1202 	lcall	_delay_i2c
   0441 D0 03              1203 	pop	ar3
   0443 D0 02              1204 	pop	ar2
                           1205 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:89: dat <<= 1;              
   0445 EA                 1206 	mov	a,r2
   0446 2A                 1207 	add	a,r2
   0447 FA                 1208 	mov	r2,a
                           1209 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:78: for (i=0; i<8; i++)         
   0448 0B                 1210 	inc	r3
   0449 80 D6              1211 	sjmp	00104$
   044B                    1212 00107$:
                           1213 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:91: I2C_RecvACK();
   044B 02 04 01           1214 	ljmp	_I2C_RecvACK
                           1215 ;------------------------------------------------------------
                           1216 ;Allocation info for local variables in function 'I2C_RecvByte'
                           1217 ;------------------------------------------------------------
                           1218 ;i                         Allocated to registers r3 
                           1219 ;dat                       Allocated to registers r2 
                           1220 ;------------------------------------------------------------
                           1221 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:96: uint8_t I2C_RecvByte()
                           1222 ;	-----------------------------------------
                           1223 ;	 function I2C_RecvByte
                           1224 ;	-----------------------------------------
   044E                    1225 _I2C_RecvByte:
                           1226 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:99: uint8_t dat = 0;
   044E 7A 00              1227 	mov	r2,#0x00
                           1228 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:100: SDA = 1;                    
   0450 D2 81              1229 	setb	_P0_1
                           1230 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:101: for (i=0; i<8; i++)         
   0452 7B 00              1231 	mov	r3,#0x00
   0454                    1232 00101$:
   0454 BB 08 00           1233 	cjne	r3,#0x08,00110$
   0457                    1234 00110$:
   0457 50 29              1235 	jnc	00104$
                           1236 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:103: dat <<= 1;
   0459 EA                 1237 	mov	a,r2
   045A 2A                 1238 	add	a,r2
   045B FA                 1239 	mov	r2,a
                           1240 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:104: SCL = 1;                
   045C D2 80              1241 	setb	_P0_0
                           1242 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:105: delay_i2c();                  
   045E C0 02              1243 	push	ar2
   0460 C0 03              1244 	push	ar3
   0462 12 04 FA           1245 	lcall	_delay_i2c
   0465 D0 03              1246 	pop	ar3
   0467 D0 02              1247 	pop	ar2
                           1248 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:106: dat |= SDA;             
   0469 A2 81              1249 	mov	c,_P0_1
   046B E4                 1250 	clr	a
   046C 33                 1251 	rlc	a
   046D 42 02              1252 	orl	ar2,a
                           1253 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:107: delay_i2c();                                
   046F C0 02              1254 	push	ar2
   0471 C0 03              1255 	push	ar3
   0473 12 04 FA           1256 	lcall	_delay_i2c
                           1257 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:108: SCL = 0;                
   0476 C2 80              1258 	clr	_P0_0
                           1259 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:109: delay_i2c();                  
   0478 12 04 FA           1260 	lcall	_delay_i2c
   047B D0 03              1261 	pop	ar3
   047D D0 02              1262 	pop	ar2
                           1263 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:101: for (i=0; i<8; i++)         
   047F 0B                 1264 	inc	r3
   0480 80 D2              1265 	sjmp	00101$
   0482                    1266 00104$:
                           1267 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:111: return dat;
   0482 8A 82              1268 	mov	dpl,r2
   0484 22                 1269 	ret
                           1270 ;------------------------------------------------------------
                           1271 ;Allocation info for local variables in function 'Single_WriteI2C'
                           1272 ;------------------------------------------------------------
                           1273 ;REG_Address               Allocated to stack - offset -3
                           1274 ;REG_data                  Allocated to stack - offset -4
                           1275 ;SlaveAddress              Allocated to registers r2 
                           1276 ;------------------------------------------------------------
                           1277 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:116: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data)
                           1278 ;	-----------------------------------------
                           1279 ;	 function Single_WriteI2C
                           1280 ;	-----------------------------------------
   0485                    1281 _Single_WriteI2C:
   0485 C0 21              1282 	push	_bp
   0487 85 81 21           1283 	mov	_bp,sp
   048A AA 82              1284 	mov	r2,dpl
                           1285 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:118: I2C_Start();                  
   048C C0 02              1286 	push	ar2
   048E 12 03 D7           1287 	lcall	_I2C_Start
   0491 D0 02              1288 	pop	ar2
                           1289 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:119: I2C_SendByte(SlaveAddress);   
   0493 8A 82              1290 	mov	dpl,r2
   0495 12 04 1D           1291 	lcall	_I2C_SendByte
                           1292 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:120: I2C_SendByte(REG_Address);    
   0498 E5 21              1293 	mov	a,_bp
   049A 24 FD              1294 	add	a,#0xfd
   049C F8                 1295 	mov	r0,a
   049D 86 82              1296 	mov	dpl,@r0
   049F 12 04 1D           1297 	lcall	_I2C_SendByte
                           1298 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:121: I2C_SendByte(REG_data);       
   04A2 E5 21              1299 	mov	a,_bp
   04A4 24 FC              1300 	add	a,#0xfc
   04A6 F8                 1301 	mov	r0,a
   04A7 86 82              1302 	mov	dpl,@r0
   04A9 12 04 1D           1303 	lcall	_I2C_SendByte
                           1304 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:122: I2C_Stop();                   
   04AC 12 03 E1           1305 	lcall	_I2C_Stop
   04AF D0 21              1306 	pop	_bp
   04B1 22                 1307 	ret
                           1308 ;------------------------------------------------------------
                           1309 ;Allocation info for local variables in function 'Single_ReadI2C'
                           1310 ;------------------------------------------------------------
                           1311 ;REG_Address               Allocated to stack - offset -3
                           1312 ;SlaveAddress              Allocated to registers r2 
                           1313 ;REG_data                  Allocated to registers r2 
                           1314 ;------------------------------------------------------------
                           1315 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:127: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
                           1316 ;	-----------------------------------------
                           1317 ;	 function Single_ReadI2C
                           1318 ;	-----------------------------------------
   04B2                    1319 _Single_ReadI2C:
   04B2 C0 21              1320 	push	_bp
   04B4 85 81 21           1321 	mov	_bp,sp
   04B7 AA 82              1322 	mov	r2,dpl
                           1323 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:130: I2C_Start();                   
   04B9 C0 02              1324 	push	ar2
   04BB 12 03 D7           1325 	lcall	_I2C_Start
   04BE D0 02              1326 	pop	ar2
                           1327 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:131: I2C_SendByte(SlaveAddress);    
   04C0 8A 82              1328 	mov	dpl,r2
   04C2 C0 02              1329 	push	ar2
   04C4 12 04 1D           1330 	lcall	_I2C_SendByte
                           1331 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:132: I2C_SendByte(REG_Address);       
   04C7 E5 21              1332 	mov	a,_bp
   04C9 24 FD              1333 	add	a,#0xfd
   04CB F8                 1334 	mov	r0,a
   04CC 86 82              1335 	mov	dpl,@r0
   04CE 12 04 1D           1336 	lcall	_I2C_SendByte
                           1337 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:133: I2C_Stop();                    
   04D1 12 03 E1           1338 	lcall	_I2C_Stop
                           1339 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:135: I2C_Start();                   
   04D4 12 03 D7           1340 	lcall	_I2C_Start
   04D7 D0 02              1341 	pop	ar2
                           1342 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:136: I2C_SendByte(SlaveAddress|0x01);  
   04D9 74 01              1343 	mov	a,#0x01
   04DB 4A                 1344 	orl	a,r2
   04DC F5 82              1345 	mov	dpl,a
   04DE 12 04 1D           1346 	lcall	_I2C_SendByte
                           1347 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:137: REG_data=I2C_RecvByte();       
   04E1 12 04 4E           1348 	lcall	_I2C_RecvByte
   04E4 AA 82              1349 	mov	r2,dpl
                           1350 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:138: I2C_SendACK(1);                
   04E6 D2 F0              1351 	setb	b[0]
   04E8 C0 02              1352 	push	ar2
   04EA 85 F0 20           1353 	mov	bits,b
   04ED 12 03 F0           1354 	lcall	_I2C_SendACK
                           1355 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:139: I2C_Stop();                    
   04F0 12 03 E1           1356 	lcall	_I2C_Stop
   04F3 D0 02              1357 	pop	ar2
                           1358 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:140: return REG_data;
   04F5 8A 82              1359 	mov	dpl,r2
   04F7 D0 21              1360 	pop	_bp
   04F9 22                 1361 	ret
                           1362 ;------------------------------------------------------------
                           1363 ;Allocation info for local variables in function 'delay_i2c'
                           1364 ;------------------------------------------------------------
                           1365 ;i                         Allocated to registers r2 
                           1366 ;------------------------------------------------------------
                           1367 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:159: void delay_i2c(void)
                           1368 ;	-----------------------------------------
                           1369 ;	 function delay_i2c
                           1370 ;	-----------------------------------------
   04FA                    1371 _delay_i2c:
                           1372 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:162: for(i = 0; i < 5; i ++);    
   04FA 7A 05              1373 	mov	r2,#0x05
   04FC                    1374 00103$:
   04FC DA FE              1375 	djnz	r2,00103$
   04FE 22                 1376 	ret
                           1377 ;------------------------------------------------------------
                           1378 ;Allocation info for local variables in function 'readObjectTemp'
                           1379 ;------------------------------------------------------------
                           1380 ;------------------------------------------------------------
                           1381 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:18: double readObjectTemp(void) {
                           1382 ;	-----------------------------------------
                           1383 ;	 function readObjectTemp
                           1384 ;	-----------------------------------------
   04FF                    1385 _readObjectTemp:
                           1386 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:19: return readTemp(OBJECT_TEMP);
   04FF 75 82 07           1387 	mov	dpl,#0x07
   0502 02 05 0B           1388 	ljmp	_readTemp
                           1389 ;------------------------------------------------------------
                           1390 ;Allocation info for local variables in function 'readAmbientTemp'
                           1391 ;------------------------------------------------------------
                           1392 ;------------------------------------------------------------
                           1393 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:22: double readAmbientTemp(void) {
                           1394 ;	-----------------------------------------
                           1395 ;	 function readAmbientTemp
                           1396 ;	-----------------------------------------
   0505                    1397 _readAmbientTemp:
                           1398 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:23: return readTemp(AMBIENT_TEMP);
   0505 75 82 06           1399 	mov	dpl,#0x06
   0508 02 05 0B           1400 	ljmp	_readTemp
                           1401 ;------------------------------------------------------------
                           1402 ;Allocation info for local variables in function 'readTemp'
                           1403 ;------------------------------------------------------------
                           1404 ;reg                       Allocated to registers r2 
                           1405 ;temp                      Allocated to registers r2 r3 r4 r5 
                           1406 ;tempData                  Allocated to registers r2 r3 
                           1407 ;pec                       Allocated to registers 
                           1408 ;sloc0                     Allocated to stack - offset 1
                           1409 ;------------------------------------------------------------
                           1410 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:26: float readTemp(uint8_t reg) {
                           1411 ;	-----------------------------------------
                           1412 ;	 function readTemp
                           1413 ;	-----------------------------------------
   050B                    1414 _readTemp:
   050B C0 21              1415 	push	_bp
   050D E5 81              1416 	mov	a,sp
   050F F5 21              1417 	mov	_bp,a
   0511 24 04              1418 	add	a,#0x04
   0513 F5 81              1419 	mov	sp,a
   0515 AA 82              1420 	mov	r2,dpl
                           1421 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:31: I2C_Start();
   0517 C0 02              1422 	push	ar2
   0519 12 03 D7           1423 	lcall	_I2C_Start
                           1424 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:32: I2C_SendByte(_addr);            // 0xb4
   051C 85 19 82           1425 	mov	dpl,__addr
   051F 12 04 1D           1426 	lcall	_I2C_SendByte
   0522 D0 02              1427 	pop	ar2
                           1428 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:33: I2C_SendByte(reg);
   0524 8A 82              1429 	mov	dpl,r2
   0526 12 04 1D           1430 	lcall	_I2C_SendByte
                           1431 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:34: SDA = 1;                        // pull up 2 wires to restart
   0529 D2 81              1432 	setb	_P0_1
                           1433 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:35: SCL = 1;                        
   052B D2 80              1434 	setb	_P0_0
                           1435 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:36: I2C_Start();                    // restart
   052D 12 03 D7           1436 	lcall	_I2C_Start
                           1437 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:37: I2C_SendByte(_addr|0x01);       // 0xb4 --> 0xb5
   0530 74 01              1438 	mov	a,#0x01
   0532 45 19              1439 	orl	a,__addr
   0534 F5 82              1440 	mov	dpl,a
   0536 12 04 1D           1441 	lcall	_I2C_SendByte
                           1442 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:38: tempData = I2C_RecvByte();      // LSByte
   0539 12 04 4E           1443 	lcall	_I2C_RecvByte
   053C AA 82              1444 	mov	r2,dpl
   053E 7B 00              1445 	mov	r3,#0x00
                           1446 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:39: I2C_SendACK(0);
   0540 C2 F0              1447 	clr	b[0]
   0542 C0 02              1448 	push	ar2
   0544 C0 03              1449 	push	ar3
   0546 85 F0 20           1450 	mov	bits,b
   0549 12 03 F0           1451 	lcall	_I2C_SendACK
                           1452 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:40: tempData |= I2C_RecvByte() << 8;  // { MSByte , LSByte } 
   054C 12 04 4E           1453 	lcall	_I2C_RecvByte
   054F AC 82              1454 	mov	r4,dpl
   0551 D0 03              1455 	pop	ar3
   0553 D0 02              1456 	pop	ar2
   0555 8C 05              1457 	mov	ar5,r4
   0557 E4                 1458 	clr	a
   0558 42 02              1459 	orl	ar2,a
   055A ED                 1460 	mov	a,r5
   055B 42 03              1461 	orl	ar3,a
                           1462 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:41: I2C_SendACK(0);
   055D C2 F0              1463 	clr	b[0]
   055F C0 02              1464 	push	ar2
   0561 C0 03              1465 	push	ar3
   0563 85 F0 20           1466 	mov	bits,b
   0566 12 03 F0           1467 	lcall	_I2C_SendACK
                           1468 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:42: pec = I2C_RecvByte();           // 8-bit pec 
   0569 12 04 4E           1469 	lcall	_I2C_RecvByte
                           1470 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:43: I2C_SendACK(1);
   056C D2 F0              1471 	setb	b[0]
   056E 85 F0 20           1472 	mov	bits,b
   0571 12 03 F0           1473 	lcall	_I2C_SendACK
                           1474 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:44: I2C_Stop();
   0574 12 03 E1           1475 	lcall	_I2C_Stop
   0577 D0 03              1476 	pop	ar3
   0579 D0 02              1477 	pop	ar2
                           1478 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:45: temp = tempData;               // raw 16-bit tempData 
   057B 8A 82              1479 	mov	dpl,r2
   057D 8B 83              1480 	mov	dph,r3
   057F 12 09 93           1481 	lcall	___uint2fs
   0582 AA 82              1482 	mov	r2,dpl
   0584 AB 83              1483 	mov	r3,dph
   0586 AC F0              1484 	mov	r4,b
   0588 FD                 1485 	mov	r5,a
                           1486 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:46: temp *= 0.02;                  // calculate temperature in Celsius 
   0589 C0 02              1487 	push	ar2
   058B C0 03              1488 	push	ar3
   058D C0 04              1489 	push	ar4
   058F C0 05              1490 	push	ar5
   0591 90 D7 0A           1491 	mov	dptr,#0xD70A
   0594 75 F0 A3           1492 	mov	b,#0xA3
   0597 74 3C              1493 	mov	a,#0x3C
   0599 12 08 0C           1494 	lcall	___fsmul
   059C A8 21              1495 	mov	r0,_bp
   059E 08                 1496 	inc	r0
   059F A6 82              1497 	mov	@r0,dpl
   05A1 08                 1498 	inc	r0
   05A2 A6 83              1499 	mov	@r0,dph
   05A4 08                 1500 	inc	r0
   05A5 A6 F0              1501 	mov	@r0,b
   05A7 08                 1502 	inc	r0
   05A8 F6                 1503 	mov	@r0,a
   05A9 E5 81              1504 	mov	a,sp
   05AB 24 FC              1505 	add	a,#0xfc
   05AD F5 81              1506 	mov	sp,a
   05AF A8 21              1507 	mov	r0,_bp
   05B1 08                 1508 	inc	r0
   05B2 86 02              1509 	mov	ar2,@r0
   05B4 08                 1510 	inc	r0
   05B5 86 03              1511 	mov	ar3,@r0
   05B7 08                 1512 	inc	r0
   05B8 86 04              1513 	mov	ar4,@r0
   05BA 08                 1514 	inc	r0
   05BB 86 05              1515 	mov	ar5,@r0
                           1516 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:47: temp -= 273.15;
   05BD 74 33              1517 	mov	a,#0x33
   05BF C0 E0              1518 	push	acc
   05C1 74 93              1519 	mov	a,#0x93
   05C3 C0 E0              1520 	push	acc
   05C5 74 88              1521 	mov	a,#0x88
   05C7 C0 E0              1522 	push	acc
   05C9 74 43              1523 	mov	a,#0x43
   05CB C0 E0              1524 	push	acc
   05CD 8A 82              1525 	mov	dpl,r2
   05CF 8B 83              1526 	mov	dph,r3
   05D1 8C F0              1527 	mov	b,r4
   05D3 ED                 1528 	mov	a,r5
   05D4 12 07 D0           1529 	lcall	___fssub
   05D7 A8 21              1530 	mov	r0,_bp
   05D9 08                 1531 	inc	r0
   05DA A6 82              1532 	mov	@r0,dpl
   05DC 08                 1533 	inc	r0
   05DD A6 83              1534 	mov	@r0,dph
   05DF 08                 1535 	inc	r0
   05E0 A6 F0              1536 	mov	@r0,b
   05E2 08                 1537 	inc	r0
   05E3 F6                 1538 	mov	@r0,a
   05E4 E5 81              1539 	mov	a,sp
   05E6 24 FC              1540 	add	a,#0xfc
   05E8 F5 81              1541 	mov	sp,a
   05EA A8 21              1542 	mov	r0,_bp
   05EC 08                 1543 	inc	r0
   05ED 86 02              1544 	mov	ar2,@r0
   05EF 08                 1545 	inc	r0
   05F0 86 03              1546 	mov	ar3,@r0
   05F2 08                 1547 	inc	r0
   05F3 86 04              1548 	mov	ar4,@r0
   05F5 08                 1549 	inc	r0
   05F6 86 05              1550 	mov	ar5,@r0
                           1551 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:48: temp = temp * 10 ;             // in order to show 1 decimal bit
   05F8 C0 02              1552 	push	ar2
   05FA C0 03              1553 	push	ar3
   05FC C0 04              1554 	push	ar4
   05FE C0 05              1555 	push	ar5
   0600 90 00 00           1556 	mov	dptr,#0x0000
   0603 75 F0 20           1557 	mov	b,#0x20
   0606 74 41              1558 	mov	a,#0x41
   0608 12 08 0C           1559 	lcall	___fsmul
   060B A8 21              1560 	mov	r0,_bp
   060D 08                 1561 	inc	r0
   060E A6 82              1562 	mov	@r0,dpl
   0610 08                 1563 	inc	r0
   0611 A6 83              1564 	mov	@r0,dph
   0613 08                 1565 	inc	r0
   0614 A6 F0              1566 	mov	@r0,b
   0616 08                 1567 	inc	r0
   0617 F6                 1568 	mov	@r0,a
   0618 E5 81              1569 	mov	a,sp
   061A 24 FC              1570 	add	a,#0xfc
   061C F5 81              1571 	mov	sp,a
   061E A8 21              1572 	mov	r0,_bp
   0620 08                 1573 	inc	r0
   0621 86 02              1574 	mov	ar2,@r0
   0623 08                 1575 	inc	r0
   0624 86 03              1576 	mov	ar3,@r0
   0626 08                 1577 	inc	r0
   0627 86 04              1578 	mov	ar4,@r0
   0629 08                 1579 	inc	r0
   062A 86 05              1580 	mov	ar5,@r0
                           1581 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:50: return temp;
   062C 8A 82              1582 	mov	dpl,r2
   062E 8B 83              1583 	mov	dph,r3
   0630 8C F0              1584 	mov	b,r4
   0632 ED                 1585 	mov	a,r5
   0633 85 21 81           1586 	mov	sp,_bp
   0636 D0 21              1587 	pop	_bp
   0638 22                 1588 	ret
                           1589 ;------------------------------------------------------------
                           1590 ;Allocation info for local variables in function 'main'
                           1591 ;------------------------------------------------------------
                           1592 ;------------------------------------------------------------
                           1593 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:14: void main(){
                           1594 ;	-----------------------------------------
                           1595 ;	 function main
                           1596 ;	-----------------------------------------
   0639                    1597 _main:
                           1598 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:16: DOUT = 1; //Setting gpio input mode
   0639 D2 A2              1599 	setb	_P2_2
                           1600 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:17: LOAD = 1; 
   063B D2 A3              1601 	setb	_P2_3
                           1602 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:18: CLK = 0;
   063D C2 A0              1603 	clr	_P2_0
                           1604 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:19: DIN = 0;
   063F C2 A1              1605 	clr	_P2_1
                           1606 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:20: SSD_INIT();
   0641 12 03 82           1607 	lcall	_SSD_INIT
                           1608 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:22: while(1)
   0644                    1609 00102$:
                           1610 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:24: adc = read_adc3202(1);    // Read voltage from ADC channel 1
   0644 75 82 01           1611 	mov	dpl,#0x01
   0647 12 00 FB           1612 	lcall	_read_adc3202
   064A 85 82 1C           1613 	mov	_adc,dpl
   064D 85 83 1D           1614 	mov	(_adc + 1),dph
                           1615 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:25: SerialDIN(4,SSD_CODE[adc / 1000] | 0x80);
   0650 74 E8              1616 	mov	a,#0xE8
   0652 C0 E0              1617 	push	acc
   0654 74 03              1618 	mov	a,#0x03
   0656 C0 E0              1619 	push	acc
   0658 85 1C 82           1620 	mov	dpl,_adc
   065B 85 1D 83           1621 	mov	dph,(_adc + 1)
   065E 12 07 DB           1622 	lcall	__divuint
   0661 AA 82              1623 	mov	r2,dpl
   0663 15 81              1624 	dec	sp
   0665 15 81              1625 	dec	sp
   0667 EA                 1626 	mov	a,r2
   0668 24 08              1627 	add	a,#_SSD_CODE
   066A F8                 1628 	mov	r0,a
   066B 86 02              1629 	mov	ar2,@r0
   066D 43 02 80           1630 	orl	ar2,#0x80
   0670 C0 02              1631 	push	ar2
   0672 75 82 04           1632 	mov	dpl,#0x04
   0675 12 01 66           1633 	lcall	_SerialDIN
   0678 15 81              1634 	dec	sp
                           1635 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:26: SerialDIN(3,SSD_CODE[adc % 1000 / 100]);
   067A 74 E8              1636 	mov	a,#0xE8
   067C C0 E0              1637 	push	acc
   067E 74 03              1638 	mov	a,#0x03
   0680 C0 E0              1639 	push	acc
   0682 85 1C 82           1640 	mov	dpl,_adc
   0685 85 1D 83           1641 	mov	dph,(_adc + 1)
   0688 12 0A 61           1642 	lcall	__moduint
   068B AA 82              1643 	mov	r2,dpl
   068D AB 83              1644 	mov	r3,dph
   068F 15 81              1645 	dec	sp
   0691 15 81              1646 	dec	sp
   0693 74 64              1647 	mov	a,#0x64
   0695 C0 E0              1648 	push	acc
   0697 E4                 1649 	clr	a
   0698 C0 E0              1650 	push	acc
   069A 8A 82              1651 	mov	dpl,r2
   069C 8B 83              1652 	mov	dph,r3
   069E 12 07 DB           1653 	lcall	__divuint
   06A1 AA 82              1654 	mov	r2,dpl
   06A3 15 81              1655 	dec	sp
   06A5 15 81              1656 	dec	sp
   06A7 EA                 1657 	mov	a,r2
   06A8 24 08              1658 	add	a,#_SSD_CODE
   06AA F8                 1659 	mov	r0,a
   06AB 86 02              1660 	mov	ar2,@r0
   06AD C0 02              1661 	push	ar2
   06AF 75 82 03           1662 	mov	dpl,#0x03
   06B2 12 01 66           1663 	lcall	_SerialDIN
   06B5 15 81              1664 	dec	sp
                           1665 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:27: SerialDIN(2,SSD_CODE[adc % 100 / 10]);
   06B7 74 64              1666 	mov	a,#0x64
   06B9 C0 E0              1667 	push	acc
   06BB E4                 1668 	clr	a
   06BC C0 E0              1669 	push	acc
   06BE 85 1C 82           1670 	mov	dpl,_adc
   06C1 85 1D 83           1671 	mov	dph,(_adc + 1)
   06C4 12 0A 61           1672 	lcall	__moduint
   06C7 AA 82              1673 	mov	r2,dpl
   06C9 AB 83              1674 	mov	r3,dph
   06CB 15 81              1675 	dec	sp
   06CD 15 81              1676 	dec	sp
   06CF 74 0A              1677 	mov	a,#0x0A
   06D1 C0 E0              1678 	push	acc
   06D3 E4                 1679 	clr	a
   06D4 C0 E0              1680 	push	acc
   06D6 8A 82              1681 	mov	dpl,r2
   06D8 8B 83              1682 	mov	dph,r3
   06DA 12 07 DB           1683 	lcall	__divuint
   06DD AA 82              1684 	mov	r2,dpl
   06DF 15 81              1685 	dec	sp
   06E1 15 81              1686 	dec	sp
   06E3 EA                 1687 	mov	a,r2
   06E4 24 08              1688 	add	a,#_SSD_CODE
   06E6 F8                 1689 	mov	r0,a
   06E7 86 02              1690 	mov	ar2,@r0
   06E9 C0 02              1691 	push	ar2
   06EB 75 82 02           1692 	mov	dpl,#0x02
   06EE 12 01 66           1693 	lcall	_SerialDIN
   06F1 15 81              1694 	dec	sp
                           1695 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:28: SerialDIN(1,SSD_CODE[adc % 10]);
   06F3 74 0A              1696 	mov	a,#0x0A
   06F5 C0 E0              1697 	push	acc
   06F7 E4                 1698 	clr	a
   06F8 C0 E0              1699 	push	acc
   06FA 85 1C 82           1700 	mov	dpl,_adc
   06FD 85 1D 83           1701 	mov	dph,(_adc + 1)
   0700 12 0A 61           1702 	lcall	__moduint
   0703 AA 82              1703 	mov	r2,dpl
   0705 15 81              1704 	dec	sp
   0707 15 81              1705 	dec	sp
   0709 EA                 1706 	mov	a,r2
   070A 24 08              1707 	add	a,#_SSD_CODE
   070C F8                 1708 	mov	r0,a
   070D 86 02              1709 	mov	ar2,@r0
   070F C0 02              1710 	push	ar2
   0711 75 82 01           1711 	mov	dpl,#0x01
   0714 12 01 66           1712 	lcall	_SerialDIN
   0717 15 81              1713 	dec	sp
                           1714 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:30: tmpc = readObjectTemp();
   0719 12 04 FF           1715 	lcall	_readObjectTemp
   071C 12 09 5F           1716 	lcall	___fs2sint
   071F 85 82 1A           1717 	mov	_tmpc,dpl
   0722 85 83 1B           1718 	mov	(_tmpc + 1),dph
                           1719 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:31: SerialDIN(7,SSD_CODE[tmpc % 1000 / 100]);
   0725 74 E8              1720 	mov	a,#0xE8
   0727 C0 E0              1721 	push	acc
   0729 74 03              1722 	mov	a,#0x03
   072B C0 E0              1723 	push	acc
   072D 85 1A 82           1724 	mov	dpl,_tmpc
   0730 85 1B 83           1725 	mov	dph,(_tmpc + 1)
   0733 12 0A 24           1726 	lcall	__modsint
   0736 AA 82              1727 	mov	r2,dpl
   0738 AB 83              1728 	mov	r3,dph
   073A 15 81              1729 	dec	sp
   073C 15 81              1730 	dec	sp
   073E 74 64              1731 	mov	a,#0x64
   0740 C0 E0              1732 	push	acc
   0742 E4                 1733 	clr	a
   0743 C0 E0              1734 	push	acc
   0745 8A 82              1735 	mov	dpl,r2
   0747 8B 83              1736 	mov	dph,r3
   0749 12 0A B9           1737 	lcall	__divsint
   074C AA 82              1738 	mov	r2,dpl
   074E 15 81              1739 	dec	sp
   0750 15 81              1740 	dec	sp
   0752 EA                 1741 	mov	a,r2
   0753 24 08              1742 	add	a,#_SSD_CODE
   0755 F8                 1743 	mov	r0,a
   0756 86 02              1744 	mov	ar2,@r0
   0758 C0 02              1745 	push	ar2
   075A 75 82 07           1746 	mov	dpl,#0x07
   075D 12 01 66           1747 	lcall	_SerialDIN
   0760 15 81              1748 	dec	sp
                           1749 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:32: SerialDIN(6,SSD_CODE[tmpc % 100 / 10] | 0x80);
   0762 74 64              1750 	mov	a,#0x64
   0764 C0 E0              1751 	push	acc
   0766 E4                 1752 	clr	a
   0767 C0 E0              1753 	push	acc
   0769 85 1A 82           1754 	mov	dpl,_tmpc
   076C 85 1B 83           1755 	mov	dph,(_tmpc + 1)
   076F 12 0A 24           1756 	lcall	__modsint
   0772 AA 82              1757 	mov	r2,dpl
   0774 AB 83              1758 	mov	r3,dph
   0776 15 81              1759 	dec	sp
   0778 15 81              1760 	dec	sp
   077A 74 0A              1761 	mov	a,#0x0A
   077C C0 E0              1762 	push	acc
   077E E4                 1763 	clr	a
   077F C0 E0              1764 	push	acc
   0781 8A 82              1765 	mov	dpl,r2
   0783 8B 83              1766 	mov	dph,r3
   0785 12 0A B9           1767 	lcall	__divsint
   0788 AA 82              1768 	mov	r2,dpl
   078A 15 81              1769 	dec	sp
   078C 15 81              1770 	dec	sp
   078E EA                 1771 	mov	a,r2
   078F 24 08              1772 	add	a,#_SSD_CODE
   0791 F8                 1773 	mov	r0,a
   0792 86 02              1774 	mov	ar2,@r0
   0794 43 02 80           1775 	orl	ar2,#0x80
   0797 C0 02              1776 	push	ar2
   0799 75 82 06           1777 	mov	dpl,#0x06
   079C 12 01 66           1778 	lcall	_SerialDIN
   079F 15 81              1779 	dec	sp
                           1780 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:33: SerialDIN(5,SSD_CODE[tmpc % 10]);
   07A1 74 0A              1781 	mov	a,#0x0A
   07A3 C0 E0              1782 	push	acc
   07A5 E4                 1783 	clr	a
   07A6 C0 E0              1784 	push	acc
   07A8 85 1A 82           1785 	mov	dpl,_tmpc
   07AB 85 1B 83           1786 	mov	dph,(_tmpc + 1)
   07AE 12 0A 24           1787 	lcall	__modsint
   07B1 AA 82              1788 	mov	r2,dpl
   07B3 15 81              1789 	dec	sp
   07B5 15 81              1790 	dec	sp
   07B7 EA                 1791 	mov	a,r2
   07B8 24 08              1792 	add	a,#_SSD_CODE
   07BA F8                 1793 	mov	r0,a
   07BB 86 02              1794 	mov	ar2,@r0
   07BD C0 02              1795 	push	ar2
   07BF 75 82 05           1796 	mov	dpl,#0x05
   07C2 12 01 66           1797 	lcall	_SerialDIN
   07C5 15 81              1798 	dec	sp
                           1799 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:44: delay_ms(100);
   07C7 90 00 64           1800 	mov	dptr,#0x0064
   07CA 12 00 9A           1801 	lcall	_delay_ms
   07CD 02 06 44           1802 	ljmp	00102$
                           1803 	.area CSEG    (CODE)
                           1804 	.area CONST   (CODE)
                           1805 	.area XINIT   (CODE)
                           1806 	.area CABS    (ABS,CODE)
