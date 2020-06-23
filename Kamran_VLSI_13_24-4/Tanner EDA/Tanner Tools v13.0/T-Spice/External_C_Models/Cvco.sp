
.options cpath=include
.model vco external winfile="vco.c"
+ amp=3 offset=5 k0=1e4 digital=0.2

v1 in 0 pwl (0 1 1m 10 2m 0.5)
x1 out 0 in 0 vco 

.options reltol=1e-6
.tran 0.0005m 2m
.print tran v(in) v(out)
.end

