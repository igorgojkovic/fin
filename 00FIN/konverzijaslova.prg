FUNCTION konvert_latin_u_cir
LPARAMETERS masc
      DO CASE masc
      CASE masc=240
         MNSLOVO=CHR(144)
      CASE masc=208
         MNSLOVO=CHR(128)
      CASE masc=158
         MNSLOVO=CHR(230)
      CASE masc=142
         MNSLOVO=CHR(198)
      CASE masc=230
         MNSLOVO=CHR(158)
      CASE masc=198
         MNSLOVO=CHR(142)
      CASE masc=154
         MNSLOVO=CHR(248)
      CASE masc=138
         MNSLOVO=CHR(216)
      CASE masc=97
         MNSLOVO=CHR(224)
      CASE masc=65
         MNSLOVO=CHR(192)
      CASE masc=98
         MNSLOVO=CHR(225)
      CASE masc=66
         MNSLOVO=CHR(193)
      CASE masc=96
         MNSLOVO=CHR(246)
      CASE masc=67
         MNSLOVO=CHR(214)
      CASE masc=100
         MNSLOVO=CHR(228)
      CASE masc=68
         MNSLOVO=CHR(196)
      CASE masc=101
         MNSLOVO=CHR(229)
      CASE masc=69
         MNSLOVO=CHR(197)
      CASE masc=102
         MNSLOVO=CHR(244)
      CASE masc=70
         MNSLOVO=CHR(212)
      CASE masc=103
         MNSLOVO=CHR(227)
      CASE masc=71
         MNSLOVO=CHR(195)
      CASE masc=104
         MNSLOVO=CHR(245)
      CASE masc=72
         MNSLOVO=CHR(213)
      CASE masc=105
         MNSLOVO=CHR(232)
      CASE masc=73
         MNSLOVO=CHR(200)
      CASE masc=106
         MNSLOVO=CHR(188)
      CASE masc=74
         MNSLOVO=CHR(163)
      CASE masc=107
         MNSLOVO=CHR(234)
      CASE masc=75
         MNSLOVO=CHR(202)
      CASE masc=108
         MNSLOVO=CHR(235)
      CASE masc=76
         MNSLOVO=CHR(203)
      CASE masc=109
         MNSLOVO=CHR(236)
      CASE masc=77
         MNSLOVO=CHR(204)
      CASE masc=110
         MNSLOVO=CHR(237)
      CASE masc=78
         MNSLOVO=CHR(205)
      CASE masc=111
         MNSLOVO=CHR(238)
      CASE masc=79
         MNSLOVO=CHR(206)
      CASE masc=112
         MNSLOVO=CHR(239)
      CASE masc=80
         MNSLOVO=CHR(207)
         
      CASE masc=114
         MNSLOVO=CHR(240)
      CASE masc=82
         MNSLOVO=CHR(208)
      CASE masc=115
         MNSLOVO=CHR(241)
      CASE masc=83
         MNSLOVO=CHR(209)
      CASE masc=116
         MNSLOVO=CHR(242)
      CASE masc=84
         MNSLOVO=CHR(210)
      CASE masc=117
         MNSLOVO=CHR(243)
      CASE masc=85
         MNSLOVO=CHR(211)
      CASE masc=118
         MNSLOVO=CHR(226)
      CASE masc=86
         MNSLOVO=CHR(194)
      CASE masc=122
         MNSLOVO=CHR(231)
      CASE masc=90
         MNSLOVO=CHR(199)
      *------slovo È   
      CASE masc=232
         MNSLOVO=CHR(247)
      CASE masc=200
         MNSLOVO=CHR(215)
      *------slovo Ð
      CASE masc=240
         MNSLOVO=CHR(144)
      CASE masc=208
         MNSLOVO=CHR(128)
      *------slovo Ž
      CASE masc=158
         MNSLOVO=CHR(142)
      CASE masc=230
         MNSLOVO=CHR(198)
      *------slovo Ž
      CASE masc=230
         MNSLOVO=CHR(158)
      CASE masc=198
         MNSLOVO=CHR(142)
      *------slovo Š
      CASE masc=154
         MNSLOVO=CHR(248)
      CASE masc=138
         MNSLOVO=CHR(216)
       
      OTHERWISE
         mnslovo=msslovo
      endcase      
RETURN(mnslovo)      



FUNCTION konvert_cir_u_latin
LPARAMETERS masc
      DO CASE masc
      CASE masc=144
         MNSLOVO=CHR(240)
      CASE masc=128
         MNSLOVO=CHR(208)
      CASE masc= 230
         MNSLOVO=CHR(158)
      CASE masc= 198
         MNSLOVO=CHR(142)
      CASE masc= 158
         MNSLOVO=CHR(230)
      CASE masc= 142
         MNSLOVO=CHR(198)
      CASE masc= 248
         MNSLOVO=CHR(154)
      CASE masc= 216
         MNSLOVO=CHR(138)
      CASE masc= 224
         MNSLOVO=CHR(97)
      CASE masc= 192
         MNSLOVO=CHR(65)
      CASE masc= 225
         MNSLOVO=CHR(98)
      CASE masc= 193
         MNSLOVO=CHR(66)
      CASE masc= 246
         MNSLOVO=CHR(96)
      CASE masc= 214
         MNSLOVO=CHR(67)
      CASE masc= 228
         MNSLOVO=CHR(100)
      CASE masc= 196
         MNSLOVO=CHR(68)
      CASE masc= 229
         MNSLOVO=CHR(101)
      CASE masc= 197
         MNSLOVO=CHR(69)
      CASE masc= 244
         MNSLOVO=CHR(102)
      CASE masc= 212
         MNSLOVO=CHR(70)
      CASE masc= 227
         MNSLOVO=CHR(103)
      CASE masc= 195
         MNSLOVO=CHR(71)
      CASE masc= 245
         MNSLOVO=CHR(104)
      CASE masc= 213
         MNSLOVO=CHR(72)
      CASE masc= 232
         MNSLOVO=CHR(105)
      CASE masc= 200
         MNSLOVO=CHR(73)
      CASE masc= 188
         MNSLOVO=CHR(106)
      CASE masc= 163
         MNSLOVO=CHR(74)
      CASE masc= 234
         MNSLOVO=CHR(107)
      CASE masc= 202
         MNSLOVO=CHR(75)
      CASE masc= 235
         MNSLOVO=CHR(108)
      CASE masc= 203
         MNSLOVO=CHR(76)
      CASE masc= 236
         MNSLOVO=CHR(109)
      CASE masc= 204
         MNSLOVO=CHR(77)
      CASE masc= 237
         MNSLOVO=CHR(110)
      CASE masc= 205
         MNSLOVO=CHR(78)
      CASE masc= 238
         MNSLOVO=CHR(111)
      CASE masc= 206
         MNSLOVO=CHR(79)
         
      CASE masc= 239
         MNSLOVO=CHR(112)
      CASE masc= 207
         MNSLOVO=CHR(80)
      
      CASE masc= 240
         MNSLOVO=CHR(114)
      CASE masc= 208
         MNSLOVO=CHR(82)
      CASE masc= 241
         MNSLOVO=CHR(115)
      CASE masc= 209
         MNSLOVO=CHR(83)
      CASE masc= 242
         MNSLOVO=CHR(116)
      CASE masc= 210
         MNSLOVO=CHR(84)
      CASE masc= 243
         MNSLOVO=CHR(117)
      CASE masc= 211
         MNSLOVO=CHR(85)
      CASE masc= 226
         MNSLOVO=CHR(118)
      CASE masc= 194
         MNSLOVO=CHR(86)
      CASE masc= 231
         MNSLOVO=CHR(122)
      CASE masc=199
         MNSLOVO=CHR(90)
      CASE masc=247
         MNSLOVO=CHR(232)
      CASE masc=215
         MNSLOVO=CHR(200)

      *------slovo È   
      CASE masc=247
         MNSLOVO=CHR(232)
      CASE masc=215
         MNSLOVO=CHR(200)
      *------slovo Ð
      CASE masc=144
         MNSLOVO=CHR(240)
      CASE masc=128
         MNSLOVO=CHR(208)
      *------slovo Ž
      CASE masc=142
         MNSLOVO=CHR(198)
      CASE masc=230
         MNSLOVO=CHR(158)
      *------slovo Ž
      CASE masc=158
         MNSLOVO=CHR(230)
      CASE masc=198
         MNSLOVO=CHR(142)
      *------slovo Š
      CASE masc=248
         MNSLOVO=CHR(154)
      CASE masc=216
         MNSLOVO=CHR(138)
      OTHERWISE
         mnslovo=msslovo
      endcase      
RETURN(mnslovo)      