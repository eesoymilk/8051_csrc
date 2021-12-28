                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Tue Dec 28 14:33:50 2021
                              5 ;--------------------------------------------------------
                              6 	.module Q3MIDE
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _T0_isr
                             14 	.globl _Single_ReadI2C
                             15 	.globl _Single_WriteI2C
                             16 	.globl _I2C_RecvByte
                             17 	.globl _I2C_SendByte
                             18 	.globl _I2C_RecvACK
                             19 	.globl _I2C_SendACK
                             20 	.globl _read_adc3202
                             21 	.globl _SPI_WR
                             22 	.globl _delay_ms
                             23 	.globl _CY
                             24 	.globl _AC
                             25 	.globl _F0
                             26 	.globl _RS1
                             27 	.globl _RS0
                             28 	.globl _OV
                             29 	.globl _F1
                             30 	.globl _P
                             31 	.globl _PS
                             32 	.globl _PT1
                             33 	.globl _PX1
                             34 	.globl _PT0
                             35 	.globl _PX0
                             36 	.globl _RD
                             37 	.globl _WR
                             38 	.globl _T1
                             39 	.globl _T0
                             40 	.globl _INT1
                             41 	.globl _INT0
                             42 	.globl _TXD
                             43 	.globl _RXD
                             44 	.globl _P3_7
                             45 	.globl _P3_6
                             46 	.globl _P3_5
                             47 	.globl _P3_4
                             48 	.globl _P3_3
                             49 	.globl _P3_2
                             50 	.globl _P3_1
                             51 	.globl _P3_0
                             52 	.globl _EA
                             53 	.globl _ES
                             54 	.globl _ET1
                             55 	.globl _EX1
                             56 	.globl _ET0
                             57 	.globl _EX0
                             58 	.globl _P2_7
                             59 	.globl _P2_6
                             60 	.globl _P2_5
                             61 	.globl _P2_4
                             62 	.globl _P2_3
                             63 	.globl _P2_2
                             64 	.globl _P2_1
                             65 	.globl _P2_0
                             66 	.globl _SM0
                             67 	.globl _SM1
                             68 	.globl _SM2
                             69 	.globl _REN
                             70 	.globl _TB8
                             71 	.globl _RB8
                             72 	.globl _TI
                             73 	.globl _RI
                             74 	.globl _P1_7
                             75 	.globl _P1_6
                             76 	.globl _P1_5
                             77 	.globl _P1_4
                             78 	.globl _P1_3
                             79 	.globl _P1_2
                             80 	.globl _P1_1
                             81 	.globl _P1_0
                             82 	.globl _TF1
                             83 	.globl _TR1
                             84 	.globl _TF0
                             85 	.globl _TR0
                             86 	.globl _IE1
                             87 	.globl _IT1
                             88 	.globl _IE0
                             89 	.globl _IT0
                             90 	.globl _P0_7
                             91 	.globl _P0_6
                             92 	.globl _P0_5
                             93 	.globl _P0_4
                             94 	.globl _P0_3
                             95 	.globl _P0_2
                             96 	.globl _P0_1
                             97 	.globl _P0_0
                             98 	.globl _B
                             99 	.globl _ACC
                            100 	.globl _PSW
                            101 	.globl _IP
                            102 	.globl _P3
                            103 	.globl _IE
                            104 	.globl _P2
                            105 	.globl _SBUF
                            106 	.globl _SCON
                            107 	.globl _P1
                            108 	.globl _TH1
                            109 	.globl _TH0
                            110 	.globl _TL1
                            111 	.globl _TL0
                            112 	.globl _TMOD
                            113 	.globl _TCON
                            114 	.globl _PCON
                            115 	.globl _DPH
                            116 	.globl _DPL
                            117 	.globl _SP
                            118 	.globl _P0
                            119 	.globl _BUZZ
                            120 	.globl _timer_ms
                            121 	.globl _dis
                            122 	.globl _adc
                            123 	.globl _tmpc
                            124 	.globl _RE
                            125 	.globl _STATE
                            126 	.globl __addr
                            127 	.globl _SSD_CODE
                            128 	.globl _delay_5
                            129 	.globl _BitExtract
                            130 	.globl _SerialDIN
                            131 	.globl _SSD_Number
                            132 	.globl _SSD_Show
                            133 	.globl _SSD_Show_Scroll
                            134 	.globl _SSD_INIT
                            135 	.globl _I2C_Start
                            136 	.globl _I2C_Stop
                            137 	.globl _delay_i2c
                            138 	.globl _readObjectTemp
                            139 	.globl _readAmbientTemp
                            140 	.globl _readTemp
                            141 ;--------------------------------------------------------
                            142 ; special function registers
                            143 ;--------------------------------------------------------
                            144 	.area RSEG    (ABS,DATA)
   0000                     145 	.org 0x0000
                    0080    146 _P0	=	0x0080
                    0081    147 _SP	=	0x0081
                    0082    148 _DPL	=	0x0082
                    0083    149 _DPH	=	0x0083
                    0087    150 _PCON	=	0x0087
                    0088    151 _TCON	=	0x0088
                    0089    152 _TMOD	=	0x0089
                    008A    153 _TL0	=	0x008a
                    008B    154 _TL1	=	0x008b
                    008C    155 _TH0	=	0x008c
                    008D    156 _TH1	=	0x008d
                    0090    157 _P1	=	0x0090
                    0098    158 _SCON	=	0x0098
                    0099    159 _SBUF	=	0x0099
                    00A0    160 _P2	=	0x00a0
                    00A8    161 _IE	=	0x00a8
                    00B0    162 _P3	=	0x00b0
                    00B8    163 _IP	=	0x00b8
                    00D0    164 _PSW	=	0x00d0
                    00E0    165 _ACC	=	0x00e0
                    00F0    166 _B	=	0x00f0
                            167 ;--------------------------------------------------------
                            168 ; special function bits
                            169 ;--------------------------------------------------------
                            170 	.area RSEG    (ABS,DATA)
   0000                     171 	.org 0x0000
                    0080    172 _P0_0	=	0x0080
                    0081    173 _P0_1	=	0x0081
                    0082    174 _P0_2	=	0x0082
                    0083    175 _P0_3	=	0x0083
                    0084    176 _P0_4	=	0x0084
                    0085    177 _P0_5	=	0x0085
                    0086    178 _P0_6	=	0x0086
                    0087    179 _P0_7	=	0x0087
                    0088    180 _IT0	=	0x0088
                    0089    181 _IE0	=	0x0089
                    008A    182 _IT1	=	0x008a
                    008B    183 _IE1	=	0x008b
                    008C    184 _TR0	=	0x008c
                    008D    185 _TF0	=	0x008d
                    008E    186 _TR1	=	0x008e
                    008F    187 _TF1	=	0x008f
                    0090    188 _P1_0	=	0x0090
                    0091    189 _P1_1	=	0x0091
                    0092    190 _P1_2	=	0x0092
                    0093    191 _P1_3	=	0x0093
                    0094    192 _P1_4	=	0x0094
                    0095    193 _P1_5	=	0x0095
                    0096    194 _P1_6	=	0x0096
                    0097    195 _P1_7	=	0x0097
                    0098    196 _RI	=	0x0098
                    0099    197 _TI	=	0x0099
                    009A    198 _RB8	=	0x009a
                    009B    199 _TB8	=	0x009b
                    009C    200 _REN	=	0x009c
                    009D    201 _SM2	=	0x009d
                    009E    202 _SM1	=	0x009e
                    009F    203 _SM0	=	0x009f
                    00A0    204 _P2_0	=	0x00a0
                    00A1    205 _P2_1	=	0x00a1
                    00A2    206 _P2_2	=	0x00a2
                    00A3    207 _P2_3	=	0x00a3
                    00A4    208 _P2_4	=	0x00a4
                    00A5    209 _P2_5	=	0x00a5
                    00A6    210 _P2_6	=	0x00a6
                    00A7    211 _P2_7	=	0x00a7
                    00A8    212 _EX0	=	0x00a8
                    00A9    213 _ET0	=	0x00a9
                    00AA    214 _EX1	=	0x00aa
                    00AB    215 _ET1	=	0x00ab
                    00AC    216 _ES	=	0x00ac
                    00AF    217 _EA	=	0x00af
                    00B0    218 _P3_0	=	0x00b0
                    00B1    219 _P3_1	=	0x00b1
                    00B2    220 _P3_2	=	0x00b2
                    00B3    221 _P3_3	=	0x00b3
                    00B4    222 _P3_4	=	0x00b4
                    00B5    223 _P3_5	=	0x00b5
                    00B6    224 _P3_6	=	0x00b6
                    00B7    225 _P3_7	=	0x00b7
                    00B0    226 _RXD	=	0x00b0
                    00B1    227 _TXD	=	0x00b1
                    00B2    228 _INT0	=	0x00b2
                    00B3    229 _INT1	=	0x00b3
                    00B4    230 _T0	=	0x00b4
                    00B5    231 _T1	=	0x00b5
                    00B6    232 _WR	=	0x00b6
                    00B7    233 _RD	=	0x00b7
                    00B8    234 _PX0	=	0x00b8
                    00B9    235 _PT0	=	0x00b9
                    00BA    236 _PX1	=	0x00ba
                    00BB    237 _PT1	=	0x00bb
                    00BC    238 _PS	=	0x00bc
                    00D0    239 _P	=	0x00d0
                    00D1    240 _F1	=	0x00d1
                    00D2    241 _OV	=	0x00d2
                    00D3    242 _RS0	=	0x00d3
                    00D4    243 _RS1	=	0x00d4
                    00D5    244 _F0	=	0x00d5
                    00D6    245 _AC	=	0x00d6
                    00D7    246 _CY	=	0x00d7
                            247 ;--------------------------------------------------------
                            248 ; overlayable register banks
                            249 ;--------------------------------------------------------
                            250 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     251 	.ds 8
                            252 ;--------------------------------------------------------
                            253 ; overlayable bit register bank
                            254 ;--------------------------------------------------------
                            255 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     256 bits:
   0020                     257 	.ds 1
                    8000    258 	b0 = bits[0]
                    8100    259 	b1 = bits[1]
                    8200    260 	b2 = bits[2]
                    8300    261 	b3 = bits[3]
                    8400    262 	b4 = bits[4]
                    8500    263 	b5 = bits[5]
                    8600    264 	b6 = bits[6]
                    8700    265 	b7 = bits[7]
                            266 ;--------------------------------------------------------
                            267 ; internal ram data
                            268 ;--------------------------------------------------------
                            269 	.area DSEG    (DATA)
   0021                     270 _SSD_CODE::
   0021                     271 	.ds 16
   0031                     272 _SSD_Show_Scroll_shift_1_1:
   0031                     273 	.ds 1
   0032                     274 __addr::
   0032                     275 	.ds 1
   0033                     276 _STATE::
   0033                     277 	.ds 1
   0034                     278 _RE::
   0034                     279 	.ds 1
   0035                     280 _tmpc::
   0035                     281 	.ds 2
   0037                     282 _adc::
   0037                     283 	.ds 2
   0039                     284 _dis::
   0039                     285 	.ds 2
   003B                     286 _timer_ms::
   003B                     287 	.ds 4
   003F                     288 _BUZZ::
   003F                     289 	.ds 16
                            290 ;--------------------------------------------------------
                            291 ; overlayable items in internal ram 
                            292 ;--------------------------------------------------------
                            293 	.area OSEG    (OVR,DATA)
                            294 ;--------------------------------------------------------
                            295 ; Stack segment in internal ram 
                            296 ;--------------------------------------------------------
                            297 	.area	SSEG	(DATA)
   004F                     298 __start__stack:
   004F                     299 	.ds	1
                            300 
                            301 ;--------------------------------------------------------
                            302 ; indirectly addressable internal ram data
                            303 ;--------------------------------------------------------
                            304 	.area ISEG    (DATA)
                            305 ;--------------------------------------------------------
                            306 ; absolute internal ram data
                            307 ;--------------------------------------------------------
                            308 	.area IABS    (ABS,DATA)
                            309 	.area IABS    (ABS,DATA)
                            310 ;--------------------------------------------------------
                            311 ; bit data
                            312 ;--------------------------------------------------------
                            313 	.area BSEG    (BIT)
                            314 ;--------------------------------------------------------
                            315 ; paged external ram data
                            316 ;--------------------------------------------------------
                            317 	.area PSEG    (PAG,XDATA)
                            318 ;--------------------------------------------------------
                            319 ; external ram data
                            320 ;--------------------------------------------------------
                            321 	.area XSEG    (XDATA)
                            322 ;--------------------------------------------------------
                            323 ; absolute external ram data
                            324 ;--------------------------------------------------------
                            325 	.area XABS    (ABS,XDATA)
                            326 ;--------------------------------------------------------
                            327 ; external initialized ram data
                            328 ;--------------------------------------------------------
                            329 	.area XISEG   (XDATA)
                            330 	.area HOME    (CODE)
                            331 	.area GSINIT0 (CODE)
                            332 	.area GSINIT1 (CODE)
                            333 	.area GSINIT2 (CODE)
                            334 	.area GSINIT3 (CODE)
                            335 	.area GSINIT4 (CODE)
                            336 	.area GSINIT5 (CODE)
                            337 	.area GSINIT  (CODE)
                            338 	.area GSFINAL (CODE)
                            339 	.area CSEG    (CODE)
                            340 ;--------------------------------------------------------
                            341 ; interrupt vector 
                            342 ;--------------------------------------------------------
                            343 	.area HOME    (CODE)
   0000                     344 __interrupt_vect:
   0000 02 00 13            345 	ljmp	__sdcc_gsinit_startup
   0003 32                  346 	reti
   0004                     347 	.ds	7
   000B 02 06 78            348 	ljmp	_T0_isr
                            349 ;--------------------------------------------------------
                            350 ; global & static initialisations
                            351 ;--------------------------------------------------------
                            352 	.area HOME    (CODE)
                            353 	.area GSINIT  (CODE)
                            354 	.area GSFINAL (CODE)
                            355 	.area GSINIT  (CODE)
                            356 	.globl __sdcc_gsinit_startup
                            357 	.globl __sdcc_program_startup
                            358 	.globl __start__stack
                            359 	.globl __mcs51_genXINIT
                            360 	.globl __mcs51_genXRAMCLEAR
                            361 	.globl __mcs51_genRAMCLEAR
                            362 ;------------------------------------------------------------
                            363 ;Allocation info for local variables in function 'SSD_Show_Scroll'
                            364 ;------------------------------------------------------------
                            365 ;num                       Allocated to stack - offset 1
                            366 ;i                         Allocated to registers r5 r6 
                            367 ;shift                     Allocated with name '_SSD_Show_Scroll_shift_1_1'
                            368 ;------------------------------------------------------------
                            369 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:155: static UC shift = 0;
   006C 75 31 00            370 	mov	_SSD_Show_Scroll_shift_1_1,#0x00
                            371 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:22: UC SSD_CODE[] = {
   006F 75 21 7E            372 	mov	_SSD_CODE,#0x7E
   0072 75 22 30            373 	mov	(_SSD_CODE + 0x0001),#0x30
   0075 75 23 6D            374 	mov	(_SSD_CODE + 0x0002),#0x6D
   0078 75 24 79            375 	mov	(_SSD_CODE + 0x0003),#0x79
   007B 75 25 33            376 	mov	(_SSD_CODE + 0x0004),#0x33
   007E 75 26 5B            377 	mov	(_SSD_CODE + 0x0005),#0x5B
   0081 75 27 5F            378 	mov	(_SSD_CODE + 0x0006),#0x5F
   0084 75 28 70            379 	mov	(_SSD_CODE + 0x0007),#0x70
   0087 75 29 7F            380 	mov	(_SSD_CODE + 0x0008),#0x7F
   008A 75 2A 7B            381 	mov	(_SSD_CODE + 0x0009),#0x7B
   008D 75 2B 77            382 	mov	(_SSD_CODE + 0x000a),#0x77
   0090 75 2C 1F            383 	mov	(_SSD_CODE + 0x000b),#0x1F
   0093 75 2D 4E            384 	mov	(_SSD_CODE + 0x000c),#0x4E
   0096 75 2E 3D            385 	mov	(_SSD_CODE + 0x000d),#0x3D
   0099 75 2F 4F            386 	mov	(_SSD_CODE + 0x000e),#0x4F
   009C 75 30 47            387 	mov	(_SSD_CODE + 0x000f),#0x47
                            388 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:16: uint8_t  _addr = MLX90614_ADDRESS << 1;    // 0x5a --> 0xb4
   009F 75 32 B4            389 	mov	__addr,#0xB4
                            390 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:14: UL timer_ms = 0, BUZZ[] = {1000, 1000, 500, 250};
   00A2 E4                  391 	clr	a
   00A3 F5 3B               392 	mov	_timer_ms,a
   00A5 F5 3C               393 	mov	(_timer_ms + 1),a
   00A7 F5 3D               394 	mov	(_timer_ms + 2),a
   00A9 F5 3E               395 	mov	(_timer_ms + 3),a
                            396 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:14: 
   00AB 75 3F E8            397 	mov	(_BUZZ + 0),#0xE8
   00AE 75 40 03            398 	mov	(_BUZZ + 1),#0x03
   00B1 E4                  399 	clr	a
   00B2 F5 41               400 	mov	(_BUZZ + 2),a
   00B4 F5 42               401 	mov	(_BUZZ + 3),a
   00B6 75 43 E8            402 	mov	((_BUZZ + 0x0004) + 0),#0xE8
   00B9 75 44 03            403 	mov	((_BUZZ + 0x0004) + 1),#0x03
   00BC E4                  404 	clr	a
   00BD F5 45               405 	mov	((_BUZZ + 0x0004) + 2),a
   00BF F5 46               406 	mov	((_BUZZ + 0x0004) + 3),a
   00C1 75 47 F4            407 	mov	((_BUZZ + 0x0008) + 0),#0xF4
   00C4 75 48 01            408 	mov	((_BUZZ + 0x0008) + 1),#0x01
   00C7 E4                  409 	clr	a
   00C8 F5 49               410 	mov	((_BUZZ + 0x0008) + 2),a
   00CA F5 4A               411 	mov	((_BUZZ + 0x0008) + 3),a
   00CC 75 4B FA            412 	mov	((_BUZZ + 0x000c) + 0),#0xFA
   00CF E4                  413 	clr	a
   00D0 F5 4C               414 	mov	((_BUZZ + 0x000c) + 1),a
   00D2 F5 4D               415 	mov	((_BUZZ + 0x000c) + 2),a
   00D4 F5 4E               416 	mov	((_BUZZ + 0x000c) + 3),a
                            417 	.area GSFINAL (CODE)
   00D6 02 00 0E            418 	ljmp	__sdcc_program_startup
                            419 ;--------------------------------------------------------
                            420 ; Home
                            421 ;--------------------------------------------------------
                            422 	.area HOME    (CODE)
                            423 	.area HOME    (CODE)
   000E                     424 __sdcc_program_startup:
   000E 12 08 C6            425 	lcall	_main
                            426 ;	return from main will lock up
   0011 80 FE               427 	sjmp .
                            428 ;--------------------------------------------------------
                            429 ; code
                            430 ;--------------------------------------------------------
                            431 	.area CSEG    (CODE)
                            432 ;------------------------------------------------------------
                            433 ;Allocation info for local variables in function 'delay_ms'
                            434 ;------------------------------------------------------------
                            435 ;input_ms                  Allocated to registers r2 r3 
                            436 ;cnt1                      Allocated to registers r4 r5 
                            437 ;cnt2                      Allocated to registers r6 
                            438 ;------------------------------------------------------------
                            439 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:4: void delay_ms(unsigned int input_ms)
                            440 ;	-----------------------------------------
                            441 ;	 function delay_ms
                            442 ;	-----------------------------------------
   00D9                     443 _delay_ms:
                    0002    444 	ar2 = 0x02
                    0003    445 	ar3 = 0x03
                    0004    446 	ar4 = 0x04
                    0005    447 	ar5 = 0x05
                    0006    448 	ar6 = 0x06
                    0007    449 	ar7 = 0x07
                    0000    450 	ar0 = 0x00
                    0001    451 	ar1 = 0x01
   00D9 AA 82               452 	mov	r2,dpl
   00DB AB 83               453 	mov	r3,dph
                            454 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:9: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
   00DD 7C 00               455 	mov	r4,#0x00
   00DF 7D 00               456 	mov	r5,#0x00
   00E1                     457 00104$:
   00E1 C3                  458 	clr	c
   00E2 EC                  459 	mov	a,r4
   00E3 9A                  460 	subb	a,r2
   00E4 ED                  461 	mov	a,r5
   00E5 9B                  462 	subb	a,r3
   00E6 50 0B               463 	jnc	00108$
                            464 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:11: for(cnt2 = 0; cnt2 < 90;cnt2 ++);
   00E8 7E 5A               465 	mov	r6,#0x5A
   00EA                     466 00103$:
   00EA DE FE               467 	djnz	r6,00103$
                            468 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/delay.h:9: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
   00EC 0C                  469 	inc	r4
   00ED BC 00 F1            470 	cjne	r4,#0x00,00104$
   00F0 0D                  471 	inc	r5
   00F1 80 EE               472 	sjmp	00104$
   00F3                     473 00108$:
   00F3 22                  474 	ret
                            475 ;------------------------------------------------------------
                            476 ;Allocation info for local variables in function 'SPI_WR'
                            477 ;------------------------------------------------------------
                            478 ;data_in                   Allocated to registers r2 
                            479 ;data_out                  Allocated to registers r3 
                            480 ;i                         Allocated to registers r4 
                            481 ;------------------------------------------------------------
                            482 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:51: char SPI_WR(char data_in)
                            483 ;	-----------------------------------------
                            484 ;	 function SPI_WR
                            485 ;	-----------------------------------------
   00F4                     486 _SPI_WR:
   00F4 AA 82               487 	mov	r2,dpl
                            488 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:53: char data_out = 0;
   00F6 7B 00               489 	mov	r3,#0x00
                            490 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:55: for(i=0;i<8;i++)  // 8 bit transaction
   00F8 7C 00               491 	mov	r4,#0x00
   00FA                     492 00103$:
   00FA BC 08 00            493 	cjne	r4,#0x08,00113$
   00FD                     494 00113$:
   00FD 50 38               495 	jnc	00106$
                            496 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:57: data_out <<= 1;
   00FF EB                  497 	mov	a,r3
   0100 2B                  498 	add	a,r3
   0101 FB                  499 	mov	r3,a
                            500 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:59: CLK = 0;
   0102 C2 A0               501 	clr	_P2_0
                            502 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:60: delay_5();
   0104 C0 02               503 	push	ar2
   0106 C0 03               504 	push	ar3
   0108 C0 04               505 	push	ar4
   010A 12 01 8A            506 	lcall	_delay_5
   010D D0 04               507 	pop	ar4
   010F D0 03               508 	pop	ar3
   0111 D0 02               509 	pop	ar2
                            510 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:61: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
   0113 EA                  511 	mov	a,r2
   0114 33                  512 	rlc	a
   0115 92 A1               513 	mov	_P2_1,c
                            514 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:62: delay_5();
   0117 C0 02               515 	push	ar2
   0119 C0 03               516 	push	ar3
   011B C0 04               517 	push	ar4
   011D 12 01 8A            518 	lcall	_delay_5
                            519 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:63: CLK = 1;
   0120 D2 A0               520 	setb	_P2_0
                            521 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:64: delay_5();
   0122 12 01 8A            522 	lcall	_delay_5
   0125 D0 04               523 	pop	ar4
   0127 D0 03               524 	pop	ar3
   0129 D0 02               525 	pop	ar2
                            526 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:66: if(DOUT == 1)   // Read DOUT
   012B 30 A2 03            527 	jnb	_P2_2,00102$
                            528 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:67: data_out = (data_out | 0x01);   // Store into data_out
   012E 43 03 01            529 	orl	ar3,#0x01
   0131                     530 00102$:
                            531 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:68: data_in <<= 1;
   0131 EA                  532 	mov	a,r2
   0132 2A                  533 	add	a,r2
   0133 FA                  534 	mov	r2,a
                            535 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:55: for(i=0;i<8;i++)  // 8 bit transaction
   0134 0C                  536 	inc	r4
   0135 80 C3               537 	sjmp	00103$
   0137                     538 00106$:
                            539 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:70: return data_out;
   0137 8B 82               540 	mov	dpl,r3
   0139 22                  541 	ret
                            542 ;------------------------------------------------------------
                            543 ;Allocation info for local variables in function 'read_adc3202'
                            544 ;------------------------------------------------------------
                            545 ;channel                   Allocated to registers r2 
                            546 ;data_buff                 Allocated to registers r3 r4 
                            547 ;spi_buff                  Allocated to registers r2 
                            548 ;------------------------------------------------------------
                            549 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:73: unsigned int read_adc3202(unsigned char channel) {
                            550 ;	-----------------------------------------
                            551 ;	 function read_adc3202
                            552 ;	-----------------------------------------
   013A                     553 _read_adc3202:
   013A AA 82               554 	mov	r2,dpl
                            555 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:78: LOAD = 0;
   013C C2 A3               556 	clr	_P2_3
                            557 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:81: SPI_WR(0x01);               // First byte transaction includes start bit
   013E 75 82 01            558 	mov	dpl,#0x01
   0141 C0 02               559 	push	ar2
   0143 12 00 F4            560 	lcall	_SPI_WR
   0146 D0 02               561 	pop	ar2
                            562 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:82: if(channel == 1)            // Channel 1: 11100000, to IR sensor
   0148 BA 01 0A            563 	cjne	r2,#0x01,00102$
                            564 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:83: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
   014B 75 82 E0            565 	mov	dpl,#0xE0
   014E 12 00 F4            566 	lcall	_SPI_WR
   0151 AA 82               567 	mov	r2,dpl
   0153 80 0A               568 	sjmp	00103$
   0155                     569 00102$:
                            570 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:85: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
   0155 75 82 A0            571 	mov	dpl,#0xA0
   0158 12 00 F4            572 	lcall	_SPI_WR
   015B AB 82               573 	mov	r3,dpl
   015D 8B 02               574 	mov	ar2,r3
   015F                     575 00103$:
                            576 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:86: data_buff = spi_buff & 0x0f;
   015F 74 0F               577 	mov	a,#0x0F
   0161 5A                  578 	anl	a,r2
                            579 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:87: data_buff <<= 8;            // Store higher 4 bit ADC output
   0162 FC                  580 	mov	r4,a
   0163 7B 00               581 	mov	r3,#0x00
                            582 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:89: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
   0165 75 82 00            583 	mov	dpl,#0x00
   0168 C0 03               584 	push	ar3
   016A C0 04               585 	push	ar4
   016C 12 00 F4            586 	lcall	_SPI_WR
   016F AD 82               587 	mov	r5,dpl
   0171 D0 04               588 	pop	ar4
   0173 D0 03               589 	pop	ar3
   0175 8D 02               590 	mov	ar2,r5
                            591 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:90: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
   0177 7D 00               592 	mov	r5,#0x00
   0179 EA                  593 	mov	a,r2
   017A 42 03               594 	orl	ar3,a
   017C ED                  595 	mov	a,r5
   017D 42 04               596 	orl	ar4,a
                            597 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:92: LOAD = 1;  
   017F D2 A3               598 	setb	_P2_3
                            599 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:93: CLK = 0;
   0181 C2 A0               600 	clr	_P2_0
                            601 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:94: DIN = 0;
   0183 C2 A1               602 	clr	_P2_1
                            603 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:96: return data_buff;
   0185 8B 82               604 	mov	dpl,r3
   0187 8C 83               605 	mov	dph,r4
   0189 22                  606 	ret
                            607 ;------------------------------------------------------------
                            608 ;Allocation info for local variables in function 'delay_5'
                            609 ;------------------------------------------------------------
                            610 ;i                         Allocated to registers r2 
                            611 ;------------------------------------------------------------
                            612 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:99: void delay_5(void)
                            613 ;	-----------------------------------------
                            614 ;	 function delay_5
                            615 ;	-----------------------------------------
   018A                     616 _delay_5:
                            617 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:102: for(i = 0; i < 5; i ++);
   018A 7A 05               618 	mov	r2,#0x05
   018C                     619 00103$:
   018C DA FE               620 	djnz	r2,00103$
   018E 22                  621 	ret
                            622 ;------------------------------------------------------------
                            623 ;Allocation info for local variables in function 'BitExtract'
                            624 ;------------------------------------------------------------
                            625 ;bits                      Allocated to registers r2 
                            626 ;i                         Allocated to registers r3 
                            627 ;------------------------------------------------------------
                            628 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:107: void BitExtract(UC bits)
                            629 ;	-----------------------------------------
                            630 ;	 function BitExtract
                            631 ;	-----------------------------------------
   018F                     632 _BitExtract:
   018F AA 82               633 	mov	r2,dpl
                            634 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:111: for (i = 0; i < 8; i++) {
   0191 7B 00               635 	mov	r3,#0x00
   0193                     636 00101$:
   0193 BB 08 00            637 	cjne	r3,#0x08,00110$
   0196                     638 00110$:
   0196 50 0C               639 	jnc	00105$
                            640 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:112: CLK = 0;
   0198 C2 A0               641 	clr	_P2_0
                            642 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:113: DIN = (bits & 0x80);
                            643 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:114: bits <<= 1;
   019A EA                  644 	mov	a,r2
   019B 2A                  645 	add	a,r2
   019C 92 A1               646 	mov	_P2_1,c
   019E FA                  647 	mov	r2,a
                            648 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:115: CLK = 1;
   019F D2 A0               649 	setb	_P2_0
                            650 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:111: for (i = 0; i < 8; i++) {
   01A1 0B                  651 	inc	r3
   01A2 80 EF               652 	sjmp	00101$
   01A4                     653 00105$:
   01A4 22                  654 	ret
                            655 ;------------------------------------------------------------
                            656 ;Allocation info for local variables in function 'SerialDIN'
                            657 ;------------------------------------------------------------
                            658 ;dat                       Allocated to stack - offset -3
                            659 ;address                   Allocated to registers r2 
                            660 ;------------------------------------------------------------
                            661 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:119: void SerialDIN(UC address, UC dat)
                            662 ;	-----------------------------------------
                            663 ;	 function SerialDIN
                            664 ;	-----------------------------------------
   01A5                     665 _SerialDIN:
   01A5 C0 08               666 	push	_bp
   01A7 85 81 08            667 	mov	_bp,sp
   01AA AA 82               668 	mov	r2,dpl
                            669 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:121: LOAD_MAX = 0;
   01AC C2 A4               670 	clr	_P2_4
                            671 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:122: BitExtract(address);
   01AE 8A 82               672 	mov	dpl,r2
   01B0 12 01 8F            673 	lcall	_BitExtract
                            674 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:123: BitExtract(dat);
   01B3 E5 08               675 	mov	a,_bp
   01B5 24 FD               676 	add	a,#0xfd
   01B7 F8                  677 	mov	r0,a
   01B8 86 82               678 	mov	dpl,@r0
   01BA 12 01 8F            679 	lcall	_BitExtract
                            680 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:124: LOAD_MAX = 1;
   01BD D2 A4               681 	setb	_P2_4
   01BF D0 08               682 	pop	_bp
   01C1 22                  683 	ret
                            684 ;------------------------------------------------------------
                            685 ;Allocation info for local variables in function 'SSD_Number'
                            686 ;------------------------------------------------------------
                            687 ;num                       Allocated to stack - offset 1
                            688 ;i                         Allocated to registers r4 r5 
                            689 ;n                         Allocated to registers r6 r7 
                            690 ;------------------------------------------------------------
                            691 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:127: void SSD_Number(long num)
                            692 ;	-----------------------------------------
                            693 ;	 function SSD_Number
                            694 ;	-----------------------------------------
   01C2                     695 _SSD_Number:
   01C2 C0 08               696 	push	_bp
   01C4 85 81 08            697 	mov	_bp,sp
   01C7 C0 82               698 	push	dpl
   01C9 C0 83               699 	push	dph
   01CB C0 F0               700 	push	b
   01CD C0 E0               701 	push	acc
                            702 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:131: n = num > 0 ? num : num * -1;
   01CF A8 08               703 	mov	r0,_bp
   01D1 08                  704 	inc	r0
   01D2 C3                  705 	clr	c
   01D3 E4                  706 	clr	a
   01D4 96                  707 	subb	a,@r0
   01D5 E4                  708 	clr	a
   01D6 08                  709 	inc	r0
   01D7 96                  710 	subb	a,@r0
   01D8 E4                  711 	clr	a
   01D9 08                  712 	inc	r0
   01DA 96                  713 	subb	a,@r0
   01DB 74 80               714 	mov	a,#(0x00 ^ 0x80)
   01DD 08                  715 	inc	r0
   01DE 86 F0               716 	mov	b,@r0
   01E0 63 F0 80            717 	xrl	b,#0x80
   01E3 95 F0               718 	subb	a,b
   01E5 50 10               719 	jnc	00115$
   01E7 A8 08               720 	mov	r0,_bp
   01E9 08                  721 	inc	r0
   01EA 86 06               722 	mov	ar6,@r0
   01EC 08                  723 	inc	r0
   01ED 86 07               724 	mov	ar7,@r0
   01EF 08                  725 	inc	r0
   01F0 86 02               726 	mov	ar2,@r0
   01F2 08                  727 	inc	r0
   01F3 86 03               728 	mov	ar3,@r0
   01F5 80 13               729 	sjmp	00116$
   01F7                     730 00115$:
   01F7 A8 08               731 	mov	r0,_bp
   01F9 08                  732 	inc	r0
   01FA C3                  733 	clr	c
   01FB E4                  734 	clr	a
   01FC 96                  735 	subb	a,@r0
   01FD FE                  736 	mov	r6,a
   01FE 08                  737 	inc	r0
   01FF E4                  738 	clr	a
   0200 96                  739 	subb	a,@r0
   0201 FF                  740 	mov	r7,a
   0202 08                  741 	inc	r0
   0203 E4                  742 	clr	a
   0204 96                  743 	subb	a,@r0
   0205 FA                  744 	mov	r2,a
   0206 08                  745 	inc	r0
   0207 E4                  746 	clr	a
   0208 96                  747 	subb	a,@r0
   0209 FB                  748 	mov	r3,a
   020A                     749 00116$:
                            750 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:133: for (i = 1; i <= 8 && n; i++) {
   020A 7A 01               751 	mov	r2,#0x01
   020C 7B 00               752 	mov	r3,#0x00
   020E                     753 00105$:
   020E C3                  754 	clr	c
   020F 74 08               755 	mov	a,#0x08
   0211 9A                  756 	subb	a,r2
   0212 E4                  757 	clr	a
   0213 9B                  758 	subb	a,r3
   0214 40 6A               759 	jc	00125$
   0216 EE                  760 	mov	a,r6
   0217 4F                  761 	orl	a,r7
   0218 60 66               762 	jz	00125$
                            763 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:134: SerialDIN(i, SSD_CODE[n % 10]);
   021A C0 02               764 	push	ar2
   021C C0 03               765 	push	ar3
   021E C0 06               766 	push	ar6
   0220 C0 07               767 	push	ar7
   0222 74 0A               768 	mov	a,#0x0A
   0224 C0 E0               769 	push	acc
   0226 E4                  770 	clr	a
   0227 C0 E0               771 	push	acc
   0229 8E 82               772 	mov	dpl,r6
   022B 8F 83               773 	mov	dph,r7
   022D 12 0B 73            774 	lcall	__moduint
   0230 AC 82               775 	mov	r4,dpl
   0232 15 81               776 	dec	sp
   0234 15 81               777 	dec	sp
   0236 D0 07               778 	pop	ar7
   0238 D0 06               779 	pop	ar6
   023A D0 03               780 	pop	ar3
   023C D0 02               781 	pop	ar2
   023E EC                  782 	mov	a,r4
   023F 24 21               783 	add	a,#_SSD_CODE
   0241 F8                  784 	mov	r0,a
   0242 86 04               785 	mov	ar4,@r0
   0244 8A 05               786 	mov	ar5,r2
   0246 C0 02               787 	push	ar2
   0248 C0 03               788 	push	ar3
   024A C0 06               789 	push	ar6
   024C C0 07               790 	push	ar7
   024E C0 04               791 	push	ar4
   0250 8D 82               792 	mov	dpl,r5
   0252 12 01 A5            793 	lcall	_SerialDIN
   0255 15 81               794 	dec	sp
   0257 D0 07               795 	pop	ar7
   0259 D0 06               796 	pop	ar6
                            797 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:135: n /= 10;
   025B 74 0A               798 	mov	a,#0x0A
   025D C0 E0               799 	push	acc
   025F E4                  800 	clr	a
   0260 C0 E0               801 	push	acc
   0262 8E 82               802 	mov	dpl,r6
   0264 8F 83               803 	mov	dph,r7
   0266 12 08 ED            804 	lcall	__divuint
   0269 AC 82               805 	mov	r4,dpl
   026B AD 83               806 	mov	r5,dph
   026D 15 81               807 	dec	sp
   026F 15 81               808 	dec	sp
   0271 D0 03               809 	pop	ar3
   0273 D0 02               810 	pop	ar2
   0275 8C 06               811 	mov	ar6,r4
   0277 8D 07               812 	mov	ar7,r5
                            813 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:133: for (i = 1; i <= 8 && n; i++) {
   0279 0A                  814 	inc	r2
   027A BA 00 91            815 	cjne	r2,#0x00,00105$
   027D 0B                  816 	inc	r3
   027E 80 8E               817 	sjmp	00105$
   0280                     818 00125$:
   0280 8A 04               819 	mov	ar4,r2
   0282 8B 05               820 	mov	ar5,r3
                            821 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:137: if (num < 10 && i <= 8) {
   0284 A8 08               822 	mov	r0,_bp
   0286 08                  823 	inc	r0
   0287 C3                  824 	clr	c
   0288 E6                  825 	mov	a,@r0
   0289 94 0A               826 	subb	a,#0x0A
   028B 08                  827 	inc	r0
   028C E6                  828 	mov	a,@r0
   028D 94 00               829 	subb	a,#0x00
   028F 08                  830 	inc	r0
   0290 E6                  831 	mov	a,@r0
   0291 94 00               832 	subb	a,#0x00
   0293 08                  833 	inc	r0
   0294 E6                  834 	mov	a,@r0
   0295 64 80               835 	xrl	a,#0x80
   0297 94 80               836 	subb	a,#0x80
   0299 50 22               837 	jnc	00102$
   029B C3                  838 	clr	c
   029C 74 08               839 	mov	a,#0x08
   029E 9A                  840 	subb	a,r2
   029F E4                  841 	clr	a
   02A0 9B                  842 	subb	a,r3
   02A1 40 1A               843 	jc	00102$
                            844 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:138: SerialDIN(i++, 0x01);
   02A3 74 01               845 	mov	a,#0x01
   02A5 2A                  846 	add	a,r2
   02A6 FC                  847 	mov	r4,a
   02A7 E4                  848 	clr	a
   02A8 3B                  849 	addc	a,r3
   02A9 FD                  850 	mov	r5,a
   02AA C0 04               851 	push	ar4
   02AC C0 05               852 	push	ar5
   02AE 74 01               853 	mov	a,#0x01
   02B0 C0 E0               854 	push	acc
   02B2 8A 82               855 	mov	dpl,r2
   02B4 12 01 A5            856 	lcall	_SerialDIN
   02B7 15 81               857 	dec	sp
   02B9 D0 05               858 	pop	ar5
   02BB D0 04               859 	pop	ar4
   02BD                     860 00102$:
                            861 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:140: for (i++; i <= 8; i++)
   02BD 0C                  862 	inc	r4
   02BE BC 00 01            863 	cjne	r4,#0x00,00133$
   02C1 0D                  864 	inc	r5
   02C2                     865 00133$:
   02C2 8C 02               866 	mov	ar2,r4
   02C4 8D 03               867 	mov	ar3,r5
   02C6                     868 00109$:
   02C6 C3                  869 	clr	c
   02C7 74 08               870 	mov	a,#0x08
   02C9 9A                  871 	subb	a,r2
   02CA E4                  872 	clr	a
   02CB 9B                  873 	subb	a,r3
   02CC 40 1B               874 	jc	00113$
                            875 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:141: SerialDIN(i, 0);
   02CE 8A 04               876 	mov	ar4,r2
   02D0 C0 02               877 	push	ar2
   02D2 C0 03               878 	push	ar3
   02D4 E4                  879 	clr	a
   02D5 C0 E0               880 	push	acc
   02D7 8C 82               881 	mov	dpl,r4
   02D9 12 01 A5            882 	lcall	_SerialDIN
   02DC 15 81               883 	dec	sp
   02DE D0 03               884 	pop	ar3
   02E0 D0 02               885 	pop	ar2
                            886 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:140: for (i++; i <= 8; i++)
   02E2 0A                  887 	inc	r2
   02E3 BA 00 E0            888 	cjne	r2,#0x00,00109$
   02E6 0B                  889 	inc	r3
   02E7 80 DD               890 	sjmp	00109$
   02E9                     891 00113$:
   02E9 85 08 81            892 	mov	sp,_bp
   02EC D0 08               893 	pop	_bp
   02EE 22                  894 	ret
                            895 ;------------------------------------------------------------
                            896 ;Allocation info for local variables in function 'SSD_Show'
                            897 ;------------------------------------------------------------
                            898 ;num                       Allocated to stack - offset 1
                            899 ;i                         Allocated to registers r5 r6 
                            900 ;------------------------------------------------------------
                            901 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:144: void SSD_Show(UC* num)
                            902 ;	-----------------------------------------
                            903 ;	 function SSD_Show
                            904 ;	-----------------------------------------
   02EF                     905 _SSD_Show:
   02EF C0 08               906 	push	_bp
   02F1 85 81 08            907 	mov	_bp,sp
   02F4 C0 82               908 	push	dpl
   02F6 C0 83               909 	push	dph
   02F8 C0 F0               910 	push	b
                            911 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:148: for (i = 1; i <= 8; i++)
   02FA 7D 01               912 	mov	r5,#0x01
   02FC 7E 00               913 	mov	r6,#0x00
   02FE                     914 00101$:
   02FE C3                  915 	clr	c
   02FF 74 08               916 	mov	a,#0x08
   0301 9D                  917 	subb	a,r5
   0302 E4                  918 	clr	a
   0303 9E                  919 	subb	a,r6
   0304 40 3D               920 	jc	00105$
                            921 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:149: SerialDIN(i, SSD_CODE[num[8 - i]]);
   0306 74 08               922 	mov	a,#0x08
   0308 C3                  923 	clr	c
   0309 9D                  924 	subb	a,r5
   030A FF                  925 	mov	r7,a
   030B E4                  926 	clr	a
   030C 9E                  927 	subb	a,r6
   030D FA                  928 	mov	r2,a
   030E A8 08               929 	mov	r0,_bp
   0310 08                  930 	inc	r0
   0311 EF                  931 	mov	a,r7
   0312 26                  932 	add	a,@r0
   0313 FF                  933 	mov	r7,a
   0314 EA                  934 	mov	a,r2
   0315 08                  935 	inc	r0
   0316 36                  936 	addc	a,@r0
   0317 FA                  937 	mov	r2,a
   0318 08                  938 	inc	r0
   0319 86 03               939 	mov	ar3,@r0
   031B 8F 82               940 	mov	dpl,r7
   031D 8A 83               941 	mov	dph,r2
   031F 8B F0               942 	mov	b,r3
   0321 12 0B 1A            943 	lcall	__gptrget
   0324 24 21               944 	add	a,#_SSD_CODE
   0326 F8                  945 	mov	r0,a
   0327 86 02               946 	mov	ar2,@r0
   0329 8D 03               947 	mov	ar3,r5
   032B C0 05               948 	push	ar5
   032D C0 06               949 	push	ar6
   032F C0 02               950 	push	ar2
   0331 8B 82               951 	mov	dpl,r3
   0333 12 01 A5            952 	lcall	_SerialDIN
   0336 15 81               953 	dec	sp
   0338 D0 06               954 	pop	ar6
   033A D0 05               955 	pop	ar5
                            956 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:148: for (i = 1; i <= 8; i++)
   033C 0D                  957 	inc	r5
   033D BD 00 BE            958 	cjne	r5,#0x00,00101$
   0340 0E                  959 	inc	r6
   0341 80 BB               960 	sjmp	00101$
   0343                     961 00105$:
   0343 85 08 81            962 	mov	sp,_bp
   0346 D0 08               963 	pop	_bp
   0348 22                  964 	ret
                            965 ;------------------------------------------------------------
                            966 ;Allocation info for local variables in function 'SSD_Show_Scroll'
                            967 ;------------------------------------------------------------
                            968 ;num                       Allocated to stack - offset 1
                            969 ;i                         Allocated to registers r5 r6 
                            970 ;shift                     Allocated with name '_SSD_Show_Scroll_shift_1_1'
                            971 ;------------------------------------------------------------
                            972 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:152: void SSD_Show_Scroll(UC* num)
                            973 ;	-----------------------------------------
                            974 ;	 function SSD_Show_Scroll
                            975 ;	-----------------------------------------
   0349                     976 _SSD_Show_Scroll:
   0349 C0 08               977 	push	_bp
   034B 85 81 08            978 	mov	_bp,sp
   034E C0 82               979 	push	dpl
   0350 C0 83               980 	push	dph
   0352 C0 F0               981 	push	b
                            982 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:157: for (i = 1; i <= 8; i++)
   0354 7D 01               983 	mov	r5,#0x01
   0356 7E 00               984 	mov	r6,#0x00
   0358                     985 00103$:
   0358 C3                  986 	clr	c
   0359 74 08               987 	mov	a,#0x08
   035B 9D                  988 	subb	a,r5
   035C E4                  989 	clr	a
   035D 9E                  990 	subb	a,r6
   035E 40 4B               991 	jc	00106$
                            992 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:158: SerialDIN(i, SSD_CODE[num[(8 - i + shift) % 8]]);
   0360 74 08               993 	mov	a,#0x08
   0362 C3                  994 	clr	c
   0363 9D                  995 	subb	a,r5
   0364 FF                  996 	mov	r7,a
   0365 E4                  997 	clr	a
   0366 9E                  998 	subb	a,r6
   0367 FA                  999 	mov	r2,a
   0368 AB 31              1000 	mov	r3,_SSD_Show_Scroll_shift_1_1
   036A 7C 00              1001 	mov	r4,#0x00
   036C EB                 1002 	mov	a,r3
   036D 2F                 1003 	add	a,r7
   036E FF                 1004 	mov	r7,a
   036F EC                 1005 	mov	a,r4
   0370 3A                 1006 	addc	a,r2
   0371 53 07 07           1007 	anl	ar7,#0x07
   0374 7A 00              1008 	mov	r2,#0x00
   0376 A8 08              1009 	mov	r0,_bp
   0378 08                 1010 	inc	r0
   0379 EF                 1011 	mov	a,r7
   037A 26                 1012 	add	a,@r0
   037B FF                 1013 	mov	r7,a
   037C EA                 1014 	mov	a,r2
   037D 08                 1015 	inc	r0
   037E 36                 1016 	addc	a,@r0
   037F FA                 1017 	mov	r2,a
   0380 08                 1018 	inc	r0
   0381 86 03              1019 	mov	ar3,@r0
   0383 8F 82              1020 	mov	dpl,r7
   0385 8A 83              1021 	mov	dph,r2
   0387 8B F0              1022 	mov	b,r3
   0389 12 0B 1A           1023 	lcall	__gptrget
   038C 24 21              1024 	add	a,#_SSD_CODE
   038E F8                 1025 	mov	r0,a
   038F 86 02              1026 	mov	ar2,@r0
   0391 8D 03              1027 	mov	ar3,r5
   0393 C0 05              1028 	push	ar5
   0395 C0 06              1029 	push	ar6
   0397 C0 02              1030 	push	ar2
   0399 8B 82              1031 	mov	dpl,r3
   039B 12 01 A5           1032 	lcall	_SerialDIN
   039E 15 81              1033 	dec	sp
   03A0 D0 06              1034 	pop	ar6
   03A2 D0 05              1035 	pop	ar5
                           1036 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:157: for (i = 1; i <= 8; i++)
   03A4 0D                 1037 	inc	r5
   03A5 BD 00 B0           1038 	cjne	r5,#0x00,00103$
   03A8 0E                 1039 	inc	r6
   03A9 80 AD              1040 	sjmp	00103$
   03AB                    1041 00106$:
                           1042 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:159: shift++;
   03AB 05 31              1043 	inc	_SSD_Show_Scroll_shift_1_1
                           1044 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:160: if (shift == 8) shift = 0;
   03AD 74 08              1045 	mov	a,#0x08
   03AF B5 31 03           1046 	cjne	a,_SSD_Show_Scroll_shift_1_1,00102$
   03B2 75 31 00           1047 	mov	_SSD_Show_Scroll_shift_1_1,#0x00
   03B5                    1048 00102$:
                           1049 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:162: delay_ms(1000);
   03B5 90 03 E8           1050 	mov	dptr,#0x03E8
   03B8 12 00 D9           1051 	lcall	_delay_ms
   03BB 85 08 81           1052 	mov	sp,_bp
   03BE D0 08              1053 	pop	_bp
   03C0 22                 1054 	ret
                           1055 ;------------------------------------------------------------
                           1056 ;Allocation info for local variables in function 'SSD_INIT'
                           1057 ;------------------------------------------------------------
                           1058 ;i                         Allocated to registers r2 
                           1059 ;------------------------------------------------------------
                           1060 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:165: void SSD_INIT()
                           1061 ;	-----------------------------------------
                           1062 ;	 function SSD_INIT
                           1063 ;	-----------------------------------------
   03C1                    1064 _SSD_INIT:
                           1065 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:169: SerialDIN(SHUTDOWN,     0x01);  // Normal mode (0xX1)
   03C1 74 01              1066 	mov	a,#0x01
   03C3 C0 E0              1067 	push	acc
   03C5 75 82 0C           1068 	mov	dpl,#0x0C
   03C8 12 01 A5           1069 	lcall	_SerialDIN
   03CB 15 81              1070 	dec	sp
                           1071 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:170: SerialDIN(DISPLAY_TEST, 0x00);  // Overwrite SHUTDOWN
   03CD E4                 1072 	clr	a
   03CE C0 E0              1073 	push	acc
   03D0 75 82 0F           1074 	mov	dpl,#0x0F
   03D3 12 01 A5           1075 	lcall	_SerialDIN
   03D6 15 81              1076 	dec	sp
                           1077 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:171: SerialDIN(DECODE_MODE,  0x00);  // no decoding
   03D8 E4                 1078 	clr	a
   03D9 C0 E0              1079 	push	acc
   03DB 75 82 09           1080 	mov	dpl,#0x09
   03DE 12 01 A5           1081 	lcall	_SerialDIN
   03E1 15 81              1082 	dec	sp
                           1083 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:172: SerialDIN(SCAN_LIMIT,   0x07);  // use all 8 digits
   03E3 74 07              1084 	mov	a,#0x07
   03E5 C0 E0              1085 	push	acc
   03E7 75 82 0B           1086 	mov	dpl,#0x0B
   03EA 12 01 A5           1087 	lcall	_SerialDIN
   03ED 15 81              1088 	dec	sp
                           1089 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:173: SerialDIN(INTENSITY,    0x0E);  // brightness
   03EF 74 0E              1090 	mov	a,#0x0E
   03F1 C0 E0              1091 	push	acc
   03F3 75 82 0A           1092 	mov	dpl,#0x0A
   03F6 12 01 A5           1093 	lcall	_SerialDIN
   03F9 15 81              1094 	dec	sp
                           1095 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:175: for (i = 1; i <= 8; i++)
   03FB 7A 01              1096 	mov	r2,#0x01
   03FD                    1097 00101$:
   03FD 74 08              1098 	mov	a,#0x08
   03FF B5 02 00           1099 	cjne	a,ar2,00110$
   0402                    1100 00110$:
   0402 40 11              1101 	jc	00105$
                           1102 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:176: SerialDIN(i, 0);
   0404 C0 02              1103 	push	ar2
   0406 E4                 1104 	clr	a
   0407 C0 E0              1105 	push	acc
   0409 8A 82              1106 	mov	dpl,r2
   040B 12 01 A5           1107 	lcall	_SerialDIN
   040E 15 81              1108 	dec	sp
   0410 D0 02              1109 	pop	ar2
                           1110 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/adc_ssd.h:175: for (i = 1; i <= 8; i++)
   0412 0A                 1111 	inc	r2
   0413 80 E8              1112 	sjmp	00101$
   0415                    1113 00105$:
   0415 22                 1114 	ret
                           1115 ;------------------------------------------------------------
                           1116 ;Allocation info for local variables in function 'I2C_Start'
                           1117 ;------------------------------------------------------------
                           1118 ;------------------------------------------------------------
                           1119 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:24: void I2C_Start(void)
                           1120 ;	-----------------------------------------
                           1121 ;	 function I2C_Start
                           1122 ;	-----------------------------------------
   0416                    1123 _I2C_Start:
                           1124 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:26: SDA = 0;                    
   0416 C2 81              1125 	clr	_P0_1
                           1126 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:27: delay_i2c();                  
   0418 12 05 39           1127 	lcall	_delay_i2c
                           1128 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:28: SCL = 0;                    
   041B C2 80              1129 	clr	_P0_0
                           1130 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:29: delay_i2c();                  
   041D 02 05 39           1131 	ljmp	_delay_i2c
                           1132 ;------------------------------------------------------------
                           1133 ;Allocation info for local variables in function 'I2C_Stop'
                           1134 ;------------------------------------------------------------
                           1135 ;------------------------------------------------------------
                           1136 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:34: void I2C_Stop(void)
                           1137 ;	-----------------------------------------
                           1138 ;	 function I2C_Stop
                           1139 ;	-----------------------------------------
   0420                    1140 _I2C_Stop:
                           1141 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:36: SDA = 0;                    
   0420 C2 81              1142 	clr	_P0_1
                           1143 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:37: delay_i2c();                  
   0422 12 05 39           1144 	lcall	_delay_i2c
                           1145 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:38: SCL = 1;                    
   0425 D2 80              1146 	setb	_P0_0
                           1147 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:39: delay_i2c();                  
   0427 12 05 39           1148 	lcall	_delay_i2c
                           1149 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:40: SDA = 1;                    
   042A D2 81              1150 	setb	_P0_1
                           1151 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:41: delay_i2c();                  
   042C 02 05 39           1152 	ljmp	_delay_i2c
                           1153 ;------------------------------------------------------------
                           1154 ;Allocation info for local variables in function 'I2C_SendACK'
                           1155 ;------------------------------------------------------------
                           1156 ;ack                       Allocated to registers 
                           1157 ;------------------------------------------------------------
                           1158 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:46: void I2C_SendACK(__bit ack)
                           1159 ;	-----------------------------------------
                           1160 ;	 function I2C_SendACK
                           1161 ;	-----------------------------------------
   042F                    1162 _I2C_SendACK:
   042F A2 00              1163 	mov	c,b0
   0431 92 81              1164 	mov	_P0_1,c
                           1165 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:49: delay_i2c();                  
   0433 12 05 39           1166 	lcall	_delay_i2c
                           1167 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:50: SCL = 1;                    
   0436 D2 80              1168 	setb	_P0_0
                           1169 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:51: delay_i2c();                  
   0438 12 05 39           1170 	lcall	_delay_i2c
                           1171 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:52: SCL = 0;                    
   043B C2 80              1172 	clr	_P0_0
                           1173 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:53: delay_i2c();                  
   043D 02 05 39           1174 	ljmp	_delay_i2c
                           1175 ;------------------------------------------------------------
                           1176 ;Allocation info for local variables in function 'I2C_RecvACK'
                           1177 ;------------------------------------------------------------
                           1178 ;------------------------------------------------------------
                           1179 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:58: __sbit I2C_RecvACK()
                           1180 ;	-----------------------------------------
                           1181 ;	 function I2C_RecvACK
                           1182 ;	-----------------------------------------
   0440                    1183 _I2C_RecvACK:
                           1184 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:60: delay_i2c();  
   0440 12 05 39           1185 	lcall	_delay_i2c
                           1186 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:61: SDA = 1;                 
   0443 D2 81              1187 	setb	_P0_1
                           1188 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:62: delay_i2c();      
   0445 12 05 39           1189 	lcall	_delay_i2c
                           1190 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:63: SCL = 1;    
   0448 D2 80              1191 	setb	_P0_0
                           1192 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:64: delay_i2c();                  
   044A 12 05 39           1193 	lcall	_delay_i2c
                           1194 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:65: CY = SDA;                   
   044D A2 81              1195 	mov	c,_P0_1
   044F 92 D7              1196 	mov	_CY,c
                           1197 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:66: delay_i2c();                  
   0451 12 05 39           1198 	lcall	_delay_i2c
                           1199 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:67: SCL = 0;                    
   0454 C2 80              1200 	clr	_P0_0
                           1201 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:68: delay_i2c();                  
   0456 12 05 39           1202 	lcall	_delay_i2c
                           1203 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:69: return CY;
   0459 A2 D7              1204 	mov	c,_CY
   045B 22                 1205 	ret
                           1206 ;------------------------------------------------------------
                           1207 ;Allocation info for local variables in function 'I2C_SendByte'
                           1208 ;------------------------------------------------------------
                           1209 ;dat                       Allocated to registers r2 
                           1210 ;i                         Allocated to registers r3 
                           1211 ;------------------------------------------------------------
                           1212 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:75: void I2C_SendByte(uint8_t dat)
                           1213 ;	-----------------------------------------
                           1214 ;	 function I2C_SendByte
                           1215 ;	-----------------------------------------
   045C                    1216 _I2C_SendByte:
   045C AA 82              1217 	mov	r2,dpl
                           1218 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:78: for (i=0; i<8; i++)         
   045E 7B 00              1219 	mov	r3,#0x00
   0460                    1220 00104$:
   0460 BB 08 00           1221 	cjne	r3,#0x08,00114$
   0463                    1222 00114$:
   0463 50 25              1223 	jnc	00107$
                           1224 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:80: if(dat & 0x80)
   0465 EA                 1225 	mov	a,r2
   0466 30 E7 04           1226 	jnb	acc.7,00102$
                           1227 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:81: SDA = 1;               
   0469 D2 81              1228 	setb	_P0_1
   046B 80 02              1229 	sjmp	00103$
   046D                    1230 00102$:
                           1231 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:83: SDA = 0;               
   046D C2 81              1232 	clr	_P0_1
   046F                    1233 00103$:
                           1234 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:84: delay_i2c();                  
   046F C0 02              1235 	push	ar2
   0471 C0 03              1236 	push	ar3
   0473 12 05 39           1237 	lcall	_delay_i2c
                           1238 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:85: SCL = 1;                
   0476 D2 80              1239 	setb	_P0_0
                           1240 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:86: delay_i2c();                  
   0478 12 05 39           1241 	lcall	_delay_i2c
                           1242 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:87: SCL = 0;                
   047B C2 80              1243 	clr	_P0_0
                           1244 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:88: delay_i2c();                  
   047D 12 05 39           1245 	lcall	_delay_i2c
   0480 D0 03              1246 	pop	ar3
   0482 D0 02              1247 	pop	ar2
                           1248 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:89: dat <<= 1;              
   0484 EA                 1249 	mov	a,r2
   0485 2A                 1250 	add	a,r2
   0486 FA                 1251 	mov	r2,a
                           1252 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:78: for (i=0; i<8; i++)         
   0487 0B                 1253 	inc	r3
   0488 80 D6              1254 	sjmp	00104$
   048A                    1255 00107$:
                           1256 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:91: I2C_RecvACK();
   048A 02 04 40           1257 	ljmp	_I2C_RecvACK
                           1258 ;------------------------------------------------------------
                           1259 ;Allocation info for local variables in function 'I2C_RecvByte'
                           1260 ;------------------------------------------------------------
                           1261 ;i                         Allocated to registers r3 
                           1262 ;dat                       Allocated to registers r2 
                           1263 ;------------------------------------------------------------
                           1264 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:96: uint8_t I2C_RecvByte()
                           1265 ;	-----------------------------------------
                           1266 ;	 function I2C_RecvByte
                           1267 ;	-----------------------------------------
   048D                    1268 _I2C_RecvByte:
                           1269 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:99: uint8_t dat = 0;
   048D 7A 00              1270 	mov	r2,#0x00
                           1271 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:100: SDA = 1;                    
   048F D2 81              1272 	setb	_P0_1
                           1273 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:101: for (i=0; i<8; i++)         
   0491 7B 00              1274 	mov	r3,#0x00
   0493                    1275 00101$:
   0493 BB 08 00           1276 	cjne	r3,#0x08,00110$
   0496                    1277 00110$:
   0496 50 29              1278 	jnc	00104$
                           1279 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:103: dat <<= 1;
   0498 EA                 1280 	mov	a,r2
   0499 2A                 1281 	add	a,r2
   049A FA                 1282 	mov	r2,a
                           1283 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:104: SCL = 1;                
   049B D2 80              1284 	setb	_P0_0
                           1285 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:105: delay_i2c();                  
   049D C0 02              1286 	push	ar2
   049F C0 03              1287 	push	ar3
   04A1 12 05 39           1288 	lcall	_delay_i2c
   04A4 D0 03              1289 	pop	ar3
   04A6 D0 02              1290 	pop	ar2
                           1291 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:106: dat |= SDA;             
   04A8 A2 81              1292 	mov	c,_P0_1
   04AA E4                 1293 	clr	a
   04AB 33                 1294 	rlc	a
   04AC 42 02              1295 	orl	ar2,a
                           1296 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:107: delay_i2c();                                
   04AE C0 02              1297 	push	ar2
   04B0 C0 03              1298 	push	ar3
   04B2 12 05 39           1299 	lcall	_delay_i2c
                           1300 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:108: SCL = 0;                
   04B5 C2 80              1301 	clr	_P0_0
                           1302 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:109: delay_i2c();                  
   04B7 12 05 39           1303 	lcall	_delay_i2c
   04BA D0 03              1304 	pop	ar3
   04BC D0 02              1305 	pop	ar2
                           1306 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:101: for (i=0; i<8; i++)         
   04BE 0B                 1307 	inc	r3
   04BF 80 D2              1308 	sjmp	00101$
   04C1                    1309 00104$:
                           1310 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:111: return dat;
   04C1 8A 82              1311 	mov	dpl,r2
   04C3 22                 1312 	ret
                           1313 ;------------------------------------------------------------
                           1314 ;Allocation info for local variables in function 'Single_WriteI2C'
                           1315 ;------------------------------------------------------------
                           1316 ;REG_Address               Allocated to stack - offset -3
                           1317 ;REG_data                  Allocated to stack - offset -4
                           1318 ;SlaveAddress              Allocated to registers r2 
                           1319 ;------------------------------------------------------------
                           1320 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:116: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data)
                           1321 ;	-----------------------------------------
                           1322 ;	 function Single_WriteI2C
                           1323 ;	-----------------------------------------
   04C4                    1324 _Single_WriteI2C:
   04C4 C0 08              1325 	push	_bp
   04C6 85 81 08           1326 	mov	_bp,sp
   04C9 AA 82              1327 	mov	r2,dpl
                           1328 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:118: I2C_Start();                  
   04CB C0 02              1329 	push	ar2
   04CD 12 04 16           1330 	lcall	_I2C_Start
   04D0 D0 02              1331 	pop	ar2
                           1332 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:119: I2C_SendByte(SlaveAddress);   
   04D2 8A 82              1333 	mov	dpl,r2
   04D4 12 04 5C           1334 	lcall	_I2C_SendByte
                           1335 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:120: I2C_SendByte(REG_Address);    
   04D7 E5 08              1336 	mov	a,_bp
   04D9 24 FD              1337 	add	a,#0xfd
   04DB F8                 1338 	mov	r0,a
   04DC 86 82              1339 	mov	dpl,@r0
   04DE 12 04 5C           1340 	lcall	_I2C_SendByte
                           1341 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:121: I2C_SendByte(REG_data);       
   04E1 E5 08              1342 	mov	a,_bp
   04E3 24 FC              1343 	add	a,#0xfc
   04E5 F8                 1344 	mov	r0,a
   04E6 86 82              1345 	mov	dpl,@r0
   04E8 12 04 5C           1346 	lcall	_I2C_SendByte
                           1347 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:122: I2C_Stop();                   
   04EB 12 04 20           1348 	lcall	_I2C_Stop
   04EE D0 08              1349 	pop	_bp
   04F0 22                 1350 	ret
                           1351 ;------------------------------------------------------------
                           1352 ;Allocation info for local variables in function 'Single_ReadI2C'
                           1353 ;------------------------------------------------------------
                           1354 ;REG_Address               Allocated to stack - offset -3
                           1355 ;SlaveAddress              Allocated to registers r2 
                           1356 ;REG_data                  Allocated to registers r2 
                           1357 ;------------------------------------------------------------
                           1358 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:127: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
                           1359 ;	-----------------------------------------
                           1360 ;	 function Single_ReadI2C
                           1361 ;	-----------------------------------------
   04F1                    1362 _Single_ReadI2C:
   04F1 C0 08              1363 	push	_bp
   04F3 85 81 08           1364 	mov	_bp,sp
   04F6 AA 82              1365 	mov	r2,dpl
                           1366 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:130: I2C_Start();                   
   04F8 C0 02              1367 	push	ar2
   04FA 12 04 16           1368 	lcall	_I2C_Start
   04FD D0 02              1369 	pop	ar2
                           1370 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:131: I2C_SendByte(SlaveAddress);    
   04FF 8A 82              1371 	mov	dpl,r2
   0501 C0 02              1372 	push	ar2
   0503 12 04 5C           1373 	lcall	_I2C_SendByte
                           1374 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:132: I2C_SendByte(REG_Address);       
   0506 E5 08              1375 	mov	a,_bp
   0508 24 FD              1376 	add	a,#0xfd
   050A F8                 1377 	mov	r0,a
   050B 86 82              1378 	mov	dpl,@r0
   050D 12 04 5C           1379 	lcall	_I2C_SendByte
                           1380 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:133: I2C_Stop();                    
   0510 12 04 20           1381 	lcall	_I2C_Stop
                           1382 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:135: I2C_Start();                   
   0513 12 04 16           1383 	lcall	_I2C_Start
   0516 D0 02              1384 	pop	ar2
                           1385 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:136: I2C_SendByte(SlaveAddress|0x01);  
   0518 74 01              1386 	mov	a,#0x01
   051A 4A                 1387 	orl	a,r2
   051B F5 82              1388 	mov	dpl,a
   051D 12 04 5C           1389 	lcall	_I2C_SendByte
                           1390 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:137: REG_data=I2C_RecvByte();       
   0520 12 04 8D           1391 	lcall	_I2C_RecvByte
   0523 AA 82              1392 	mov	r2,dpl
                           1393 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:138: I2C_SendACK(1);                
   0525 D2 F0              1394 	setb	b[0]
   0527 C0 02              1395 	push	ar2
   0529 85 F0 20           1396 	mov	bits,b
   052C 12 04 2F           1397 	lcall	_I2C_SendACK
                           1398 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:139: I2C_Stop();                    
   052F 12 04 20           1399 	lcall	_I2C_Stop
   0532 D0 02              1400 	pop	ar2
                           1401 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:140: return REG_data;
   0534 8A 82              1402 	mov	dpl,r2
   0536 D0 08              1403 	pop	_bp
   0538 22                 1404 	ret
                           1405 ;------------------------------------------------------------
                           1406 ;Allocation info for local variables in function 'delay_i2c'
                           1407 ;------------------------------------------------------------
                           1408 ;i                         Allocated to registers r2 
                           1409 ;------------------------------------------------------------
                           1410 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:159: void delay_i2c(void)
                           1411 ;	-----------------------------------------
                           1412 ;	 function delay_i2c
                           1413 ;	-----------------------------------------
   0539                    1414 _delay_i2c:
                           1415 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/i2c.h:162: for(i = 0; i < 5; i ++);    
   0539 7A 05              1416 	mov	r2,#0x05
   053B                    1417 00103$:
   053B DA FE              1418 	djnz	r2,00103$
   053D 22                 1419 	ret
                           1420 ;------------------------------------------------------------
                           1421 ;Allocation info for local variables in function 'readObjectTemp'
                           1422 ;------------------------------------------------------------
                           1423 ;------------------------------------------------------------
                           1424 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:18: double readObjectTemp(void) {
                           1425 ;	-----------------------------------------
                           1426 ;	 function readObjectTemp
                           1427 ;	-----------------------------------------
   053E                    1428 _readObjectTemp:
                           1429 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:19: return readTemp(OBJECT_TEMP);
   053E 75 82 07           1430 	mov	dpl,#0x07
   0541 02 05 4A           1431 	ljmp	_readTemp
                           1432 ;------------------------------------------------------------
                           1433 ;Allocation info for local variables in function 'readAmbientTemp'
                           1434 ;------------------------------------------------------------
                           1435 ;------------------------------------------------------------
                           1436 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:22: double readAmbientTemp(void) {
                           1437 ;	-----------------------------------------
                           1438 ;	 function readAmbientTemp
                           1439 ;	-----------------------------------------
   0544                    1440 _readAmbientTemp:
                           1441 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:23: return readTemp(AMBIENT_TEMP);
   0544 75 82 06           1442 	mov	dpl,#0x06
   0547 02 05 4A           1443 	ljmp	_readTemp
                           1444 ;------------------------------------------------------------
                           1445 ;Allocation info for local variables in function 'readTemp'
                           1446 ;------------------------------------------------------------
                           1447 ;reg                       Allocated to registers r2 
                           1448 ;temp                      Allocated to registers r2 r3 r4 r5 
                           1449 ;tempData                  Allocated to registers r2 r3 
                           1450 ;pec                       Allocated to registers 
                           1451 ;sloc0                     Allocated to stack - offset 1
                           1452 ;------------------------------------------------------------
                           1453 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:26: float readTemp(uint8_t reg) {
                           1454 ;	-----------------------------------------
                           1455 ;	 function readTemp
                           1456 ;	-----------------------------------------
   054A                    1457 _readTemp:
   054A C0 08              1458 	push	_bp
   054C E5 81              1459 	mov	a,sp
   054E F5 08              1460 	mov	_bp,a
   0550 24 04              1461 	add	a,#0x04
   0552 F5 81              1462 	mov	sp,a
   0554 AA 82              1463 	mov	r2,dpl
                           1464 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:31: I2C_Start();
   0556 C0 02              1465 	push	ar2
   0558 12 04 16           1466 	lcall	_I2C_Start
                           1467 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:32: I2C_SendByte(_addr);            // 0xb4
   055B 85 32 82           1468 	mov	dpl,__addr
   055E 12 04 5C           1469 	lcall	_I2C_SendByte
   0561 D0 02              1470 	pop	ar2
                           1471 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:33: I2C_SendByte(reg);
   0563 8A 82              1472 	mov	dpl,r2
   0565 12 04 5C           1473 	lcall	_I2C_SendByte
                           1474 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:34: SDA = 1;                        // pull up 2 wires to restart
   0568 D2 81              1475 	setb	_P0_1
                           1476 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:35: SCL = 1;                        
   056A D2 80              1477 	setb	_P0_0
                           1478 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:36: I2C_Start();                    // restart
   056C 12 04 16           1479 	lcall	_I2C_Start
                           1480 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:37: I2C_SendByte(_addr|0x01);       // 0xb4 --> 0xb5
   056F 74 01              1481 	mov	a,#0x01
   0571 45 32              1482 	orl	a,__addr
   0573 F5 82              1483 	mov	dpl,a
   0575 12 04 5C           1484 	lcall	_I2C_SendByte
                           1485 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:38: tempData = I2C_RecvByte();      // LSByte
   0578 12 04 8D           1486 	lcall	_I2C_RecvByte
   057B AA 82              1487 	mov	r2,dpl
   057D 7B 00              1488 	mov	r3,#0x00
                           1489 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:39: I2C_SendACK(0);
   057F C2 F0              1490 	clr	b[0]
   0581 C0 02              1491 	push	ar2
   0583 C0 03              1492 	push	ar3
   0585 85 F0 20           1493 	mov	bits,b
   0588 12 04 2F           1494 	lcall	_I2C_SendACK
                           1495 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:40: tempData |= I2C_RecvByte() << 8;  // { MSByte , LSByte } 
   058B 12 04 8D           1496 	lcall	_I2C_RecvByte
   058E AC 82              1497 	mov	r4,dpl
   0590 D0 03              1498 	pop	ar3
   0592 D0 02              1499 	pop	ar2
   0594 8C 05              1500 	mov	ar5,r4
   0596 E4                 1501 	clr	a
   0597 42 02              1502 	orl	ar2,a
   0599 ED                 1503 	mov	a,r5
   059A 42 03              1504 	orl	ar3,a
                           1505 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:41: I2C_SendACK(0);
   059C C2 F0              1506 	clr	b[0]
   059E C0 02              1507 	push	ar2
   05A0 C0 03              1508 	push	ar3
   05A2 85 F0 20           1509 	mov	bits,b
   05A5 12 04 2F           1510 	lcall	_I2C_SendACK
                           1511 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:42: pec = I2C_RecvByte();           // 8-bit pec 
   05A8 12 04 8D           1512 	lcall	_I2C_RecvByte
                           1513 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:43: I2C_SendACK(1);
   05AB D2 F0              1514 	setb	b[0]
   05AD 85 F0 20           1515 	mov	bits,b
   05B0 12 04 2F           1516 	lcall	_I2C_SendACK
                           1517 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:44: I2C_Stop();
   05B3 12 04 20           1518 	lcall	_I2C_Stop
   05B6 D0 03              1519 	pop	ar3
   05B8 D0 02              1520 	pop	ar2
                           1521 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:45: temp = tempData;               // raw 16-bit tempData 
   05BA 8A 82              1522 	mov	dpl,r2
   05BC 8B 83              1523 	mov	dph,r3
   05BE 12 0A A5           1524 	lcall	___uint2fs
   05C1 AA 82              1525 	mov	r2,dpl
   05C3 AB 83              1526 	mov	r3,dph
   05C5 AC F0              1527 	mov	r4,b
   05C7 FD                 1528 	mov	r5,a
                           1529 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:46: temp *= 0.02;                  // calculate temperature in Celsius 
   05C8 C0 02              1530 	push	ar2
   05CA C0 03              1531 	push	ar3
   05CC C0 04              1532 	push	ar4
   05CE C0 05              1533 	push	ar5
   05D0 90 D7 0A           1534 	mov	dptr,#0xD70A
   05D3 75 F0 A3           1535 	mov	b,#0xA3
   05D6 74 3C              1536 	mov	a,#0x3C
   05D8 12 09 1E           1537 	lcall	___fsmul
   05DB A8 08              1538 	mov	r0,_bp
   05DD 08                 1539 	inc	r0
   05DE A6 82              1540 	mov	@r0,dpl
   05E0 08                 1541 	inc	r0
   05E1 A6 83              1542 	mov	@r0,dph
   05E3 08                 1543 	inc	r0
   05E4 A6 F0              1544 	mov	@r0,b
   05E6 08                 1545 	inc	r0
   05E7 F6                 1546 	mov	@r0,a
   05E8 E5 81              1547 	mov	a,sp
   05EA 24 FC              1548 	add	a,#0xfc
   05EC F5 81              1549 	mov	sp,a
   05EE A8 08              1550 	mov	r0,_bp
   05F0 08                 1551 	inc	r0
   05F1 86 02              1552 	mov	ar2,@r0
   05F3 08                 1553 	inc	r0
   05F4 86 03              1554 	mov	ar3,@r0
   05F6 08                 1555 	inc	r0
   05F7 86 04              1556 	mov	ar4,@r0
   05F9 08                 1557 	inc	r0
   05FA 86 05              1558 	mov	ar5,@r0
                           1559 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:47: temp -= 273.15;
   05FC 74 33              1560 	mov	a,#0x33
   05FE C0 E0              1561 	push	acc
   0600 74 93              1562 	mov	a,#0x93
   0602 C0 E0              1563 	push	acc
   0604 74 88              1564 	mov	a,#0x88
   0606 C0 E0              1565 	push	acc
   0608 74 43              1566 	mov	a,#0x43
   060A C0 E0              1567 	push	acc
   060C 8A 82              1568 	mov	dpl,r2
   060E 8B 83              1569 	mov	dph,r3
   0610 8C F0              1570 	mov	b,r4
   0612 ED                 1571 	mov	a,r5
   0613 12 08 E2           1572 	lcall	___fssub
   0616 A8 08              1573 	mov	r0,_bp
   0618 08                 1574 	inc	r0
   0619 A6 82              1575 	mov	@r0,dpl
   061B 08                 1576 	inc	r0
   061C A6 83              1577 	mov	@r0,dph
   061E 08                 1578 	inc	r0
   061F A6 F0              1579 	mov	@r0,b
   0621 08                 1580 	inc	r0
   0622 F6                 1581 	mov	@r0,a
   0623 E5 81              1582 	mov	a,sp
   0625 24 FC              1583 	add	a,#0xfc
   0627 F5 81              1584 	mov	sp,a
   0629 A8 08              1585 	mov	r0,_bp
   062B 08                 1586 	inc	r0
   062C 86 02              1587 	mov	ar2,@r0
   062E 08                 1588 	inc	r0
   062F 86 03              1589 	mov	ar3,@r0
   0631 08                 1590 	inc	r0
   0632 86 04              1591 	mov	ar4,@r0
   0634 08                 1592 	inc	r0
   0635 86 05              1593 	mov	ar5,@r0
                           1594 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:48: temp = temp * 10 ;             // in order to show 1 decimal bit
   0637 C0 02              1595 	push	ar2
   0639 C0 03              1596 	push	ar3
   063B C0 04              1597 	push	ar4
   063D C0 05              1598 	push	ar5
   063F 90 00 00           1599 	mov	dptr,#0x0000
   0642 75 F0 20           1600 	mov	b,#0x20
   0645 74 41              1601 	mov	a,#0x41
   0647 12 09 1E           1602 	lcall	___fsmul
   064A A8 08              1603 	mov	r0,_bp
   064C 08                 1604 	inc	r0
   064D A6 82              1605 	mov	@r0,dpl
   064F 08                 1606 	inc	r0
   0650 A6 83              1607 	mov	@r0,dph
   0652 08                 1608 	inc	r0
   0653 A6 F0              1609 	mov	@r0,b
   0655 08                 1610 	inc	r0
   0656 F6                 1611 	mov	@r0,a
   0657 E5 81              1612 	mov	a,sp
   0659 24 FC              1613 	add	a,#0xfc
   065B F5 81              1614 	mov	sp,a
   065D A8 08              1615 	mov	r0,_bp
   065F 08                 1616 	inc	r0
   0660 86 02              1617 	mov	ar2,@r0
   0662 08                 1618 	inc	r0
   0663 86 03              1619 	mov	ar3,@r0
   0665 08                 1620 	inc	r0
   0666 86 04              1621 	mov	ar4,@r0
   0668 08                 1622 	inc	r0
   0669 86 05              1623 	mov	ar5,@r0
                           1624 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\/MLX90614.h:50: return temp;
   066B 8A 82              1625 	mov	dpl,r2
   066D 8B 83              1626 	mov	dph,r3
   066F 8C F0              1627 	mov	b,r4
   0671 ED                 1628 	mov	a,r5
   0672 85 08 81           1629 	mov	sp,_bp
   0675 D0 08              1630 	pop	_bp
   0677 22                 1631 	ret
                           1632 ;------------------------------------------------------------
                           1633 ;Allocation info for local variables in function 'T0_isr'
                           1634 ;------------------------------------------------------------
                           1635 ;------------------------------------------------------------
                           1636 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:16: void T0_isr(void) __interrupt 1
                           1637 ;	-----------------------------------------
                           1638 ;	 function T0_isr
                           1639 ;	-----------------------------------------
   0678                    1640 _T0_isr:
   0678 C0 20              1641 	push	bits
   067A C0 E0              1642 	push	acc
   067C C0 F0              1643 	push	b
   067E C0 82              1644 	push	dpl
   0680 C0 83              1645 	push	dph
   0682 C0 02              1646 	push	(0+2)
   0684 C0 03              1647 	push	(0+3)
   0686 C0 04              1648 	push	(0+4)
   0688 C0 05              1649 	push	(0+5)
   068A C0 06              1650 	push	(0+6)
   068C C0 07              1651 	push	(0+7)
   068E C0 00              1652 	push	(0+0)
   0690 C0 01              1653 	push	(0+1)
   0692 C0 D0              1654 	push	psw
   0694 75 D0 00           1655 	mov	psw,#0x00
                           1656 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:18: TH0 = (65536-1000) / 256;
   0697 75 8C FC           1657 	mov	_TH0,#0xFC
                           1658 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:19: TL0 = (65536-1000) % 256;
   069A 75 8A 18           1659 	mov	_TL0,#0x18
                           1660 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:21: timer_ms++;
   069D 05 3B              1661 	inc	_timer_ms
   069F E4                 1662 	clr	a
   06A0 B5 3B 0C           1663 	cjne	a,_timer_ms,00129$
   06A3 05 3C              1664 	inc	(_timer_ms + 1)
   06A5 B5 3C 07           1665 	cjne	a,(_timer_ms + 1),00129$
   06A8 05 3D              1666 	inc	(_timer_ms + 2)
   06AA B5 3D 02           1667 	cjne	a,(_timer_ms + 2),00129$
   06AD 05 3E              1668 	inc	(_timer_ms + 3)
   06AF                    1669 00129$:
                           1670 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:22: if (P3_7)   P3_7 = 0;
   06AF 10 B7 02           1671 	jbc	_P3_7,00130$
   06B2 80 02              1672 	sjmp	00102$
   06B4                    1673 00130$:
   06B4 80 02              1674 	sjmp	00103$
   06B6                    1675 00102$:
                           1676 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:23: else        P3_7 = 1;
   06B6 D2 B7              1677 	setb	_P3_7
   06B8                    1678 00103$:
                           1679 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:24: if (timer_ms == 1000) {
   06B8 74 E8              1680 	mov	a,#0xE8
   06BA B5 3B 0F           1681 	cjne	a,_timer_ms,00131$
   06BD 74 03              1682 	mov	a,#0x03
   06BF B5 3C 0A           1683 	cjne	a,(_timer_ms + 1),00131$
   06C2 E4                 1684 	clr	a
   06C3 B5 3D 06           1685 	cjne	a,(_timer_ms + 2),00131$
   06C6 E4                 1686 	clr	a
   06C7 B5 3E 02           1687 	cjne	a,(_timer_ms + 3),00131$
   06CA 80 03              1688 	sjmp	00132$
   06CC                    1689 00131$:
   06CC 02 08 A9           1690 	ljmp	00119$
   06CF                    1691 00132$:
                           1692 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:25: timer_ms = 0;
   06CF E4                 1693 	clr	a
   06D0 F5 3B              1694 	mov	_timer_ms,a
   06D2 F5 3C              1695 	mov	(_timer_ms + 1),a
   06D4 F5 3D              1696 	mov	(_timer_ms + 2),a
   06D6 F5 3E              1697 	mov	(_timer_ms + 3),a
                           1698 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:26: adc = read_adc3202(1);    // Read voltage from ADC channel 1
   06D8 75 82 01           1699 	mov	dpl,#0x01
   06DB 12 01 3A           1700 	lcall	_read_adc3202
   06DE 85 82 37           1701 	mov	_adc,dpl
   06E1 85 83 38           1702 	mov	(_adc + 1),dph
                           1703 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:27: SerialDIN(4,SSD_CODE[adc / 1000] | 0x80);
   06E4 74 E8              1704 	mov	a,#0xE8
   06E6 C0 E0              1705 	push	acc
   06E8 74 03              1706 	mov	a,#0x03
   06EA C0 E0              1707 	push	acc
   06EC 85 37 82           1708 	mov	dpl,_adc
   06EF 85 38 83           1709 	mov	dph,(_adc + 1)
   06F2 12 08 ED           1710 	lcall	__divuint
   06F5 AA 82              1711 	mov	r2,dpl
   06F7 15 81              1712 	dec	sp
   06F9 15 81              1713 	dec	sp
   06FB EA                 1714 	mov	a,r2
   06FC 24 21              1715 	add	a,#_SSD_CODE
   06FE F8                 1716 	mov	r0,a
   06FF 86 02              1717 	mov	ar2,@r0
   0701 43 02 80           1718 	orl	ar2,#0x80
   0704 C0 02              1719 	push	ar2
   0706 75 82 04           1720 	mov	dpl,#0x04
   0709 12 01 A5           1721 	lcall	_SerialDIN
   070C 15 81              1722 	dec	sp
                           1723 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:28: SerialDIN(3,SSD_CODE[adc % 1000 / 100]);
   070E 74 E8              1724 	mov	a,#0xE8
   0710 C0 E0              1725 	push	acc
   0712 74 03              1726 	mov	a,#0x03
   0714 C0 E0              1727 	push	acc
   0716 85 37 82           1728 	mov	dpl,_adc
   0719 85 38 83           1729 	mov	dph,(_adc + 1)
   071C 12 0B 73           1730 	lcall	__moduint
   071F AA 82              1731 	mov	r2,dpl
   0721 AB 83              1732 	mov	r3,dph
   0723 15 81              1733 	dec	sp
   0725 15 81              1734 	dec	sp
   0727 74 64              1735 	mov	a,#0x64
   0729 C0 E0              1736 	push	acc
   072B E4                 1737 	clr	a
   072C C0 E0              1738 	push	acc
   072E 8A 82              1739 	mov	dpl,r2
   0730 8B 83              1740 	mov	dph,r3
   0732 12 08 ED           1741 	lcall	__divuint
   0735 AA 82              1742 	mov	r2,dpl
   0737 15 81              1743 	dec	sp
   0739 15 81              1744 	dec	sp
   073B EA                 1745 	mov	a,r2
   073C 24 21              1746 	add	a,#_SSD_CODE
   073E F8                 1747 	mov	r0,a
   073F 86 02              1748 	mov	ar2,@r0
   0741 C0 02              1749 	push	ar2
   0743 75 82 03           1750 	mov	dpl,#0x03
   0746 12 01 A5           1751 	lcall	_SerialDIN
   0749 15 81              1752 	dec	sp
                           1753 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:29: SerialDIN(2,SSD_CODE[adc % 100 / 10]);
   074B 74 64              1754 	mov	a,#0x64
   074D C0 E0              1755 	push	acc
   074F E4                 1756 	clr	a
   0750 C0 E0              1757 	push	acc
   0752 85 37 82           1758 	mov	dpl,_adc
   0755 85 38 83           1759 	mov	dph,(_adc + 1)
   0758 12 0B 73           1760 	lcall	__moduint
   075B AA 82              1761 	mov	r2,dpl
   075D AB 83              1762 	mov	r3,dph
   075F 15 81              1763 	dec	sp
   0761 15 81              1764 	dec	sp
   0763 74 0A              1765 	mov	a,#0x0A
   0765 C0 E0              1766 	push	acc
   0767 E4                 1767 	clr	a
   0768 C0 E0              1768 	push	acc
   076A 8A 82              1769 	mov	dpl,r2
   076C 8B 83              1770 	mov	dph,r3
   076E 12 08 ED           1771 	lcall	__divuint
   0771 AA 82              1772 	mov	r2,dpl
   0773 15 81              1773 	dec	sp
   0775 15 81              1774 	dec	sp
   0777 EA                 1775 	mov	a,r2
   0778 24 21              1776 	add	a,#_SSD_CODE
   077A F8                 1777 	mov	r0,a
   077B 86 02              1778 	mov	ar2,@r0
   077D C0 02              1779 	push	ar2
   077F 75 82 02           1780 	mov	dpl,#0x02
   0782 12 01 A5           1781 	lcall	_SerialDIN
   0785 15 81              1782 	dec	sp
                           1783 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:30: SerialDIN(1,SSD_CODE[adc % 10]);
   0787 74 0A              1784 	mov	a,#0x0A
   0789 C0 E0              1785 	push	acc
   078B E4                 1786 	clr	a
   078C C0 E0              1787 	push	acc
   078E 85 37 82           1788 	mov	dpl,_adc
   0791 85 38 83           1789 	mov	dph,(_adc + 1)
   0794 12 0B 73           1790 	lcall	__moduint
   0797 AA 82              1791 	mov	r2,dpl
   0799 15 81              1792 	dec	sp
   079B 15 81              1793 	dec	sp
   079D EA                 1794 	mov	a,r2
   079E 24 21              1795 	add	a,#_SSD_CODE
   07A0 F8                 1796 	mov	r0,a
   07A1 86 02              1797 	mov	ar2,@r0
   07A3 C0 02              1798 	push	ar2
   07A5 75 82 01           1799 	mov	dpl,#0x01
   07A8 12 01 A5           1800 	lcall	_SerialDIN
   07AB 15 81              1801 	dec	sp
                           1802 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:32: if (adc < 1000) {
   07AD C3                 1803 	clr	c
   07AE E5 37              1804 	mov	a,_adc
   07B0 94 E8              1805 	subb	a,#0xE8
   07B2 E5 38              1806 	mov	a,(_adc + 1)
   07B4 94 03              1807 	subb	a,#0x03
   07B6 E4                 1808 	clr	a
   07B7 33                 1809 	rlc	a
   07B8 FA                 1810 	mov	r2,a
   07B9 60 05              1811 	jz	00115$
                           1812 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:33: STATE = 0;
   07BB 75 33 00           1813 	mov	_STATE,#0x00
   07BE 80 3B              1814 	sjmp	00116$
   07C0                    1815 00115$:
                           1816 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:34: } else if (adc >= 1000 && adc < 1500) {
   07C0 EA                 1817 	mov	a,r2
   07C1 70 10              1818 	jnz	00111$
   07C3 C3                 1819 	clr	c
   07C4 E5 37              1820 	mov	a,_adc
   07C6 94 DC              1821 	subb	a,#0xDC
   07C8 E5 38              1822 	mov	a,(_adc + 1)
   07CA 94 05              1823 	subb	a,#0x05
   07CC 50 05              1824 	jnc	00111$
                           1825 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:35: STATE = 1;
   07CE 75 33 01           1826 	mov	_STATE,#0x01
   07D1 80 28              1827 	sjmp	00116$
   07D3                    1828 00111$:
                           1829 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:36: } else if (adc >= 1500 && adc < 2000) {
   07D3 C3                 1830 	clr	c
   07D4 E5 37              1831 	mov	a,_adc
   07D6 94 DC              1832 	subb	a,#0xDC
   07D8 E5 38              1833 	mov	a,(_adc + 1)
   07DA 94 05              1834 	subb	a,#0x05
   07DC 40 0F              1835 	jc	00107$
   07DE E5 37              1836 	mov	a,_adc
   07E0 94 D0              1837 	subb	a,#0xD0
   07E2 E5 38              1838 	mov	a,(_adc + 1)
   07E4 94 07              1839 	subb	a,#0x07
   07E6 50 05              1840 	jnc	00107$
                           1841 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:37: STATE = 2;
   07E8 75 33 02           1842 	mov	_STATE,#0x02
   07EB 80 0E              1843 	sjmp	00116$
   07ED                    1844 00107$:
                           1845 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:38: } else if (adc >= 2000) {
   07ED C3                 1846 	clr	c
   07EE E5 37              1847 	mov	a,_adc
   07F0 94 D0              1848 	subb	a,#0xD0
   07F2 E5 38              1849 	mov	a,(_adc + 1)
   07F4 94 07              1850 	subb	a,#0x07
   07F6 40 03              1851 	jc	00116$
                           1852 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:39: STATE = 3;
   07F8 75 33 03           1853 	mov	_STATE,#0x03
   07FB                    1854 00116$:
                           1855 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:42: tmpc = readObjectTemp();
   07FB 12 05 3E           1856 	lcall	_readObjectTemp
   07FE 12 0A 71           1857 	lcall	___fs2sint
   0801 85 82 35           1858 	mov	_tmpc,dpl
   0804 85 83 36           1859 	mov	(_tmpc + 1),dph
                           1860 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:43: SerialDIN(7,SSD_CODE[tmpc % 1000 / 100]);
   0807 74 E8              1861 	mov	a,#0xE8
   0809 C0 E0              1862 	push	acc
   080B 74 03              1863 	mov	a,#0x03
   080D C0 E0              1864 	push	acc
   080F 85 35 82           1865 	mov	dpl,_tmpc
   0812 85 36 83           1866 	mov	dph,(_tmpc + 1)
   0815 12 0B 36           1867 	lcall	__modsint
   0818 AA 82              1868 	mov	r2,dpl
   081A AB 83              1869 	mov	r3,dph
   081C 15 81              1870 	dec	sp
   081E 15 81              1871 	dec	sp
   0820 74 64              1872 	mov	a,#0x64
   0822 C0 E0              1873 	push	acc
   0824 E4                 1874 	clr	a
   0825 C0 E0              1875 	push	acc
   0827 8A 82              1876 	mov	dpl,r2
   0829 8B 83              1877 	mov	dph,r3
   082B 12 0B CB           1878 	lcall	__divsint
   082E AA 82              1879 	mov	r2,dpl
   0830 15 81              1880 	dec	sp
   0832 15 81              1881 	dec	sp
   0834 EA                 1882 	mov	a,r2
   0835 24 21              1883 	add	a,#_SSD_CODE
   0837 F8                 1884 	mov	r0,a
   0838 86 02              1885 	mov	ar2,@r0
   083A C0 02              1886 	push	ar2
   083C 75 82 07           1887 	mov	dpl,#0x07
   083F 12 01 A5           1888 	lcall	_SerialDIN
   0842 15 81              1889 	dec	sp
                           1890 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:44: SerialDIN(6,SSD_CODE[tmpc % 100 / 10] | 0x80);
   0844 74 64              1891 	mov	a,#0x64
   0846 C0 E0              1892 	push	acc
   0848 E4                 1893 	clr	a
   0849 C0 E0              1894 	push	acc
   084B 85 35 82           1895 	mov	dpl,_tmpc
   084E 85 36 83           1896 	mov	dph,(_tmpc + 1)
   0851 12 0B 36           1897 	lcall	__modsint
   0854 AA 82              1898 	mov	r2,dpl
   0856 AB 83              1899 	mov	r3,dph
   0858 15 81              1900 	dec	sp
   085A 15 81              1901 	dec	sp
   085C 74 0A              1902 	mov	a,#0x0A
   085E C0 E0              1903 	push	acc
   0860 E4                 1904 	clr	a
   0861 C0 E0              1905 	push	acc
   0863 8A 82              1906 	mov	dpl,r2
   0865 8B 83              1907 	mov	dph,r3
   0867 12 0B CB           1908 	lcall	__divsint
   086A AA 82              1909 	mov	r2,dpl
   086C 15 81              1910 	dec	sp
   086E 15 81              1911 	dec	sp
   0870 EA                 1912 	mov	a,r2
   0871 24 21              1913 	add	a,#_SSD_CODE
   0873 F8                 1914 	mov	r0,a
   0874 86 02              1915 	mov	ar2,@r0
   0876 43 02 80           1916 	orl	ar2,#0x80
   0879 C0 02              1917 	push	ar2
   087B 75 82 06           1918 	mov	dpl,#0x06
   087E 12 01 A5           1919 	lcall	_SerialDIN
   0881 15 81              1920 	dec	sp
                           1921 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:45: SerialDIN(5,SSD_CODE[tmpc % 10]);
   0883 74 0A              1922 	mov	a,#0x0A
   0885 C0 E0              1923 	push	acc
   0887 E4                 1924 	clr	a
   0888 C0 E0              1925 	push	acc
   088A 85 35 82           1926 	mov	dpl,_tmpc
   088D 85 36 83           1927 	mov	dph,(_tmpc + 1)
   0890 12 0B 36           1928 	lcall	__modsint
   0893 AA 82              1929 	mov	r2,dpl
   0895 15 81              1930 	dec	sp
   0897 15 81              1931 	dec	sp
   0899 EA                 1932 	mov	a,r2
   089A 24 21              1933 	add	a,#_SSD_CODE
   089C F8                 1934 	mov	r0,a
   089D 86 02              1935 	mov	ar2,@r0
   089F C0 02              1936 	push	ar2
   08A1 75 82 05           1937 	mov	dpl,#0x05
   08A4 12 01 A5           1938 	lcall	_SerialDIN
   08A7 15 81              1939 	dec	sp
   08A9                    1940 00119$:
   08A9 D0 D0              1941 	pop	psw
   08AB D0 01              1942 	pop	(0+1)
   08AD D0 00              1943 	pop	(0+0)
   08AF D0 07              1944 	pop	(0+7)
   08B1 D0 06              1945 	pop	(0+6)
   08B3 D0 05              1946 	pop	(0+5)
   08B5 D0 04              1947 	pop	(0+4)
   08B7 D0 03              1948 	pop	(0+3)
   08B9 D0 02              1949 	pop	(0+2)
   08BB D0 83              1950 	pop	dph
   08BD D0 82              1951 	pop	dpl
   08BF D0 F0              1952 	pop	b
   08C1 D0 E0              1953 	pop	acc
   08C3 D0 20              1954 	pop	bits
   08C5 32                 1955 	reti
                           1956 ;------------------------------------------------------------
                           1957 ;Allocation info for local variables in function 'main'
                           1958 ;------------------------------------------------------------
                           1959 ;------------------------------------------------------------
                           1960 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:49: void main(){
                           1961 ;	-----------------------------------------
                           1962 ;	 function main
                           1963 ;	-----------------------------------------
   08C6                    1964 _main:
                           1965 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:52: EA = 1;
   08C6 D2 AF              1966 	setb	_EA
                           1967 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:53: ET0 = 1;
   08C8 D2 A9              1968 	setb	_ET0
                           1969 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:55: TMOD = 0x01;
   08CA 75 89 01           1970 	mov	_TMOD,#0x01
                           1971 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:56: TH0 = (65536 - 1000) / 256;
   08CD 75 8C FC           1972 	mov	_TH0,#0xFC
                           1973 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:57: TL0 = (65536 - 1000) % 256;
   08D0 75 8A 18           1974 	mov	_TL0,#0x18
                           1975 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:58: TR0 = 1;
   08D3 D2 8C              1976 	setb	_TR0
                           1977 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:60: DOUT = 1; //Setting gpio input mode
   08D5 D2 A2              1978 	setb	_P2_2
                           1979 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:61: LOAD = 1; 
   08D7 D2 A3              1980 	setb	_P2_3
                           1981 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:62: CLK = 0;
   08D9 C2 A0              1982 	clr	_P2_0
                           1983 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:63: DIN = 0;
   08DB C2 A1              1984 	clr	_P2_1
                           1985 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:64: SSD_INIT();
   08DD 12 03 C1           1986 	lcall	_SSD_INIT
                           1987 ;	E:\GitHub\8051_csrc\final_practice\Q3MIDE\Q3MIDE.c:66: while(1)
   08E0                    1988 00102$:
   08E0 80 FE              1989 	sjmp	00102$
                           1990 	.area CSEG    (CODE)
                           1991 	.area CONST   (CODE)
                           1992 	.area XINIT   (CODE)
                           1993 	.area CABS    (ABS,CODE)
