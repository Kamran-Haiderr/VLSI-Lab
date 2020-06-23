DSCH 2.7a
VERSION 1/31/2019 4:35:49 PM
BB(16,0,99,45)
SYM  #and2
BB(60,10,95,30)
TITLE 72 21  #&
MODEL 402
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(60,25,0.000,0.000)b
PIN(60,15,0.000,0.000)a
PIN(95,20,0.090,0.070)s
LIG(60,25,68,25)
LIG(68,10,68,30)
LIG(88,20,95,20)
LIG(87,22,84,26)
LIG(88,20,87,22)
LIG(87,18,88,20)
LIG(84,14,87,18)
LIG(79,11,84,14)
LIG(84,26,79,29)
LIG(79,29,68,30)
LIG(68,10,79,11)
LIG(60,15,68,15)
VLG  and and2(out,a,b);
FSYM
SYM  #inv
BB(25,0,60,20)
TITLE 40 10  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(25,10,0.000,0.000)in
PIN(60,10,0.030,0.000)out
LIG(25,10,35,10)
LIG(35,0,35,20)
LIG(35,0,50,10)
LIG(35,20,50,10)
LIG(52,10,52,10)
LIG(54,10,60,10)
VLG  not not1(out,in);
FSYM
SYM  #inv
BB(25,25,60,45)
TITLE 40 35  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(25,35,0.000,0.000)in
PIN(60,35,0.030,0.000)out
LIG(25,35,35,35)
LIG(35,25,35,45)
LIG(35,25,50,35)
LIG(35,45,50,35)
LIG(52,35,52,35)
LIG(54,35,60,35)
VLG  not not1(out,in);
FSYM
SYM  #button1
BB(16,6,25,14)
TITLE 20 10  #button
MODEL 59
PROP                                                                                                                                   
REC(17,7,6,6,b)
VIS 1
PIN(25,10,0.000,0.000)A
LIG(24,10,25,10)
LIG(16,14,16,6)
LIG(24,14,16,14)
LIG(24,6,24,14)
LIG(16,6,24,6)
LIG(17,13,17,7)
LIG(23,13,17,13)
LIG(23,7,23,13)
LIG(17,7,23,7)
FSYM
SYM  #button2
BB(16,31,25,39)
TITLE 20 35  #button
MODEL 59
PROP                                                                                                                                   
REC(17,32,6,6,b)
VIS 1
PIN(25,35,0.000,0.000)B
LIG(24,35,25,35)
LIG(16,39,16,31)
LIG(24,39,16,39)
LIG(24,31,24,39)
LIG(16,31,24,31)
LIG(17,38,17,32)
LIG(23,38,17,38)
LIG(23,32,23,38)
LIG(17,32,23,32)
FSYM
SYM  #light1
BB(93,5,99,19)
TITLE 95 19  #light
MODEL 49
PROP                                                                                                                                   
REC(94,6,4,4,p)
VIS 1
PIN(95,20,0.000,0.000)out1
LIG(98,11,98,6)
LIG(98,6,97,5)
LIG(94,6,94,11)
LIG(97,16,97,13)
LIG(96,16,99,16)
LIG(96,18,98,16)
LIG(97,18,99,16)
LIG(93,13,99,13)
LIG(95,13,95,20)
LIG(93,11,93,13)
LIG(99,11,93,11)
LIG(99,13,99,11)
LIG(95,5,94,6)
LIG(97,5,95,5)
FSYM
LIG(60,10,60,15)
LIG(60,25,60,35)
FFIG C:\Users\i140420\Desktop\Kamran_VLSI_1\DeMorgan_Mul_1.sch
