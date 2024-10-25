                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Wed Sep  6 11:56:57 2023
                                      5 ;--------------------------------------------------------
                                      6 	.module q3c
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _EP6INT
                                     14 	.globl _EP5INT
                                     15 	.globl _EP4INT
                                     16 	.globl _EP3INT
                                     17 	.globl _EP2INT
                                     18 	.globl _EP1INT
                                     19 	.globl _EP0INT
                                     20 	.globl _CF
                                     21 	.globl _CR
                                     22 	.globl _CCF4
                                     23 	.globl _CCF3
                                     24 	.globl _CCF2
                                     25 	.globl _CCF1
                                     26 	.globl _CCF0
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _TF2
                                     36 	.globl _EXF2
                                     37 	.globl _RCLK
                                     38 	.globl _TCLK
                                     39 	.globl _EXEN2
                                     40 	.globl _TR2
                                     41 	.globl _C_T2
                                     42 	.globl _CP_RL2
                                     43 	.globl _P4_1
                                     44 	.globl _P4_0
                                     45 	.globl _PPCL
                                     46 	.globl _PT2L
                                     47 	.globl _PSL
                                     48 	.globl _PT1L
                                     49 	.globl _PX1L
                                     50 	.globl _PT0L
                                     51 	.globl _PX0L
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _EC
                                     62 	.globl _ET2
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _FE
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _UEPINT
                                    110 	.globl _LEDCON
                                    111 	.globl _B
                                    112 	.globl _CCAP4H
                                    113 	.globl _CCAP4L
                                    114 	.globl _CCAP4
                                    115 	.globl _CCAP3H
                                    116 	.globl _CCAP3L
                                    117 	.globl _CCAP3
                                    118 	.globl _CCAP2H
                                    119 	.globl _CCAP2L
                                    120 	.globl _CCAP2
                                    121 	.globl _CCAP1H
                                    122 	.globl _CCAP1L
                                    123 	.globl _CCAP1
                                    124 	.globl _CCAP0H
                                    125 	.globl _CCAP0L
                                    126 	.globl _CCAP0
                                    127 	.globl _CH
                                    128 	.globl _CL
                                    129 	.globl _PCA
                                    130 	.globl _UBYCTHX
                                    131 	.globl _UBYCTLX
                                    132 	.globl _UBYCTX
                                    133 	.globl _ACC
                                    134 	.globl _CCAPM4
                                    135 	.globl _CCAPM3
                                    136 	.globl _CCAPM2
                                    137 	.globl _CCAPM1
                                    138 	.globl _CCAPM0
                                    139 	.globl _CMOD
                                    140 	.globl _CCON
                                    141 	.globl _UEPRST
                                    142 	.globl _UEPCONX
                                    143 	.globl _EECON
                                    144 	.globl _FCON
                                    145 	.globl _PSW
                                    146 	.globl _UEPDATX
                                    147 	.globl _UEPSTAX
                                    148 	.globl _TH2
                                    149 	.globl _TL2
                                    150 	.globl _TMR2
                                    151 	.globl _RCAP2H
                                    152 	.globl _RCAP2L
                                    153 	.globl _RCAP2
                                    154 	.globl _T2MOD
                                    155 	.globl _T2CON
                                    156 	.globl _UEPNUM
                                    157 	.globl _USBADDR
                                    158 	.globl _SPDAT
                                    159 	.globl _SPSTA
                                    160 	.globl _SPCON
                                    161 	.globl _UEPIEN
                                    162 	.globl _P4
                                    163 	.globl _USBIEN
                                    164 	.globl _USBINT
                                    165 	.globl _USBCON
                                    166 	.globl _UFNUMH
                                    167 	.globl _UFNUML
                                    168 	.globl _UFNUM
                                    169 	.globl _SADEN
                                    170 	.globl _IPL0
                                    171 	.globl _IPH0
                                    172 	.globl _IPH1
                                    173 	.globl _IPL1
                                    174 	.globl _IEN1
                                    175 	.globl _P3
                                    176 	.globl _CKCON1
                                    177 	.globl _SADDR
                                    178 	.globl _IEN0
                                    179 	.globl _IE
                                    180 	.globl _WDTPRG
                                    181 	.globl _WDTRST
                                    182 	.globl _PLLDIV
                                    183 	.globl _PLLCON
                                    184 	.globl _AUXR1
                                    185 	.globl _P2
                                    186 	.globl _KBF
                                    187 	.globl _KBE
                                    188 	.globl _KBLS
                                    189 	.globl _BDRCON
                                    190 	.globl _BRL
                                    191 	.globl _SBUF
                                    192 	.globl _SCON
                                    193 	.globl _SSADR
                                    194 	.globl _SSDAT
                                    195 	.globl _SSCS
                                    196 	.globl _SSCON
                                    197 	.globl _P1
                                    198 	.globl _CKCON0
                                    199 	.globl _AUXR
                                    200 	.globl _TH1
                                    201 	.globl _TL1
                                    202 	.globl _TMR1
                                    203 	.globl _TH0
                                    204 	.globl _TL0
                                    205 	.globl _TMR0
                                    206 	.globl _TMOD
                                    207 	.globl _TCON
                                    208 	.globl _PCON
                                    209 	.globl _DPH
                                    210 	.globl _DPL
                                    211 	.globl _SP
                                    212 	.globl _P0
                                    213 	.globl _delay
                                    214 ;--------------------------------------------------------
                                    215 ; special function registers
                                    216 ;--------------------------------------------------------
                                    217 	.area RSEG    (ABS,DATA)
      000000                        218 	.org 0x0000
                           000080   219 G$P0$0$0 == 0x0080
                           000080   220 _P0	=	0x0080
                           000081   221 G$SP$0$0 == 0x0081
                           000081   222 _SP	=	0x0081
                           000082   223 G$DPL$0$0 == 0x0082
                           000082   224 _DPL	=	0x0082
                           000083   225 G$DPH$0$0 == 0x0083
                           000083   226 _DPH	=	0x0083
                           000087   227 G$PCON$0$0 == 0x0087
                           000087   228 _PCON	=	0x0087
                           000088   229 G$TCON$0$0 == 0x0088
                           000088   230 _TCON	=	0x0088
                           000089   231 G$TMOD$0$0 == 0x0089
                           000089   232 _TMOD	=	0x0089
                           008C8A   233 G$TMR0$0$0 == 0x8c8a
                           008C8A   234 _TMR0	=	0x8c8a
                           00008A   235 G$TL0$0$0 == 0x008a
                           00008A   236 _TL0	=	0x008a
                           00008C   237 G$TH0$0$0 == 0x008c
                           00008C   238 _TH0	=	0x008c
                           008D8B   239 G$TMR1$0$0 == 0x8d8b
                           008D8B   240 _TMR1	=	0x8d8b
                           00008B   241 G$TL1$0$0 == 0x008b
                           00008B   242 _TL1	=	0x008b
                           00008D   243 G$TH1$0$0 == 0x008d
                           00008D   244 _TH1	=	0x008d
                           00008E   245 G$AUXR$0$0 == 0x008e
                           00008E   246 _AUXR	=	0x008e
                           00008F   247 G$CKCON0$0$0 == 0x008f
                           00008F   248 _CKCON0	=	0x008f
                           000090   249 G$P1$0$0 == 0x0090
                           000090   250 _P1	=	0x0090
                           000093   251 G$SSCON$0$0 == 0x0093
                           000093   252 _SSCON	=	0x0093
                           000094   253 G$SSCS$0$0 == 0x0094
                           000094   254 _SSCS	=	0x0094
                           000095   255 G$SSDAT$0$0 == 0x0095
                           000095   256 _SSDAT	=	0x0095
                           000096   257 G$SSADR$0$0 == 0x0096
                           000096   258 _SSADR	=	0x0096
                           000098   259 G$SCON$0$0 == 0x0098
                           000098   260 _SCON	=	0x0098
                           000099   261 G$SBUF$0$0 == 0x0099
                           000099   262 _SBUF	=	0x0099
                           00009A   263 G$BRL$0$0 == 0x009a
                           00009A   264 _BRL	=	0x009a
                           00009B   265 G$BDRCON$0$0 == 0x009b
                           00009B   266 _BDRCON	=	0x009b
                           00009C   267 G$KBLS$0$0 == 0x009c
                           00009C   268 _KBLS	=	0x009c
                           00009D   269 G$KBE$0$0 == 0x009d
                           00009D   270 _KBE	=	0x009d
                           00009E   271 G$KBF$0$0 == 0x009e
                           00009E   272 _KBF	=	0x009e
                           0000A0   273 G$P2$0$0 == 0x00a0
                           0000A0   274 _P2	=	0x00a0
                           0000A2   275 G$AUXR1$0$0 == 0x00a2
                           0000A2   276 _AUXR1	=	0x00a2
                           0000A3   277 G$PLLCON$0$0 == 0x00a3
                           0000A3   278 _PLLCON	=	0x00a3
                           0000A4   279 G$PLLDIV$0$0 == 0x00a4
                           0000A4   280 _PLLDIV	=	0x00a4
                           0000A6   281 G$WDTRST$0$0 == 0x00a6
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 G$WDTPRG$0$0 == 0x00a7
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A8   285 G$IE$0$0 == 0x00a8
                           0000A8   286 _IE	=	0x00a8
                           0000A8   287 G$IEN0$0$0 == 0x00a8
                           0000A8   288 _IEN0	=	0x00a8
                           0000A9   289 G$SADDR$0$0 == 0x00a9
                           0000A9   290 _SADDR	=	0x00a9
                           0000AF   291 G$CKCON1$0$0 == 0x00af
                           0000AF   292 _CKCON1	=	0x00af
                           0000B0   293 G$P3$0$0 == 0x00b0
                           0000B0   294 _P3	=	0x00b0
                           0000B1   295 G$IEN1$0$0 == 0x00b1
                           0000B1   296 _IEN1	=	0x00b1
                           0000B2   297 G$IPL1$0$0 == 0x00b2
                           0000B2   298 _IPL1	=	0x00b2
                           0000B3   299 G$IPH1$0$0 == 0x00b3
                           0000B3   300 _IPH1	=	0x00b3
                           0000B7   301 G$IPH0$0$0 == 0x00b7
                           0000B7   302 _IPH0	=	0x00b7
                           0000B8   303 G$IPL0$0$0 == 0x00b8
                           0000B8   304 _IPL0	=	0x00b8
                           0000B9   305 G$SADEN$0$0 == 0x00b9
                           0000B9   306 _SADEN	=	0x00b9
                           00BBBA   307 G$UFNUM$0$0 == 0xbbba
                           00BBBA   308 _UFNUM	=	0xbbba
                           0000BA   309 G$UFNUML$0$0 == 0x00ba
                           0000BA   310 _UFNUML	=	0x00ba
                           0000BB   311 G$UFNUMH$0$0 == 0x00bb
                           0000BB   312 _UFNUMH	=	0x00bb
                           0000BC   313 G$USBCON$0$0 == 0x00bc
                           0000BC   314 _USBCON	=	0x00bc
                           0000BD   315 G$USBINT$0$0 == 0x00bd
                           0000BD   316 _USBINT	=	0x00bd
                           0000BE   317 G$USBIEN$0$0 == 0x00be
                           0000BE   318 _USBIEN	=	0x00be
                           0000C0   319 G$P4$0$0 == 0x00c0
                           0000C0   320 _P4	=	0x00c0
                           0000C2   321 G$UEPIEN$0$0 == 0x00c2
                           0000C2   322 _UEPIEN	=	0x00c2
                           0000C3   323 G$SPCON$0$0 == 0x00c3
                           0000C3   324 _SPCON	=	0x00c3
                           0000C4   325 G$SPSTA$0$0 == 0x00c4
                           0000C4   326 _SPSTA	=	0x00c4
                           0000C5   327 G$SPDAT$0$0 == 0x00c5
                           0000C5   328 _SPDAT	=	0x00c5
                           0000C6   329 G$USBADDR$0$0 == 0x00c6
                           0000C6   330 _USBADDR	=	0x00c6
                           0000C7   331 G$UEPNUM$0$0 == 0x00c7
                           0000C7   332 _UEPNUM	=	0x00c7
                           0000C8   333 G$T2CON$0$0 == 0x00c8
                           0000C8   334 _T2CON	=	0x00c8
                           0000C9   335 G$T2MOD$0$0 == 0x00c9
                           0000C9   336 _T2MOD	=	0x00c9
                           00CBCA   337 G$RCAP2$0$0 == 0xcbca
                           00CBCA   338 _RCAP2	=	0xcbca
                           0000CA   339 G$RCAP2L$0$0 == 0x00ca
                           0000CA   340 _RCAP2L	=	0x00ca
                           0000CB   341 G$RCAP2H$0$0 == 0x00cb
                           0000CB   342 _RCAP2H	=	0x00cb
                           00CDCC   343 G$TMR2$0$0 == 0xcdcc
                           00CDCC   344 _TMR2	=	0xcdcc
                           0000CC   345 G$TL2$0$0 == 0x00cc
                           0000CC   346 _TL2	=	0x00cc
                           0000CD   347 G$TH2$0$0 == 0x00cd
                           0000CD   348 _TH2	=	0x00cd
                           0000CE   349 G$UEPSTAX$0$0 == 0x00ce
                           0000CE   350 _UEPSTAX	=	0x00ce
                           0000CF   351 G$UEPDATX$0$0 == 0x00cf
                           0000CF   352 _UEPDATX	=	0x00cf
                           0000D0   353 G$PSW$0$0 == 0x00d0
                           0000D0   354 _PSW	=	0x00d0
                           0000D1   355 G$FCON$0$0 == 0x00d1
                           0000D1   356 _FCON	=	0x00d1
                           0000D2   357 G$EECON$0$0 == 0x00d2
                           0000D2   358 _EECON	=	0x00d2
                           0000D4   359 G$UEPCONX$0$0 == 0x00d4
                           0000D4   360 _UEPCONX	=	0x00d4
                           0000D5   361 G$UEPRST$0$0 == 0x00d5
                           0000D5   362 _UEPRST	=	0x00d5
                           0000D8   363 G$CCON$0$0 == 0x00d8
                           0000D8   364 _CCON	=	0x00d8
                           0000D9   365 G$CMOD$0$0 == 0x00d9
                           0000D9   366 _CMOD	=	0x00d9
                           0000DA   367 G$CCAPM0$0$0 == 0x00da
                           0000DA   368 _CCAPM0	=	0x00da
                           0000DB   369 G$CCAPM1$0$0 == 0x00db
                           0000DB   370 _CCAPM1	=	0x00db
                           0000DC   371 G$CCAPM2$0$0 == 0x00dc
                           0000DC   372 _CCAPM2	=	0x00dc
                           0000DD   373 G$CCAPM3$0$0 == 0x00dd
                           0000DD   374 _CCAPM3	=	0x00dd
                           0000DE   375 G$CCAPM4$0$0 == 0x00de
                           0000DE   376 _CCAPM4	=	0x00de
                           0000E0   377 G$ACC$0$0 == 0x00e0
                           0000E0   378 _ACC	=	0x00e0
                           00E3E2   379 G$UBYCTX$0$0 == 0xe3e2
                           00E3E2   380 _UBYCTX	=	0xe3e2
                           0000E2   381 G$UBYCTLX$0$0 == 0x00e2
                           0000E2   382 _UBYCTLX	=	0x00e2
                           0000E3   383 G$UBYCTHX$0$0 == 0x00e3
                           0000E3   384 _UBYCTHX	=	0x00e3
                           00F9E9   385 G$PCA$0$0 == 0xf9e9
                           00F9E9   386 _PCA	=	0xf9e9
                           0000E9   387 G$CL$0$0 == 0x00e9
                           0000E9   388 _CL	=	0x00e9
                           0000F9   389 G$CH$0$0 == 0x00f9
                           0000F9   390 _CH	=	0x00f9
                           00FAEA   391 G$CCAP0$0$0 == 0xfaea
                           00FAEA   392 _CCAP0	=	0xfaea
                           0000EA   393 G$CCAP0L$0$0 == 0x00ea
                           0000EA   394 _CCAP0L	=	0x00ea
                           0000FA   395 G$CCAP0H$0$0 == 0x00fa
                           0000FA   396 _CCAP0H	=	0x00fa
                           00FBEB   397 G$CCAP1$0$0 == 0xfbeb
                           00FBEB   398 _CCAP1	=	0xfbeb
                           0000EB   399 G$CCAP1L$0$0 == 0x00eb
                           0000EB   400 _CCAP1L	=	0x00eb
                           0000FB   401 G$CCAP1H$0$0 == 0x00fb
                           0000FB   402 _CCAP1H	=	0x00fb
                           00FCEC   403 G$CCAP2$0$0 == 0xfcec
                           00FCEC   404 _CCAP2	=	0xfcec
                           0000EC   405 G$CCAP2L$0$0 == 0x00ec
                           0000EC   406 _CCAP2L	=	0x00ec
                           0000FC   407 G$CCAP2H$0$0 == 0x00fc
                           0000FC   408 _CCAP2H	=	0x00fc
                           00FDED   409 G$CCAP3$0$0 == 0xfded
                           00FDED   410 _CCAP3	=	0xfded
                           0000ED   411 G$CCAP3L$0$0 == 0x00ed
                           0000ED   412 _CCAP3L	=	0x00ed
                           0000FD   413 G$CCAP3H$0$0 == 0x00fd
                           0000FD   414 _CCAP3H	=	0x00fd
                           00FEEE   415 G$CCAP4$0$0 == 0xfeee
                           00FEEE   416 _CCAP4	=	0xfeee
                           0000EE   417 G$CCAP4L$0$0 == 0x00ee
                           0000EE   418 _CCAP4L	=	0x00ee
                           0000FE   419 G$CCAP4H$0$0 == 0x00fe
                           0000FE   420 _CCAP4H	=	0x00fe
                           0000F0   421 G$B$0$0 == 0x00f0
                           0000F0   422 _B	=	0x00f0
                           0000F1   423 G$LEDCON$0$0 == 0x00f1
                           0000F1   424 _LEDCON	=	0x00f1
                           0000F8   425 G$UEPINT$0$0 == 0x00f8
                           0000F8   426 _UEPINT	=	0x00f8
                                    427 ;--------------------------------------------------------
                                    428 ; special function bits
                                    429 ;--------------------------------------------------------
                                    430 	.area RSEG    (ABS,DATA)
      000000                        431 	.org 0x0000
                           000080   432 G$P0_0$0$0 == 0x0080
                           000080   433 _P0_0	=	0x0080
                           000081   434 G$P0_1$0$0 == 0x0081
                           000081   435 _P0_1	=	0x0081
                           000082   436 G$P0_2$0$0 == 0x0082
                           000082   437 _P0_2	=	0x0082
                           000083   438 G$P0_3$0$0 == 0x0083
                           000083   439 _P0_3	=	0x0083
                           000084   440 G$P0_4$0$0 == 0x0084
                           000084   441 _P0_4	=	0x0084
                           000085   442 G$P0_5$0$0 == 0x0085
                           000085   443 _P0_5	=	0x0085
                           000086   444 G$P0_6$0$0 == 0x0086
                           000086   445 _P0_6	=	0x0086
                           000087   446 G$P0_7$0$0 == 0x0087
                           000087   447 _P0_7	=	0x0087
                           000088   448 G$IT0$0$0 == 0x0088
                           000088   449 _IT0	=	0x0088
                           000089   450 G$IE0$0$0 == 0x0089
                           000089   451 _IE0	=	0x0089
                           00008A   452 G$IT1$0$0 == 0x008a
                           00008A   453 _IT1	=	0x008a
                           00008B   454 G$IE1$0$0 == 0x008b
                           00008B   455 _IE1	=	0x008b
                           00008C   456 G$TR0$0$0 == 0x008c
                           00008C   457 _TR0	=	0x008c
                           00008D   458 G$TF0$0$0 == 0x008d
                           00008D   459 _TF0	=	0x008d
                           00008E   460 G$TR1$0$0 == 0x008e
                           00008E   461 _TR1	=	0x008e
                           00008F   462 G$TF1$0$0 == 0x008f
                           00008F   463 _TF1	=	0x008f
                           000090   464 G$P1_0$0$0 == 0x0090
                           000090   465 _P1_0	=	0x0090
                           000091   466 G$P1_1$0$0 == 0x0091
                           000091   467 _P1_1	=	0x0091
                           000092   468 G$P1_2$0$0 == 0x0092
                           000092   469 _P1_2	=	0x0092
                           000093   470 G$P1_3$0$0 == 0x0093
                           000093   471 _P1_3	=	0x0093
                           000094   472 G$P1_4$0$0 == 0x0094
                           000094   473 _P1_4	=	0x0094
                           000095   474 G$P1_5$0$0 == 0x0095
                           000095   475 _P1_5	=	0x0095
                           000096   476 G$P1_6$0$0 == 0x0096
                           000096   477 _P1_6	=	0x0096
                           000097   478 G$P1_7$0$0 == 0x0097
                           000097   479 _P1_7	=	0x0097
                           000098   480 G$RI$0$0 == 0x0098
                           000098   481 _RI	=	0x0098
                           000099   482 G$TI$0$0 == 0x0099
                           000099   483 _TI	=	0x0099
                           00009A   484 G$RB8$0$0 == 0x009a
                           00009A   485 _RB8	=	0x009a
                           00009B   486 G$TB8$0$0 == 0x009b
                           00009B   487 _TB8	=	0x009b
                           00009C   488 G$REN$0$0 == 0x009c
                           00009C   489 _REN	=	0x009c
                           00009D   490 G$SM2$0$0 == 0x009d
                           00009D   491 _SM2	=	0x009d
                           00009E   492 G$SM1$0$0 == 0x009e
                           00009E   493 _SM1	=	0x009e
                           00009F   494 G$SM0$0$0 == 0x009f
                           00009F   495 _SM0	=	0x009f
                           00009F   496 G$FE$0$0 == 0x009f
                           00009F   497 _FE	=	0x009f
                           0000A0   498 G$P2_0$0$0 == 0x00a0
                           0000A0   499 _P2_0	=	0x00a0
                           0000A1   500 G$P2_1$0$0 == 0x00a1
                           0000A1   501 _P2_1	=	0x00a1
                           0000A2   502 G$P2_2$0$0 == 0x00a2
                           0000A2   503 _P2_2	=	0x00a2
                           0000A3   504 G$P2_3$0$0 == 0x00a3
                           0000A3   505 _P2_3	=	0x00a3
                           0000A4   506 G$P2_4$0$0 == 0x00a4
                           0000A4   507 _P2_4	=	0x00a4
                           0000A5   508 G$P2_5$0$0 == 0x00a5
                           0000A5   509 _P2_5	=	0x00a5
                           0000A6   510 G$P2_6$0$0 == 0x00a6
                           0000A6   511 _P2_6	=	0x00a6
                           0000A7   512 G$P2_7$0$0 == 0x00a7
                           0000A7   513 _P2_7	=	0x00a7
                           0000A8   514 G$EX0$0$0 == 0x00a8
                           0000A8   515 _EX0	=	0x00a8
                           0000A9   516 G$ET0$0$0 == 0x00a9
                           0000A9   517 _ET0	=	0x00a9
                           0000AA   518 G$EX1$0$0 == 0x00aa
                           0000AA   519 _EX1	=	0x00aa
                           0000AB   520 G$ET1$0$0 == 0x00ab
                           0000AB   521 _ET1	=	0x00ab
                           0000AC   522 G$ES$0$0 == 0x00ac
                           0000AC   523 _ES	=	0x00ac
                           0000AD   524 G$ET2$0$0 == 0x00ad
                           0000AD   525 _ET2	=	0x00ad
                           0000AE   526 G$EC$0$0 == 0x00ae
                           0000AE   527 _EC	=	0x00ae
                           0000AF   528 G$EA$0$0 == 0x00af
                           0000AF   529 _EA	=	0x00af
                           0000B0   530 G$P3_0$0$0 == 0x00b0
                           0000B0   531 _P3_0	=	0x00b0
                           0000B1   532 G$P3_1$0$0 == 0x00b1
                           0000B1   533 _P3_1	=	0x00b1
                           0000B2   534 G$P3_2$0$0 == 0x00b2
                           0000B2   535 _P3_2	=	0x00b2
                           0000B3   536 G$P3_3$0$0 == 0x00b3
                           0000B3   537 _P3_3	=	0x00b3
                           0000B4   538 G$P3_4$0$0 == 0x00b4
                           0000B4   539 _P3_4	=	0x00b4
                           0000B5   540 G$P3_5$0$0 == 0x00b5
                           0000B5   541 _P3_5	=	0x00b5
                           0000B6   542 G$P3_6$0$0 == 0x00b6
                           0000B6   543 _P3_6	=	0x00b6
                           0000B7   544 G$P3_7$0$0 == 0x00b7
                           0000B7   545 _P3_7	=	0x00b7
                           0000B8   546 G$PX0L$0$0 == 0x00b8
                           0000B8   547 _PX0L	=	0x00b8
                           0000B9   548 G$PT0L$0$0 == 0x00b9
                           0000B9   549 _PT0L	=	0x00b9
                           0000BA   550 G$PX1L$0$0 == 0x00ba
                           0000BA   551 _PX1L	=	0x00ba
                           0000BB   552 G$PT1L$0$0 == 0x00bb
                           0000BB   553 _PT1L	=	0x00bb
                           0000BC   554 G$PSL$0$0 == 0x00bc
                           0000BC   555 _PSL	=	0x00bc
                           0000BD   556 G$PT2L$0$0 == 0x00bd
                           0000BD   557 _PT2L	=	0x00bd
                           0000BE   558 G$PPCL$0$0 == 0x00be
                           0000BE   559 _PPCL	=	0x00be
                           0000C0   560 G$P4_0$0$0 == 0x00c0
                           0000C0   561 _P4_0	=	0x00c0
                           0000C1   562 G$P4_1$0$0 == 0x00c1
                           0000C1   563 _P4_1	=	0x00c1
                           0000C8   564 G$CP_RL2$0$0 == 0x00c8
                           0000C8   565 _CP_RL2	=	0x00c8
                           0000C9   566 G$C_T2$0$0 == 0x00c9
                           0000C9   567 _C_T2	=	0x00c9
                           0000CA   568 G$TR2$0$0 == 0x00ca
                           0000CA   569 _TR2	=	0x00ca
                           0000CB   570 G$EXEN2$0$0 == 0x00cb
                           0000CB   571 _EXEN2	=	0x00cb
                           0000CC   572 G$TCLK$0$0 == 0x00cc
                           0000CC   573 _TCLK	=	0x00cc
                           0000CD   574 G$RCLK$0$0 == 0x00cd
                           0000CD   575 _RCLK	=	0x00cd
                           0000CE   576 G$EXF2$0$0 == 0x00ce
                           0000CE   577 _EXF2	=	0x00ce
                           0000CF   578 G$TF2$0$0 == 0x00cf
                           0000CF   579 _TF2	=	0x00cf
                           0000D0   580 G$P$0$0 == 0x00d0
                           0000D0   581 _P	=	0x00d0
                           0000D1   582 G$F1$0$0 == 0x00d1
                           0000D1   583 _F1	=	0x00d1
                           0000D2   584 G$OV$0$0 == 0x00d2
                           0000D2   585 _OV	=	0x00d2
                           0000D3   586 G$RS0$0$0 == 0x00d3
                           0000D3   587 _RS0	=	0x00d3
                           0000D4   588 G$RS1$0$0 == 0x00d4
                           0000D4   589 _RS1	=	0x00d4
                           0000D5   590 G$F0$0$0 == 0x00d5
                           0000D5   591 _F0	=	0x00d5
                           0000D6   592 G$AC$0$0 == 0x00d6
                           0000D6   593 _AC	=	0x00d6
                           0000D7   594 G$CY$0$0 == 0x00d7
                           0000D7   595 _CY	=	0x00d7
                           0000D8   596 G$CCF0$0$0 == 0x00d8
                           0000D8   597 _CCF0	=	0x00d8
                           0000D9   598 G$CCF1$0$0 == 0x00d9
                           0000D9   599 _CCF1	=	0x00d9
                           0000DA   600 G$CCF2$0$0 == 0x00da
                           0000DA   601 _CCF2	=	0x00da
                           0000DB   602 G$CCF3$0$0 == 0x00db
                           0000DB   603 _CCF3	=	0x00db
                           0000DC   604 G$CCF4$0$0 == 0x00dc
                           0000DC   605 _CCF4	=	0x00dc
                           0000DE   606 G$CR$0$0 == 0x00de
                           0000DE   607 _CR	=	0x00de
                           0000DF   608 G$CF$0$0 == 0x00df
                           0000DF   609 _CF	=	0x00df
                           0000F8   610 G$EP0INT$0$0 == 0x00f8
                           0000F8   611 _EP0INT	=	0x00f8
                           0000F9   612 G$EP1INT$0$0 == 0x00f9
                           0000F9   613 _EP1INT	=	0x00f9
                           0000FA   614 G$EP2INT$0$0 == 0x00fa
                           0000FA   615 _EP2INT	=	0x00fa
                           0000FB   616 G$EP3INT$0$0 == 0x00fb
                           0000FB   617 _EP3INT	=	0x00fb
                           0000FC   618 G$EP4INT$0$0 == 0x00fc
                           0000FC   619 _EP4INT	=	0x00fc
                           0000FD   620 G$EP5INT$0$0 == 0x00fd
                           0000FD   621 _EP5INT	=	0x00fd
                           0000FE   622 G$EP6INT$0$0 == 0x00fe
                           0000FE   623 _EP6INT	=	0x00fe
                                    624 ;--------------------------------------------------------
                                    625 ; overlayable register banks
                                    626 ;--------------------------------------------------------
                                    627 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        628 	.ds 8
                                    629 ;--------------------------------------------------------
                                    630 ; internal ram data
                                    631 ;--------------------------------------------------------
                                    632 	.area DSEG    (DATA)
                                    633 ;--------------------------------------------------------
                                    634 ; overlayable items in internal ram 
                                    635 ;--------------------------------------------------------
                                    636 ;--------------------------------------------------------
                                    637 ; Stack segment in internal ram 
                                    638 ;--------------------------------------------------------
                                    639 	.area	SSEG
      000008                        640 __start__stack:
      000008                        641 	.ds	1
                                    642 
                                    643 ;--------------------------------------------------------
                                    644 ; indirectly addressable internal ram data
                                    645 ;--------------------------------------------------------
                                    646 	.area ISEG    (DATA)
                                    647 ;--------------------------------------------------------
                                    648 ; absolute internal ram data
                                    649 ;--------------------------------------------------------
                                    650 	.area IABS    (ABS,DATA)
                                    651 	.area IABS    (ABS,DATA)
                                    652 ;--------------------------------------------------------
                                    653 ; bit data
                                    654 ;--------------------------------------------------------
                                    655 	.area BSEG    (BIT)
                                    656 ;--------------------------------------------------------
                                    657 ; paged external ram data
                                    658 ;--------------------------------------------------------
                                    659 	.area PSEG    (PAG,XDATA)
                                    660 ;--------------------------------------------------------
                                    661 ; external ram data
                                    662 ;--------------------------------------------------------
                                    663 	.area XSEG    (XDATA)
                                    664 ;--------------------------------------------------------
                                    665 ; absolute external ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area XABS    (ABS,XDATA)
                                    668 ;--------------------------------------------------------
                                    669 ; external initialized ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area XISEG   (XDATA)
                                    672 	.area HOME    (CODE)
                                    673 	.area GSINIT0 (CODE)
                                    674 	.area GSINIT1 (CODE)
                                    675 	.area GSINIT2 (CODE)
                                    676 	.area GSINIT3 (CODE)
                                    677 	.area GSINIT4 (CODE)
                                    678 	.area GSINIT5 (CODE)
                                    679 	.area GSINIT  (CODE)
                                    680 	.area GSFINAL (CODE)
                                    681 	.area CSEG    (CODE)
                                    682 ;--------------------------------------------------------
                                    683 ; interrupt vector 
                                    684 ;--------------------------------------------------------
                                    685 	.area HOME    (CODE)
      000000                        686 __interrupt_vect:
      000000 02 00 06         [24]  687 	ljmp	__sdcc_gsinit_startup
                                    688 ;--------------------------------------------------------
                                    689 ; global & static initialisations
                                    690 ;--------------------------------------------------------
                                    691 	.area HOME    (CODE)
                                    692 	.area GSINIT  (CODE)
                                    693 	.area GSFINAL (CODE)
                                    694 	.area GSINIT  (CODE)
                                    695 	.globl __sdcc_gsinit_startup
                                    696 	.globl __sdcc_program_startup
                                    697 	.globl __start__stack
                                    698 	.globl __mcs51_genXINIT
                                    699 	.globl __mcs51_genXRAMCLEAR
                                    700 	.globl __mcs51_genRAMCLEAR
                                    701 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  702 	ljmp	__sdcc_program_startup
                                    703 ;--------------------------------------------------------
                                    704 ; Home
                                    705 ;--------------------------------------------------------
                                    706 	.area HOME    (CODE)
                                    707 	.area HOME    (CODE)
      000003                        708 __sdcc_program_startup:
      000003 02 00 62         [24]  709 	ljmp	_main
                                    710 ;	return from main will return to caller
                                    711 ;--------------------------------------------------------
                                    712 ; code
                                    713 ;--------------------------------------------------------
                                    714 	.area CSEG    (CODE)
                                    715 ;------------------------------------------------------------
                                    716 ;Allocation info for local variables in function 'main'
                                    717 ;------------------------------------------------------------
                           000000   718 	G$main$0$0 ==.
                           000000   719 	C$q3c.c$5$0$0 ==.
                                    720 ;	q3c.c:5: void main(void)
                                    721 ;	-----------------------------------------
                                    722 ;	 function main
                                    723 ;	-----------------------------------------
      000062                        724 _main:
                           000007   725 	ar7 = 0x07
                           000006   726 	ar6 = 0x06
                           000005   727 	ar5 = 0x05
                           000004   728 	ar4 = 0x04
                           000003   729 	ar3 = 0x03
                           000002   730 	ar2 = 0x02
                           000001   731 	ar1 = 0x01
                           000000   732 	ar0 = 0x00
                           000000   733 	C$q3c.c$7$1$3 ==.
                                    734 ;	q3c.c:7: while(1)
      000062                        735 00102$:
                           000000   736 	C$q3c.c$9$2$4 ==.
                                    737 ;	q3c.c:9: P1 = 0x80;
      000062 75 90 80         [24]  738 	mov	_P1,#0x80
                           000003   739 	C$q3c.c$10$2$4 ==.
                                    740 ;	q3c.c:10: delay();
      000065 12 00 7D         [24]  741 	lcall	_delay
                           000006   742 	C$q3c.c$11$2$4 ==.
                                    743 ;	q3c.c:11: P1 = 0x40;
      000068 75 90 40         [24]  744 	mov	_P1,#0x40
                           000009   745 	C$q3c.c$12$2$4 ==.
                                    746 ;	q3c.c:12: delay();
      00006B 12 00 7D         [24]  747 	lcall	_delay
                           00000C   748 	C$q3c.c$13$2$4 ==.
                                    749 ;	q3c.c:13: P1 = 0x20;
      00006E 75 90 20         [24]  750 	mov	_P1,#0x20
                           00000F   751 	C$q3c.c$14$2$4 ==.
                                    752 ;	q3c.c:14: delay();
      000071 12 00 7D         [24]  753 	lcall	_delay
                           000012   754 	C$q3c.c$15$2$4 ==.
                                    755 ;	q3c.c:15: P1 = 0x10;
      000074 75 90 10         [24]  756 	mov	_P1,#0x10
                           000015   757 	C$q3c.c$16$2$4 ==.
                                    758 ;	q3c.c:16: delay();
      000077 12 00 7D         [24]  759 	lcall	_delay
      00007A 80 E6            [24]  760 	sjmp	00102$
                           00001A   761 	C$q3c.c$18$1$3 ==.
                           00001A   762 	XG$main$0$0 ==.
      00007C 22               [24]  763 	ret
                                    764 ;------------------------------------------------------------
                                    765 ;Allocation info for local variables in function 'delay'
                                    766 ;------------------------------------------------------------
                                    767 ;i                         Allocated to registers r6 r7 
                                    768 ;j                         Allocated to registers r4 r5 
                                    769 ;------------------------------------------------------------
                           00001B   770 	G$delay$0$0 ==.
                           00001B   771 	C$q3c.c$20$1$3 ==.
                                    772 ;	q3c.c:20: void delay(void)
                                    773 ;	-----------------------------------------
                                    774 ;	 function delay
                                    775 ;	-----------------------------------------
      00007D                        776 _delay:
                           00001B   777 	C$q3c.c$23$1$6 ==.
                                    778 ;	q3c.c:23: for(i=0; i<0xff;i++)
      00007D 7E 00            [12]  779 	mov	r6,#0x00
      00007F 7F 00            [12]  780 	mov	r7,#0x00
      000081                        781 00106$:
                           00001F   782 	C$q3c.c$24$1$6 ==.
                                    783 ;	q3c.c:24: for(j=0; j<0xff;j++);
      000081 7C FF            [12]  784 	mov	r4,#0xFF
      000083 7D 00            [12]  785 	mov	r5,#0x00
      000085                        786 00105$:
      000085 EC               [12]  787 	mov	a,r4
      000086 24 FF            [12]  788 	add	a,#0xFF
      000088 FA               [12]  789 	mov	r2,a
      000089 ED               [12]  790 	mov	a,r5
      00008A 34 FF            [12]  791 	addc	a,#0xFF
      00008C FB               [12]  792 	mov	r3,a
      00008D 8A 04            [24]  793 	mov	ar4,r2
      00008F 8B 05            [24]  794 	mov	ar5,r3
      000091 EA               [12]  795 	mov	a,r2
      000092 4B               [12]  796 	orl	a,r3
      000093 70 F0            [24]  797 	jnz	00105$
                           000033   798 	C$q3c.c$23$1$6 ==.
                                    799 ;	q3c.c:23: for(i=0; i<0xff;i++)
      000095 0E               [12]  800 	inc	r6
      000096 BE 00 01         [24]  801 	cjne	r6,#0x00,00120$
      000099 0F               [12]  802 	inc	r7
      00009A                        803 00120$:
      00009A C3               [12]  804 	clr	c
      00009B EE               [12]  805 	mov	a,r6
      00009C 94 FF            [12]  806 	subb	a,#0xFF
      00009E EF               [12]  807 	mov	a,r7
      00009F 64 80            [12]  808 	xrl	a,#0x80
      0000A1 94 80            [12]  809 	subb	a,#0x80
      0000A3 40 DC            [24]  810 	jc	00106$
                           000043   811 	C$q3c.c$25$1$6 ==.
                           000043   812 	XG$delay$0$0 ==.
      0000A5 22               [24]  813 	ret
                                    814 	.area CSEG    (CODE)
                                    815 	.area CONST   (CODE)
                                    816 	.area XINIT   (CODE)
                                    817 	.area CABS    (ABS,CODE)
