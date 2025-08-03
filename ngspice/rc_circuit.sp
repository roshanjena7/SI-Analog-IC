* MRC Step Input Testbench

.PARAM vdd_var=1

* Components
R1 vin vout 1k
C1 vout 0 1p

* Input Pulse Source
Vsin   vin GND  0 PULSE(0 vdd_var 0.5n 1p 1p 10n)

* Simulation Controls
.OP
.TRAN 10p 40n
.END

