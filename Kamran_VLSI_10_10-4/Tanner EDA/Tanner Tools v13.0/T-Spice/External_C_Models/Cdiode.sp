
.options cpath=include

.model diode external winfile="diode.c"
+ is=0.1u cjo=1u rs=100

.acmodel {*}
.op
.dc v1 0 0.3 0.01
.print dc i(x1) i(x11)

v1 1 0 1
x1 1 0 diode area=1.0
x2 1 0 diode area=1.1
x3 1 0 diode area=1.2
x4 1 0 diode area=1.3
x5 1 0 diode area=1.4
x6 1 0 diode area=1.5
x7 1 0 diode area=1.6
x8 1 0 diode area=1.7
x9 1 0 diode area=1.8
x10 1 0 diode area=1.9
x11 1 0 diode area=2.0
x12 1 0 diode area=2.1
.end


