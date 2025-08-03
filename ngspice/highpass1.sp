Title:RC step input test

.PARAM vdd_var=1

**netlist
C1     vin      vout    1p
R1     vout      GND     1k

**Sources
vsin    vin   GND   0 PULSE(0 vdd_var 0.5n 1p 1p 1n 2n)


**simulation
.SAVE ALL
.OP
.TRAN 10p 40n
.GLOBAL GND

.END
