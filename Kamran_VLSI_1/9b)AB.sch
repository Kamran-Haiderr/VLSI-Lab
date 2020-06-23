DSCH 2.7a
VERSION 1/31/2019 10:19:28 PM
BB(86,-15,134,10)
SYM  #button1
BB(86,-9,95,-1)
TITLE 90 -5  #button
MODEL 59
PROP                                                                                                                                   
REC(87,-8,6,6,p)
VIS 1
PIN(95,-5,0.000,0.000)A
LIG(94,-5,95,-5)
LIG(86,-1,86,-9)
LIG(94,-1,86,-1)
LIG(94,-9,94,-1)
LIG(86,-9,94,-9)
LIG(87,-2,87,-8)
LIG(93,-2,87,-2)
LIG(93,-8,93,-2)
LIG(87,-8,93,-8)
FSYM
SYM  #button2
BB(86,1,95,9)
TITLE 90 5  #button
MODEL 59
PROP                                                                                                                                   
REC(87,2,6,6,b)
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
SYM  #and2
BB(95,-10,130,10)
TITLE 107 1  #&
MODEL 402
PROP                                                                                                                                   
REC(0,0,0,0, )
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
SYM  #light1
BB(128,-15,134,-1)
TITLE 130 -1  #light
MODEL 49
PROP                                                                                                                                   
REC(129,-14,4,4,b)
VIS 1
PIN(130,0,0.000,0.000)9b)AB
LIG(133,-9,133,-14)
LIG(133,-14,132,-15)
LIG(129,-14,129,-9)
LIG(132,-4,132,-7)
LIG(131,-4,134,-4)
LIG(131,-2,133,-4)
LIG(132,-2,134,-4)
LIG(128,-7,134,-7)
LIG(130,-7,130,0)
LIG(128,-9,128,-7)
LIG(134,-9,128,-9)
LIG(134,-7,134,-9)
LIG(130,-15,129,-14)
LIG(132,-15,130,-15)
FSYM
FFIG D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_VLSI_1\9b)AB.sch
