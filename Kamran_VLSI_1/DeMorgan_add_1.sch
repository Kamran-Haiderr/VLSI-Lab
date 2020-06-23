DSCH 2.7a
VERSION 1/31/2019 4:52:36 PM
BB(21,-10,104,15)
SYM  #button1
BB(21,-4,30,4)
TITLE 25 0  #button
MODEL 59
PROP                                                                                                                                   
REC(22,-3,6,6,b)
VIS 1
PIN(30,0,0.000,0.000)in1
LIG(29,0,30,0)
LIG(21,4,21,-4)
LIG(29,4,21,4)
LIG(29,-4,29,4)
LIG(21,-4,29,-4)
LIG(22,3,22,-3)
LIG(28,3,22,3)
LIG(28,-3,28,3)
LIG(22,-3,28,-3)
FSYM
SYM  #button2
BB(21,6,30,14)
TITLE 25 10  #button
MODEL 59
PROP                                                                                                                                   
REC(22,7,6,6,g)
VIS 1
PIN(30,10,0.000,0.000)in2
LIG(29,10,30,10)
LIG(21,14,21,6)
LIG(29,14,21,14)
LIG(29,6,29,14)
LIG(21,6,29,6)
LIG(22,13,22,7)
LIG(28,13,22,13)
LIG(28,7,28,13)
LIG(22,7,28,7)
FSYM
SYM  #or2
BB(30,-5,65,15)
TITLE 50 5  #|
MODEL 502
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(30,0,0.000,0.000)a
PIN(30,10,0.000,0.000)b
PIN(65,5,0.090,0.070)s
LIG(30,10,43,10)
LIG(42,12,38,15)
LIG(58,5,65,5)
LIG(57,7,54,11)
LIG(58,5,57,7)
LIG(57,3,58,5)
LIG(54,-1,57,3)
LIG(49,-4,54,-1)
LIG(54,11,49,14)
LIG(49,14,38,15)
LIG(38,-5,49,-4)
LIG(44,8,42,12)
LIG(38,-5,42,-2)
LIG(42,-2,44,2)
LIG(44,2,45,5)
LIG(45,5,44,8)
LIG(30,0,43,0)
VLG  or or2(s,a,b);
FSYM
SYM  #inv
BB(65,-5,100,15)
TITLE 80 5  #~
MODEL 101
PROP                                                                                                                                   
REC(25,5,0,0, )
VIS 0
PIN(65,5,0.000,0.000)in
PIN(100,5,0.030,0.070)out
LIG(65,5,75,5)
LIG(75,-5,75,15)
LIG(75,-5,90,5)
LIG(75,15,90,5)
LIG(92,5,92,5)
LIG(94,5,100,5)
VLG  not not1(out,in);
FSYM
SYM  #light1
BB(98,-10,104,4)
TITLE 100 4  #light
MODEL 49
PROP                                                                                                                                   
REC(99,-9,4,4,y)
VIS 1
PIN(100,5,0.000,0.000)out1
LIG(103,-4,103,-9)
LIG(103,-9,102,-10)
LIG(99,-9,99,-4)
LIG(102,1,102,-2)
LIG(101,1,104,1)
LIG(101,3,103,1)
LIG(102,3,104,1)
LIG(98,-2,104,-2)
LIG(100,-2,100,5)
LIG(98,-4,98,-2)
LIG(104,-4,98,-4)
LIG(104,-2,104,-4)
LIG(100,-10,99,-9)
LIG(102,-10,100,-10)
FSYM
FFIG C:\Users\i140420\Desktop\Kamran_VLSI_1\DeMorgan_add_1.sch
