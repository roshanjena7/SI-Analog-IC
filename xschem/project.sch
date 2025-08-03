v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -450 -640 -310 -640 {lab=#net1}
N -270 -720 -270 -670 {lab=AVDD}
N -490 -720 -490 -670 {lab=AVDD}
N -490 -720 -220 -720 {lab=AVDD}
N -220 -720 -220 -640 {lab=AVDD}
N -270 -640 -220 -640 {lab=AVDD}
N -650 -640 -490 -640 {lab=AVDD}
N -760 -720 -490 -720 {lab=AVDD}
N -650 -720 -650 -640 {lab=AVDD}
N -490 -610 -490 -490 {lab=#net2}
N -270 -540 -270 -490 {lab=#net3}
N -230 -460 -100 -460 {lab=vim}
N -670 -460 -530 -460 {lab=vip}
N -490 -430 -490 -350 {lab=#net4}
N -490 -350 -270 -350 {lab=#net4}
N -270 -430 -270 -350 {lab=#net4}
N -490 -460 -420 -460 {lab=#net4}
N -420 -460 -420 -350 {lab=#net4}
N -330 -460 -270 -460 {lab=#net4}
N -330 -460 -330 -350 {lab=#net4}
N -560 -190 -330 -190 {lab=ib5u}
N -330 -200 -330 -190 {lab=ib5u}
N -330 -200 -270 -200 {lab=ib5u}
N -600 -290 -600 -220 {lab=ib5u}
N -600 -290 -530 -290 {lab=ib5u}
N -530 -290 -530 -190 {lab=ib5u}
N -230 -280 -230 -230 {lab=#net4}
N -380 -280 -230 -280 {lab=#net4}
N -380 -350 -380 -280 {lab=#net4}
N -600 -160 -600 -80 {lab=AVSS}
N -600 -80 -170 -80 {lab=AVSS}
N -230 -170 -230 -80 {lab=AVSS}
N -230 -200 -170 -200 {lab=AVSS}
N -170 -200 -170 -80 {lab=AVSS}
N -690 -190 -600 -190 {lab=AVSS}
N -690 -190 -690 -80 {lab=AVSS}
N -750 -80 -600 -80 {lab=AVSS}
N -720 -290 -600 -290 {lab=ib5u}
N -270 -540 -130 -540 {lab=#net3}
N -270 -610 -270 -540 {lab=#net3}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -470 -640 2 0 {name=M10
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -290 -640 0 0 {name=M1
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -510 -460 0 0 {name=M2
L=2
W=4
nf=1 mult=5
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -250 -460 2 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -580 -190 2 0 {name=M4
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -250 -200 0 0 {name=M5
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -670 -460 2 0 {name=p1 lab=vip}
C {iopin.sym} -750 -80 2 0 {name=p2 lab=AVSS}
C {iopin.sym} -760 -720 2 0 {name=p3 lab=AVDD}
C {iopin.sym} -720 -290 2 0 {name=p4 lab=ib5u}
C {iopin.sym} -100 -460 0 0 {name=p5 lab=vim}
C {iopin.sym} -130 -540 0 0 {name=p6 lab=vout}
