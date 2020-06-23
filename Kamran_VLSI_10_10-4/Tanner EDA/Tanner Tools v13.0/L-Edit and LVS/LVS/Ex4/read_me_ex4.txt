Fragmented Class Example:

Same as example 1 but with the output directed to a specific file name (ex4.lvs).

This file documents a fragmentation example.  Refer to the LVS manual for a
more thorough description of this example.

Invocation:
lvs ex1_1.spc ex1_2.spc -o ex4.lvs -nrcl -vfa -faf

GUI Settings:
Layout netlist: ex1_1.spc
Schematic netlist: ex1_2.spc
Output file: ex4.out
Node and element list: ex1.lst
Display Options - Output File
  * Show fragmented classes
  * Show automorph classes
Device Terminals
  * Consider M bulk terminals and B, J, Q, Z substrate terminals


During parsing:
We see that we have an unequal number of M_PSS elements in the two files.
This is such a "severe" problem that most likely the iteration fails after
only a couple of rounds of the iteration.

The error can be found in EX1_1.SPC, where M11 has M=2, it should have been
M=1.

As far as finding errors like this, the node and element list output file (-L)
can be of help.  This file lists all nodes and elements, those that have been
matched as pairs, those remaining simply as a long list.


Copyright © 1994-2005 Tanner EDA, A Division of Tanner Research, Inc.
All Rights Reserved.

Tanner Research, Inc.
2650 East Foothill Boulevard
Pasadena, CA  91107, USA

Telephone: 1-877-304-5544 (Toll Free)
           1-626-792-3000
Fax:       1-626-792-0300
e-mail:    support@tanner.com

