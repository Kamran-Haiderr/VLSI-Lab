

.options cpath=include
.model switchm external winfile="switch.dll"
+ ron=1.0 roff=1.0e12
+ vt=1.0 vh=0.2

x1 1 0 c 0 switchm

v1 1 0 1.0
vc c 0 dc 0.0 pwl (0 0 100n 5 200n 0) REPEAT

.tran 1n 400n
.print tran v(c) i(x1) 
.end
 
