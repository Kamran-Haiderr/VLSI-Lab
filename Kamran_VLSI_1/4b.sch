DSCH 2.7a
VERSION 1/31/2019 9:22:58 PM
BB(41,-15,129,30)
SYM  #button1
BB(41,-9,50,-1)
TITLE 45 -5  #button
MODEL 59
PROP                                                                                                                                   
REC(42,-8,6,6,r)
VIS 1
PIN(50,-5,0.000,0.000)A
LIG(49,-5,50,-5)
LIG(41,-1,41,-9)
LIG(49,-1,41,-1)
LIG(49,-9,49,-1)
LIG(41,-9,49,-9)
LIG(42,-2,42,-8)
LIG(48,-2,42,-2)
LIG(48,-8,48,-2)
LIG(42,-8,48,-8)
FSYM
SYM  #button2
BB(41,16,50,24)
TITLE 45 20  #button
MODEL 59
PROP                                                                                                                                   
REC(42,17,6,6,g)
VIS 1
PIN(50,20,0.000,0.000)B
LIG(49,20,50,20)
LIG(41,24,41,16)
LIG(49,24,41,24)
LIG(49,16,49,24)
LIG(41,16,49,16)
LIG(42,23,42,17)
LIG(48,23,42,23)
LIG(48,17,48,23)
LIG(42,17,48,17)
FSYM
SYM  #inv
BB(50,-15,85,5)
TITLE 65 -5  #~
MODEL 101
PROP                                                                                                                                   
REC(0,5,0,0, )
VIS 0
PIN(50,-5,0.000,0.000)in
PIN(85,-5,0.030,0.000)out
LIG(50,-5,60,-5)
LIG(60,-15,60,5)
LIG(60,-15,75,-5)
LIG(60,5,75,-5)
LIG(77,-5,77,-5)
LIG(79,-5,85,-5)
VLG  not not1(out,in);
FSYM
SYM  #inv
BB(50,10,85,30)
TITLE 65 20  #~
MODEL 101
PROP                                                                                                                                   
REC(-5,0,0,0, )
VIS 0
PIN(50,20,0.000,0.000)in
PIN(85,20,0.030,0.000)out
LIG(50,20,60,20)
LIG(60,10,60,30)
LIG(60,10,75,20)
LIG(60,30,75,20)
LIG(77,20,77,20)
LIG(79,20,85,20)
VLG  not not1(out,in);
FSYM
SYM  #and2
BB(90,-5,125,15)
TITLE 102 6  #&
MODEL 402
PROP                                                                                                                                   
REC(10,-5,0,0, )
VIS 0
PIN(90,10,0.000,0.000)b
PIN(90,0,0.000,0.000)a
PIN(125,5,0.090,0.070)s
LIG(90,10,98,10)
LIG(98,-5,98,15)
LIG(118,5,125,5)
LIG(117,7,114,11)
LIG(118,5,117,7)
LIG(117,3,118,5)
LIG(114,-1,117,3)
LIG(109,-4,114,-1)
LIG(114,11,109,14)
LIG(109,14,98,15)
LIG(98,-5,109,-4)
LIG(90,0,98,0)
VLG  and and2(out,a,b);
FSYM
SYM  #light1
BB(123,-10,129,4)
TITLE 125 4  #light
MODEL 49
PROP                                                                                                                                   
REC(124,-9,4,4,b)
VIS 1
PIN(125,5,0.000,0.000)out1
LIG(128,-4,128,-9)
LIG(128,-9,127,-10)
LIG(124,-9,124,-4)
LIG(127,1,127,-2)
LIG(126,1,129,1)
LIG(126,3,128,1)
LIG(127,3,129,1)
LIG(123,-2,129,-2)
LIG(125,-2,125,5)
LIG(123,-4,123,-2)
LIG(129,-4,123,-4)
LIG(129,-2,129,-4)
LIG(125,-10,124,-9)
LIG(127,-10,125,-10)
FSYM
LIG(85,0,90,0)
LIG(90,10,85,10)
LIG(85,10,85,20)
LIG(85,-5,85,0)
FFIG D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_VLSI_1\4b.sch
