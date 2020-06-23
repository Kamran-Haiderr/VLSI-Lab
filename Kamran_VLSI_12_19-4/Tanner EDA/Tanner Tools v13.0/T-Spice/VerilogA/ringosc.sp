* nand gate ring oscillator

.hdl nand.va

Vin in  0 DC 0 AC 1 pulse 0 3 0.1u 0.0u 0 1 10 
X1 in out out1 out2 out3 out4 d1 d1n d2 d2n ring

.tran 1n 1u
.print tran v(in) v(out) v(out4)

.end
 