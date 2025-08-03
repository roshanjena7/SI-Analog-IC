Title: transient experiment:rise, fall, delay, period, etc.

** RC Network
R1     vin      vout       1k
C1     vout     GND        1p

**stimuli
Vsin   vin      GND        0 PULSE(0 5 1n 1p 1p 10n 20n)
** Rise/fall 10-90%
.MEASURE TRAN tr1090 TRIG v(vout) VAL=0.1 RISE=1 TARG v(vout) VAL=0.9 RISE=1
.MEASURE TRAN tf9010 TRIG v(vout) VAL=0.9 FALL=1 TARG v(vout) VAL=0.1 FALL=1
** Rise/fall 20-80%
.MEASURE TRAN tr2080 TRIG v(vout) VAL=1.0 RISE=1 TARG v(vout) VAL=4.0 RISE=1
.MEASURE TRAN tf8020 TRIG v(vout) VAL=4.0 FALL=1 TARG v(vout) VAL=1.0 FALL=1
** delay rise fall
.MEASURE TRAN tr2080 TRIG v(vout) VAL=2.5 RISE=1 TARG v(vout) VAL=2.5 RISE=1
.MEASURE TRAN tf8020 TRIG v(vout) VAL=2.5 FALL=1 TARG v(vout) VAL=2.5 FALL=1
**pulse width/period
.MEASURE TRAN tr2080 TRIG v(vout) VAL=2.5 RISE=1 TARG v(vout) VAL=2.5 RISE=1
.MEASURE TRAN tf8020 TRIG v(vout) VAL=2.5 FALL=1 TARG v(vout) VAL=2.5 FALL=1
.CONTROL
OP
TRAN 10p 40n
.ENDC

.GLOBAL GND

