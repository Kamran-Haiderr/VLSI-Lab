*Title: Test the pll

.hdl pll.va

X1 rf out 0 if testPLL tStop=100ms fStart=1k fStop=4k   
.tran 0.01m 100m

.print tran v(out) v(rf) v(if)

.end
