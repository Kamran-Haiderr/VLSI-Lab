DSCH 2.7a
VERSION 1/31/2019 10:08:00 PM
BB(86,-20,169,10)
SYM  #button1
BB(86,-19,95,-11)
TITLE 90 -15  #button
MODEL 59
PROP                                                                                                                                   
REC(87,-18,6,6,r)
VIS 1
PIN(95,-15,0.000,0.000)A
LIG(94,-15,95,-15)
LIG(86,-11,86,-19)
LIG(94,-11,86,-11)
LIG(94,-19,94,-11)
LIG(86,-19,94,-19)
LIG(87,-12,87,-18)
LIG(93,-12,87,-12)
LIG(93,-18,93,-12)
LIG(87,-18,93,-18)
FSYM
SYM  #button2
BB(86,1,95,9)
TITLE 90 5  #button
MODEL 59
PROP                                                                                                                                   
REC(87,2,6,6,g)
VIS 1
PIN(95,5,0.000,0.000)B
LIG(94,5,95,5)
LIG(86,9,86,1)
LIG(94,9,86,9)
LIG(94,1,94,9)
LIG(86,1,94,1)
LIG(87,8,87,2)
LIG(93,8,87,8)
LIG(93,2,93,8)
LIG(87,2,93,2)
FSYM
SYM  #light1
BB(163,-20,169,-6)
TITLE 165 -6  #light
MODEL 49
PROP                                                                                                                                   
REC(164,-19,4,4,p)
VIS 1
PIN(165,-5,0.000,0.000)8)A+(AB)
LIG(168,-14,168,-19)
LIG(168,-19,167,-20)
LIG(164,-19,164,-14)
LIG(167,-9,167,-12)
LIG(166,-9,169,-9)
LIG(166,-7,168,-9)
LIG(167,-7,169,-9)
LIG(163,-12,169,-12)
LIG(165,-12,165,-5)
LIG(163,-14,163,-12)
LIG(169,-14,163,-14)
LIG(169,-12,169,-14)
LIG(165,-20,164,-19)
LIG(167,-20,165,-20)
FSYM
SYM  #or2
BB(130,-15,165,5)
TITLE 150 -5  #|
MODEL 502
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(130,-10,0.000,0.000)a
PIN(130,0,0.000,0.000)b
PIN(165,-5,0.090,0.070)s
LIG(130,0,143,0)
LIG(142,2,138,5)
LIG(158,-5,165,-5)
LIG(157,-3,154,1)
LIG(158,-5,157,-3)
LIG(157,-7,158,-5)
LIG(154,-11,157,-7)
LIG(149,-14,154,-11)
LIG(154,1,149,4)
LIG(149,4,138,5)
LIG(138,-15,149,-14)
LIG(144,-2,142,2)
LIG(138,-15,142,-12)
LIG(142,-12,144,-8)
LIG(144,-8,145,-5)
LIG(145,-5,144,-2)
LIG(130,-10,143,-10)
VLG  or or2(s,a,b);
FSYM
SYM  #and2
BB(95,-10,130,10)
TITLE 107 1  #&
MODEL 402
PROP                                                                                                                                   
REC(5,-5,0,0, )
VIS 0
PIN(95,5,0.000,0.000)b
PIN(95,-5,0.000,0.000)a
PIN(130,0,0.090,0.070)s
LIG(95,5,103,5)
LIG(103,-10,103,10)
LIG(123,0,130,0)
LIG(122,2,119,6)
LIG(123,0,122,2)
LIG(122,-2,123,0)
LIG(119,-6,122,-2)
LIG(114,-9,119,-6)
LIG(119,6,114,9)
LIG(114,9,103,10)
LIG(103,-10,114,-9)
LIG(95,-5,103,-5)
VLG  and and2(out,a,b);
FSYM
LIG(95,-15,95,-5)
LIG(95,-15,110,-15)
LIG(110,-15,110,-10)
LIG(110,-10,130,-10)
FFIG D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_VLSI_1\8)A+(AB).sch
