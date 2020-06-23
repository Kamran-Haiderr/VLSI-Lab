
.options cpath=include

.model res external winfile="resist.c"

v1 1 0 1
x1 1 0 res r=1k
.dc v1 0 1 0.1
.print dc i(x1)
.end
