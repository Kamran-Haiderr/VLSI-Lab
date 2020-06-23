DSCH 2.7a
VERSION 1/31/2019 9:21:13 PM
BB(31,-10,114,15)
SYM  #button1
BB(31,-4,40,4)
TITLE 35 0  #button
MODEL 59
PROP                                                                                                                                   
REC(32,-3,6,6,r)
VIS 1
PIN(40,0,0.000,0.000)in1
LIG(39,0,40,0)
LIG(31,4,31,-4)
LIG(39,4,31,4)
LIG(39,-4,39,4)
LIG(31,-4,39,-4)
LIG(32,3,32,-3)
LIG(38,3,32,3)
LIG(38,-3,38,3)
LIG(32,-3,38,-3)
FSYM
SYM  #button2
BB(31,6,40,14)
TITLE 35 10  #button
MODEL 59
PROP                                                                                                                                   
REC(32,7,6,6,r)
VIS 1
PIN(40,10,0.000,0.000)in2
LIG(39,10,40,10)
LIG(31,14,31,6)
LIG(39,14,31,14)
LIG(39,6,39,14)
LIG(31,6,39,6)
LIG(32,13,32,7)
LIG(38,13,32,13)
LIG(38,7,38,13)
LIG(32,7,38,7)
FSYM
SYM  #and2
BB(40,-5,75,15)
TITLE 52 6  #&
MODEL 402
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(40,10,0.000,0.000)b
PIN(40,0,0.000,0.000)a
PIN(75,5,0.090,0.070)s
LIG(40,10,48,10)
LIG(48,-5,48,15)
LIG(68,5,75,5)
LIG(67,7,64,11)
LIG(68,5,67,7)
LIG(67,3,68,5)
LIG(64,-1,67,3)
LIG(59,-4,64,-1)
LIG(64,11,59,14)
LIG(59,14,48,15)
LIG(48,-5,59,-4)
LIG(40,0,48,0)
VLG  and and2(out,a,b);
FSYM
SYM  #light1
BB(108,-10,114,4)
TITLE 110 4  #light
MODEL 49
PROP                                                                                                                                   
REC(109,-9,4,4,b)
VIS 1
PIN(110,5,0.000,0.000)out1
LIG(113,-4,113,-9)
LIG(113,-9,112,-10)
LIG(109,-9,109,-4)
LIG(112,1,112,-2)
LIG(111,1,114,1)
LIG(111,3,113,1)
LIG(112,3,114,1)
LIG(108,-2,114,-2)
LIG(110,-2,110,5)
LIG(108,-4,108,-2)
LIG(114,-4,108,-4)
LIG(114,-2,114,-4)
LIG(110,-10,109,-9)
LIG(112,-10,110,-10)
FSYM
SYM  #inv
BB(75,-5,110,15)
TITLE 90 5  #~
MODEL 101
PROP                                                                                                                                   
REC(25,5,0,0, )
VIS 0
PIN(75,5,0.000,0.000)in
PIN(110,5,0.030,0.070)out
LIG(75,5,85,5)
LIG(85,-5,85,15)
LIG(85,-5,100,5)
LIG(85,15,100,5)
LIG(102,5,102,5)
LIG(104,5,110,5)
VLG  not not1(out,in);
FSYM
FFIG D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_VLSI_1\4aDmorg.sch
