                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (May 19 2014) (Linux)
                                      4 ; This file was generated Thu Nov 13 23:17:30 2014
                                      5 ;--------------------------------------------------------
                                      6 	.module donfangh
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _TF2
                                     14 	.globl _EXF2
                                     15 	.globl _RCLK
                                     16 	.globl _TCLK
                                     17 	.globl _EXEN2
                                     18 	.globl _TR2
                                     19 	.globl _C_T2
                                     20 	.globl _CP_RL2
                                     21 	.globl _T2CON_7
                                     22 	.globl _T2CON_6
                                     23 	.globl _T2CON_5
                                     24 	.globl _T2CON_4
                                     25 	.globl _T2CON_3
                                     26 	.globl _T2CON_2
                                     27 	.globl _T2CON_1
                                     28 	.globl _T2CON_0
                                     29 	.globl _PT2
                                     30 	.globl _ET2
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _TH2
                                    107 	.globl _TL2
                                    108 	.globl _RCAP2H
                                    109 	.globl _RCAP2L
                                    110 	.globl _T2CON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 G$P0$0$0 == 0x0080
                           000080   138 _P0	=	0x0080
                           000081   139 G$SP$0$0 == 0x0081
                           000081   140 _SP	=	0x0081
                           000082   141 G$DPL$0$0 == 0x0082
                           000082   142 _DPL	=	0x0082
                           000083   143 G$DPH$0$0 == 0x0083
                           000083   144 _DPH	=	0x0083
                           000087   145 G$PCON$0$0 == 0x0087
                           000087   146 _PCON	=	0x0087
                           000088   147 G$TCON$0$0 == 0x0088
                           000088   148 _TCON	=	0x0088
                           000089   149 G$TMOD$0$0 == 0x0089
                           000089   150 _TMOD	=	0x0089
                           00008A   151 G$TL0$0$0 == 0x008a
                           00008A   152 _TL0	=	0x008a
                           00008B   153 G$TL1$0$0 == 0x008b
                           00008B   154 _TL1	=	0x008b
                           00008C   155 G$TH0$0$0 == 0x008c
                           00008C   156 _TH0	=	0x008c
                           00008D   157 G$TH1$0$0 == 0x008d
                           00008D   158 _TH1	=	0x008d
                           000090   159 G$P1$0$0 == 0x0090
                           000090   160 _P1	=	0x0090
                           000098   161 G$SCON$0$0 == 0x0098
                           000098   162 _SCON	=	0x0098
                           000099   163 G$SBUF$0$0 == 0x0099
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 G$P2$0$0 == 0x00a0
                           0000A0   166 _P2	=	0x00a0
                           0000A8   167 G$IE$0$0 == 0x00a8
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 G$P3$0$0 == 0x00b0
                           0000B0   170 _P3	=	0x00b0
                           0000B8   171 G$IP$0$0 == 0x00b8
                           0000B8   172 _IP	=	0x00b8
                           0000D0   173 G$PSW$0$0 == 0x00d0
                           0000D0   174 _PSW	=	0x00d0
                           0000E0   175 G$ACC$0$0 == 0x00e0
                           0000E0   176 _ACC	=	0x00e0
                           0000F0   177 G$B$0$0 == 0x00f0
                           0000F0   178 _B	=	0x00f0
                           0000C8   179 G$T2CON$0$0 == 0x00c8
                           0000C8   180 _T2CON	=	0x00c8
                           0000CA   181 G$RCAP2L$0$0 == 0x00ca
                           0000CA   182 _RCAP2L	=	0x00ca
                           0000CB   183 G$RCAP2H$0$0 == 0x00cb
                           0000CB   184 _RCAP2H	=	0x00cb
                           0000CC   185 G$TL2$0$0 == 0x00cc
                           0000CC   186 _TL2	=	0x00cc
                           0000CD   187 G$TH2$0$0 == 0x00cd
                           0000CD   188 _TH2	=	0x00cd
                                    189 ;--------------------------------------------------------
                                    190 ; special function bits
                                    191 ;--------------------------------------------------------
                                    192 	.area RSEG    (ABS,DATA)
      000000                        193 	.org 0x0000
                           000080   194 G$P0_0$0$0 == 0x0080
                           000080   195 _P0_0	=	0x0080
                           000081   196 G$P0_1$0$0 == 0x0081
                           000081   197 _P0_1	=	0x0081
                           000082   198 G$P0_2$0$0 == 0x0082
                           000082   199 _P0_2	=	0x0082
                           000083   200 G$P0_3$0$0 == 0x0083
                           000083   201 _P0_3	=	0x0083
                           000084   202 G$P0_4$0$0 == 0x0084
                           000084   203 _P0_4	=	0x0084
                           000085   204 G$P0_5$0$0 == 0x0085
                           000085   205 _P0_5	=	0x0085
                           000086   206 G$P0_6$0$0 == 0x0086
                           000086   207 _P0_6	=	0x0086
                           000087   208 G$P0_7$0$0 == 0x0087
                           000087   209 _P0_7	=	0x0087
                           000088   210 G$IT0$0$0 == 0x0088
                           000088   211 _IT0	=	0x0088
                           000089   212 G$IE0$0$0 == 0x0089
                           000089   213 _IE0	=	0x0089
                           00008A   214 G$IT1$0$0 == 0x008a
                           00008A   215 _IT1	=	0x008a
                           00008B   216 G$IE1$0$0 == 0x008b
                           00008B   217 _IE1	=	0x008b
                           00008C   218 G$TR0$0$0 == 0x008c
                           00008C   219 _TR0	=	0x008c
                           00008D   220 G$TF0$0$0 == 0x008d
                           00008D   221 _TF0	=	0x008d
                           00008E   222 G$TR1$0$0 == 0x008e
                           00008E   223 _TR1	=	0x008e
                           00008F   224 G$TF1$0$0 == 0x008f
                           00008F   225 _TF1	=	0x008f
                           000090   226 G$P1_0$0$0 == 0x0090
                           000090   227 _P1_0	=	0x0090
                           000091   228 G$P1_1$0$0 == 0x0091
                           000091   229 _P1_1	=	0x0091
                           000092   230 G$P1_2$0$0 == 0x0092
                           000092   231 _P1_2	=	0x0092
                           000093   232 G$P1_3$0$0 == 0x0093
                           000093   233 _P1_3	=	0x0093
                           000094   234 G$P1_4$0$0 == 0x0094
                           000094   235 _P1_4	=	0x0094
                           000095   236 G$P1_5$0$0 == 0x0095
                           000095   237 _P1_5	=	0x0095
                           000096   238 G$P1_6$0$0 == 0x0096
                           000096   239 _P1_6	=	0x0096
                           000097   240 G$P1_7$0$0 == 0x0097
                           000097   241 _P1_7	=	0x0097
                           000098   242 G$RI$0$0 == 0x0098
                           000098   243 _RI	=	0x0098
                           000099   244 G$TI$0$0 == 0x0099
                           000099   245 _TI	=	0x0099
                           00009A   246 G$RB8$0$0 == 0x009a
                           00009A   247 _RB8	=	0x009a
                           00009B   248 G$TB8$0$0 == 0x009b
                           00009B   249 _TB8	=	0x009b
                           00009C   250 G$REN$0$0 == 0x009c
                           00009C   251 _REN	=	0x009c
                           00009D   252 G$SM2$0$0 == 0x009d
                           00009D   253 _SM2	=	0x009d
                           00009E   254 G$SM1$0$0 == 0x009e
                           00009E   255 _SM1	=	0x009e
                           00009F   256 G$SM0$0$0 == 0x009f
                           00009F   257 _SM0	=	0x009f
                           0000A0   258 G$P2_0$0$0 == 0x00a0
                           0000A0   259 _P2_0	=	0x00a0
                           0000A1   260 G$P2_1$0$0 == 0x00a1
                           0000A1   261 _P2_1	=	0x00a1
                           0000A2   262 G$P2_2$0$0 == 0x00a2
                           0000A2   263 _P2_2	=	0x00a2
                           0000A3   264 G$P2_3$0$0 == 0x00a3
                           0000A3   265 _P2_3	=	0x00a3
                           0000A4   266 G$P2_4$0$0 == 0x00a4
                           0000A4   267 _P2_4	=	0x00a4
                           0000A5   268 G$P2_5$0$0 == 0x00a5
                           0000A5   269 _P2_5	=	0x00a5
                           0000A6   270 G$P2_6$0$0 == 0x00a6
                           0000A6   271 _P2_6	=	0x00a6
                           0000A7   272 G$P2_7$0$0 == 0x00a7
                           0000A7   273 _P2_7	=	0x00a7
                           0000A8   274 G$EX0$0$0 == 0x00a8
                           0000A8   275 _EX0	=	0x00a8
                           0000A9   276 G$ET0$0$0 == 0x00a9
                           0000A9   277 _ET0	=	0x00a9
                           0000AA   278 G$EX1$0$0 == 0x00aa
                           0000AA   279 _EX1	=	0x00aa
                           0000AB   280 G$ET1$0$0 == 0x00ab
                           0000AB   281 _ET1	=	0x00ab
                           0000AC   282 G$ES$0$0 == 0x00ac
                           0000AC   283 _ES	=	0x00ac
                           0000AF   284 G$EA$0$0 == 0x00af
                           0000AF   285 _EA	=	0x00af
                           0000B0   286 G$P3_0$0$0 == 0x00b0
                           0000B0   287 _P3_0	=	0x00b0
                           0000B1   288 G$P3_1$0$0 == 0x00b1
                           0000B1   289 _P3_1	=	0x00b1
                           0000B2   290 G$P3_2$0$0 == 0x00b2
                           0000B2   291 _P3_2	=	0x00b2
                           0000B3   292 G$P3_3$0$0 == 0x00b3
                           0000B3   293 _P3_3	=	0x00b3
                           0000B4   294 G$P3_4$0$0 == 0x00b4
                           0000B4   295 _P3_4	=	0x00b4
                           0000B5   296 G$P3_5$0$0 == 0x00b5
                           0000B5   297 _P3_5	=	0x00b5
                           0000B6   298 G$P3_6$0$0 == 0x00b6
                           0000B6   299 _P3_6	=	0x00b6
                           0000B7   300 G$P3_7$0$0 == 0x00b7
                           0000B7   301 _P3_7	=	0x00b7
                           0000B0   302 G$RXD$0$0 == 0x00b0
                           0000B0   303 _RXD	=	0x00b0
                           0000B1   304 G$TXD$0$0 == 0x00b1
                           0000B1   305 _TXD	=	0x00b1
                           0000B2   306 G$INT0$0$0 == 0x00b2
                           0000B2   307 _INT0	=	0x00b2
                           0000B3   308 G$INT1$0$0 == 0x00b3
                           0000B3   309 _INT1	=	0x00b3
                           0000B4   310 G$T0$0$0 == 0x00b4
                           0000B4   311 _T0	=	0x00b4
                           0000B5   312 G$T1$0$0 == 0x00b5
                           0000B5   313 _T1	=	0x00b5
                           0000B6   314 G$WR$0$0 == 0x00b6
                           0000B6   315 _WR	=	0x00b6
                           0000B7   316 G$RD$0$0 == 0x00b7
                           0000B7   317 _RD	=	0x00b7
                           0000B8   318 G$PX0$0$0 == 0x00b8
                           0000B8   319 _PX0	=	0x00b8
                           0000B9   320 G$PT0$0$0 == 0x00b9
                           0000B9   321 _PT0	=	0x00b9
                           0000BA   322 G$PX1$0$0 == 0x00ba
                           0000BA   323 _PX1	=	0x00ba
                           0000BB   324 G$PT1$0$0 == 0x00bb
                           0000BB   325 _PT1	=	0x00bb
                           0000BC   326 G$PS$0$0 == 0x00bc
                           0000BC   327 _PS	=	0x00bc
                           0000D0   328 G$P$0$0 == 0x00d0
                           0000D0   329 _P	=	0x00d0
                           0000D1   330 G$F1$0$0 == 0x00d1
                           0000D1   331 _F1	=	0x00d1
                           0000D2   332 G$OV$0$0 == 0x00d2
                           0000D2   333 _OV	=	0x00d2
                           0000D3   334 G$RS0$0$0 == 0x00d3
                           0000D3   335 _RS0	=	0x00d3
                           0000D4   336 G$RS1$0$0 == 0x00d4
                           0000D4   337 _RS1	=	0x00d4
                           0000D5   338 G$F0$0$0 == 0x00d5
                           0000D5   339 _F0	=	0x00d5
                           0000D6   340 G$AC$0$0 == 0x00d6
                           0000D6   341 _AC	=	0x00d6
                           0000D7   342 G$CY$0$0 == 0x00d7
                           0000D7   343 _CY	=	0x00d7
                           0000AD   344 G$ET2$0$0 == 0x00ad
                           0000AD   345 _ET2	=	0x00ad
                           0000BD   346 G$PT2$0$0 == 0x00bd
                           0000BD   347 _PT2	=	0x00bd
                           0000C8   348 G$T2CON_0$0$0 == 0x00c8
                           0000C8   349 _T2CON_0	=	0x00c8
                           0000C9   350 G$T2CON_1$0$0 == 0x00c9
                           0000C9   351 _T2CON_1	=	0x00c9
                           0000CA   352 G$T2CON_2$0$0 == 0x00ca
                           0000CA   353 _T2CON_2	=	0x00ca
                           0000CB   354 G$T2CON_3$0$0 == 0x00cb
                           0000CB   355 _T2CON_3	=	0x00cb
                           0000CC   356 G$T2CON_4$0$0 == 0x00cc
                           0000CC   357 _T2CON_4	=	0x00cc
                           0000CD   358 G$T2CON_5$0$0 == 0x00cd
                           0000CD   359 _T2CON_5	=	0x00cd
                           0000CE   360 G$T2CON_6$0$0 == 0x00ce
                           0000CE   361 _T2CON_6	=	0x00ce
                           0000CF   362 G$T2CON_7$0$0 == 0x00cf
                           0000CF   363 _T2CON_7	=	0x00cf
                           0000C8   364 G$CP_RL2$0$0 == 0x00c8
                           0000C8   365 _CP_RL2	=	0x00c8
                           0000C9   366 G$C_T2$0$0 == 0x00c9
                           0000C9   367 _C_T2	=	0x00c9
                           0000CA   368 G$TR2$0$0 == 0x00ca
                           0000CA   369 _TR2	=	0x00ca
                           0000CB   370 G$EXEN2$0$0 == 0x00cb
                           0000CB   371 _EXEN2	=	0x00cb
                           0000CC   372 G$TCLK$0$0 == 0x00cc
                           0000CC   373 _TCLK	=	0x00cc
                           0000CD   374 G$RCLK$0$0 == 0x00cd
                           0000CD   375 _RCLK	=	0x00cd
                           0000CE   376 G$EXF2$0$0 == 0x00ce
                           0000CE   377 _EXF2	=	0x00ce
                           0000CF   378 G$TF2$0$0 == 0x00cf
                           0000CF   379 _TF2	=	0x00cf
                                    380 ;--------------------------------------------------------
                                    381 ; overlayable register banks
                                    382 ;--------------------------------------------------------
                                    383 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        384 	.ds 8
                                    385 ;--------------------------------------------------------
                                    386 ; internal ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area DSEG    (DATA)
                           000000   389 Ldonfangh.main$cyc$1$2==.
      000008                        390 _main_cyc_1_2:
      000008                        391 	.ds 4
                                    392 ;--------------------------------------------------------
                                    393 ; overlayable items in internal ram 
                                    394 ;--------------------------------------------------------
                                    395 ;--------------------------------------------------------
                                    396 ; Stack segment in internal ram 
                                    397 ;--------------------------------------------------------
                                    398 	.area	SSEG
      00000C                        399 __start__stack:
      00000C                        400 	.ds	1
                                    401 
                                    402 ;--------------------------------------------------------
                                    403 ; indirectly addressable internal ram data
                                    404 ;--------------------------------------------------------
                                    405 	.area ISEG    (DATA)
                                    406 ;--------------------------------------------------------
                                    407 ; absolute internal ram data
                                    408 ;--------------------------------------------------------
                                    409 	.area IABS    (ABS,DATA)
                                    410 	.area IABS    (ABS,DATA)
                                    411 ;--------------------------------------------------------
                                    412 ; bit data
                                    413 ;--------------------------------------------------------
                                    414 	.area BSEG    (BIT)
                                    415 ;--------------------------------------------------------
                                    416 ; paged external ram data
                                    417 ;--------------------------------------------------------
                                    418 	.area PSEG    (PAG,XDATA)
                                    419 ;--------------------------------------------------------
                                    420 ; external ram data
                                    421 ;--------------------------------------------------------
                                    422 	.area XSEG    (XDATA)
                                    423 ;--------------------------------------------------------
                                    424 ; absolute external ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area XABS    (ABS,XDATA)
                                    427 ;--------------------------------------------------------
                                    428 ; external initialized ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area XISEG   (XDATA)
                                    431 	.area HOME    (CODE)
                                    432 	.area GSINIT0 (CODE)
                                    433 	.area GSINIT1 (CODE)
                                    434 	.area GSINIT2 (CODE)
                                    435 	.area GSINIT3 (CODE)
                                    436 	.area GSINIT4 (CODE)
                                    437 	.area GSINIT5 (CODE)
                                    438 	.area GSINIT  (CODE)
                                    439 	.area GSFINAL (CODE)
                                    440 	.area CSEG    (CODE)
                                    441 ;--------------------------------------------------------
                                    442 ; interrupt vector 
                                    443 ;--------------------------------------------------------
                                    444 	.area HOME    (CODE)
      000000                        445 __interrupt_vect:
      000000 02 00 06         [24]  446 	ljmp	__sdcc_gsinit_startup
                                    447 ;--------------------------------------------------------
                                    448 ; global & static initialisations
                                    449 ;--------------------------------------------------------
                                    450 	.area HOME    (CODE)
                                    451 	.area GSINIT  (CODE)
                                    452 	.area GSFINAL (CODE)
                                    453 	.area GSINIT  (CODE)
                                    454 	.globl __sdcc_gsinit_startup
                                    455 	.globl __sdcc_program_startup
                                    456 	.globl __start__stack
                                    457 	.globl __mcs51_genXINIT
                                    458 	.globl __mcs51_genXRAMCLEAR
                                    459 	.globl __mcs51_genRAMCLEAR
                                    460 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  461 	ljmp	__sdcc_program_startup
                                    462 ;--------------------------------------------------------
                                    463 ; Home
                                    464 ;--------------------------------------------------------
                                    465 	.area HOME    (CODE)
                                    466 	.area HOME    (CODE)
      000003                        467 __sdcc_program_startup:
      000003 02 00 62         [24]  468 	ljmp	_main
                                    469 ;	return from main will return to caller
                                    470 ;--------------------------------------------------------
                                    471 ; code
                                    472 ;--------------------------------------------------------
                                    473 	.area CSEG    (CODE)
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'main'
                                    476 ;------------------------------------------------------------
                                    477 ;cyc                       Allocated with name '_main_cyc_1_2'
                                    478 ;i                         Allocated to registers 
                                    479 ;------------------------------------------------------------
                           000000   480 	G$main$0$0 ==.
                           000000   481 	C$donfangh.c$7$0$0 ==.
                                    482 ;	donfangh.c:7: void main(void)
                                    483 ;	-----------------------------------------
                                    484 ;	 function main
                                    485 ;	-----------------------------------------
      000062                        486 _main:
                           000007   487 	ar7 = 0x07
                           000006   488 	ar6 = 0x06
                           000005   489 	ar5 = 0x05
                           000004   490 	ar4 = 0x04
                           000003   491 	ar3 = 0x03
                           000002   492 	ar2 = 0x02
                           000001   493 	ar1 = 0x01
                           000000   494 	ar0 = 0x00
                           000000   495 	C$donfangh.c$9$1$0 ==.
                                    496 ;	donfangh.c:9: _uint cyc[2] = {3600, 3200};
      000062 75 08 10         [24]  497 	mov	(_main_cyc_1_2 + 0),#0x10
      000065 75 09 0E         [24]  498 	mov	(_main_cyc_1_2 + 1),#0x0E
      000068 75 0A 80         [24]  499 	mov	((_main_cyc_1_2 + 0x0002) + 0),#0x80
      00006B 75 0B 0C         [24]  500 	mov	((_main_cyc_1_2 + 0x0002) + 1),#0x0C
                           00000C   501 	C$donfangh.c$11$1$2 ==.
                                    502 ;	donfangh.c:11: P1_5 = 0;
      00006E C2 95            [12]  503 	clr	_P1_5
                           00000E   504 	C$donfangh.c$13$1$2 ==.
                           00000E   505 	XG$main$0$0 ==.
      000070 22               [24]  506 	ret
                                    507 	.area CSEG    (CODE)
                                    508 	.area CONST   (CODE)
                                    509 	.area XINIT   (CODE)
                                    510 	.area CABS    (ABS,CODE)
