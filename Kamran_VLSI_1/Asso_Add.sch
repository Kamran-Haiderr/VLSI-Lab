DSCH 2.7a
VERSION 1/31/2019 4:03:29 PM
BB(1,-10,99,55)
SYM  #button6
BB(46,46,55,54)
TITLE 50 50  #button
MODEL 59
PROP                                                                                                                                   
REC(47,47,6,6,r)
VIS 1
PIN(55,50,0.000,0.000)Z
LIG(54,50,55,50)
LIG(46,54,46,46)
LIG(54,54,46,54)
LIG(54,46,54,54)
LIG(46,46,54,46)
LIG(47,53,47,47)
LIG(53,53,47,53)
LIG(53,47,53,53)
LIG(47,47,53,47)
FSYM
SYM  #or2
BB(10,-10,45,10)
TITLE 30 0  #|
MODEL 502
PROP                                                                                                                                   
REC(0,-15,0,0, )
VIS 0
PIN(10,-5,0.000,0.000)a
PIN(10,5,0.000,0.000)b
PIN(45,0,0.090,0.070)s
LIG(10,5,23,5)
LIG(22,7,18,10)
LIG(38,0,45,0)
LIG(37,2,34,6)
LIG(38,0,37,2)
LIG(37,-2,38,0)
LIG(34,-6,37,-2)
LIG(29,-9,34,-6)
LIG(34,6,29,9)
LIG(29,9,18,10)
LIG(18,-10,29,-9)
LIG(24,3,22,7)
LIG(18,-10,22,-7)
LIG(22,-7,24,-3)
LIG(24,-3,25,0)
LIG(25,0,24,3)
LIG(10,-5,23,-5)
VLG  or or2(s,a,b);
FSYM
SYM  #or3
BB(55,25,95,55)
TITLE 70 45  #|
MODEL 503
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(55,30,0.000,0.000)a
PIN(55,40,0.000,0.000)b
PIN(55,50,0.000,0.000)c
PIN(95,40,0.120,0.070)s
LIG(55,50,69,50)
LIG(55,40,71,40)
LIG(55,30,69,30)
LIG(69,50,65,55)
LIG(80,51,75,54)
LIG(84,43,80,51)
LIG(75,26,80,29)
LIG(65,25,75,26)
LIG(85,40,84,43)
LIG(84,37,85,40)
LIG(65,55,75,54)
LIG(80,29,84,37)
LIG(65,25,69,30)
LIG(69,30,71,40)
LIG(71,40,69,50)
LIG(85,40,95,40)
VLG  or or3(s,a,b,c);
FSYM
SYM  #button2
BB(1,-9,10,-1)
TITLE 5 -5  #button
MODEL 59
PROP                                                                                                                                   
REC(2,-8,6,6,r)
VIS 1
PIN(10,-5,0.000,0.000)C
LIG(9,-5,10,-5)
LIG(1,-1,1,-9)
LIG(9,-1,1,-1)
LIG(9,-9,9,-1)
LIG(1,-9,9,-9)
LIG(2,-2,2,-8)
LIG(8,-2,2,-2)
LIG(8,-8,8,-2)
LIG(2,-8,8,-8)
FSYM
SYM  #button3
BB(1,1,10,9)
TITLE 5 5  #button
MODEL 59
PROP                                                                                                                                   
REC(2,2,6,6,r)
VIS 1
PIN(10,5,0.000,0.000)B
LIG(9,5,10,5)
LIG(1,9,1,1)
LIG(9,9,1,9)
LIG(9,1,9,9)
LIG(1,1,9,1)
LIG(2,8,2,2)
LIG(8,8,2,8)
LIG(8,2,8,8)
LIG(2,2,8,2)
FSYM
SYM  #button4
BB(46,26,55,34)
TITLE 50 30  #button
MODEL 59
PROP                                                                                                                                   
REC(47,27,6,6,r)
VIS 1
PIN(55,30,0.000,0.000)X
LIG(54,30,55,30)
LIG(46,34,46,26)
LIG(54,34,46,34)
LIG(54,26,54,34)
LIG(46,26,54,26)
LIG(47,33,47,27)
LIG(53,33,47,33)
LIG(53,27,53,33)
LIG(47,27,53,27)
FSYM
SYM  #button5
BB(46,36,55,44)
TITLE 50 40  #button
MODEL 59
PROP                                                                                                                                   
REC(47,37,6,6,r)
VIS 1
PIN(55,40,0.000,0.000)Y
LIG(54,40,55,40)
LIG(46,44,46,36)
LIG(54,44,46,44)
LIG(54,36,54,44)
LIG(46,36,54,36)
LIG(47,43,47,37)
LIG(53,43,47,43)
LIG(53,37,53,43)
LIG(47,37,53,37)
FSYM
SYM  #light2
BB(78,-10,84,4)
TITLE 80 4  #light
MODEL 49
PROP                                                                                                                                   
REC(79,-9,4,4,r)
VIS 1
PIN(80,5,0.000,0.000)2out
LIG(83,-4,83,-9)
LIG(83,-9,82,-10)
LIG(79,-9,79,-4)
LIG(82,1,82,-2)
LIG(81,1,84,1)
LIG(81,3,83,1)
LIG(82,3,84,1)
LIG(78,-2,84,-2)
LIG(80,-2,80,5)
LIG(78,-4,78,-2)
LIG(84,-4,78,-4)
LIG(84,-2,84,-4)
LIG(80,-10,79,-9)
LIG(82,-10,80,-10)
FSYM
SYM  #light3
BB(93,25,99,39)
TITLE 95 39  #light
MODEL 49
PROP                                                                                                                                   
REC(94,26,4,4,g)
VIS 1
PIN(95,40,0.000,0.000)3out
LIG(98,31,98,26)
LIG(98,26,97,25)
LIG(94,26,94,31)
LIG(97,36,97,33)
LIG(96,36,99,36)
LIG(96,38,98,36)
LIG(97,38,99,36)
LIG(93,33,99,33)
LIG(95,33,95,40)
LIG(93,31,93,33)
LIG(99,31,93,31)
LIG(99,33,99,31)
LIG(95,25,94,26)
LIG(97,25,95,25)
FSYM
SYM  #or2
BB(45,-5,80,15)
TITLE 65 5  #|
MODEL 502
PROP                                                                                                                                   
REC(15,-5,0,0, )
VIS 0
PIN(45,0,0.000,0.000)a
PIN(45,10,0.000,0.000)b
PIN(80,5,0.090,0.070)s
LIG(45,10,58,10)
LIG(57,12,53,15)
LIG(73,5,80,5)
LIG(72,7,69,11)
LIG(73,5,72,7)
LIG(72,3,73,5)
LIG(69,-1,72,3)
LIG(64,-4,69,-1)
LIG(69,11,64,14)
LIG(64,14,53,15)
LIG(53,-5,64,-4)
LIG(59,8,57,12)
LIG(53,-5,57,-2)
LIG(57,-2,59,2)
LIG(59,2,60,5)
LIG(60,5,59,8)
LIG(45,0,58,0)
VLG  or or2(s,a,b);
FSYM
SYM  #button7
BB(36,6,45,14)
TITLE 40 10  #button
MODEL 59
PROP                                                                                                                                   
REC(37,7,6,6,r)
VIS 1
PIN(45,10,0.000,0.000)A
LIG(44,10,45,10)
LIG(36,14,36,6)
LIG(44,14,36,14)
LIG(44,6,44,14)
LIG(36,6,44,6)
LIG(37,13,37,7)
LIG(43,13,37,13)
LIG(43,7,43,13)
LIG(37,7,43,7)
FSYM
FFIG C:\Users\i140420\Desktop\Kamran_VLSI_1\Asso_Add.sch
