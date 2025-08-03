v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -700 -880 -560 -880 {lab=#net1}
N -520 -960 -520 -910 {lab=AVDD}
N -740 -960 -740 -910 {lab=AVDD}
N -740 -960 -470 -960 {lab=AVDD}
N -470 -960 -470 -880 {lab=AVDD}
N -520 -880 -470 -880 {lab=AVDD}
N -900 -880 -740 -880 {lab=AVDD}
N -1010 -960 -740 -960 {lab=AVDD}
N -900 -960 -900 -880 {lab=AVDD}
N -740 -850 -740 -730 {lab=#net2}
N -520 -780 -520 -730 {lab=#net3}
N -480 -700 -350 -700 {lab=vim}
N -920 -700 -780 -700 {lab=vip}
N -740 -670 -740 -590 {lab=#net4}
N -740 -590 -520 -590 {lab=#net4}
N -520 -670 -520 -590 {lab=#net4}
N -740 -700 -670 -700 {lab=#net4}
N -670 -700 -670 -590 {lab=#net4}
N -580 -700 -520 -700 {lab=#net4}
N -580 -700 -580 -590 {lab=#net4}
N -810 -430 -580 -430 {lab=ib5u}
N -580 -440 -580 -430 {lab=ib5u}
N -580 -440 -520 -440 {lab=ib5u}
N -850 -530 -850 -460 {lab=ib5u}
N -850 -530 -780 -530 {lab=ib5u}
N -780 -530 -780 -430 {lab=ib5u}
N -480 -520 -480 -470 {lab=#net4}
N -630 -520 -480 -520 {lab=#net4}
N -630 -590 -630 -520 {lab=#net4}
N -850 -400 -850 -320 {lab=AVSS}
N -850 -320 -420 -320 {lab=AVSS}
N -480 -410 -480 -320 {lab=AVSS}
N -480 -440 -420 -440 {lab=AVSS}
N -420 -440 -420 -320 {lab=AVSS}
N -940 -430 -850 -430 {lab=AVSS}
N -940 -430 -940 -320 {lab=AVSS}
N -1000 -320 -850 -320 {lab=AVSS}
N -970 -530 -850 -530 {lab=ib5u}
N -520 -780 -380 -780 {lab=#net3}
N -520 -850 -520 -780 {lab=#net3}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -720 -880 2 0 {name=M10
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -540 -880 0 0 {name=M1
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -760 -700 0 0 {name=M2
L=2
W=4
nf=1 mult=5
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -500 -700 2 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -830 -430 2 0 {name=M4
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -500 -440 0 0 {name=M5
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -920 -700 2 0 {name=p1 lab=vip}
C {iopin.sym} -1000 -320 2 0 {name=p2 lab=AVSS}
C {iopin.sym} -1010 -960 2 0 {name=p3 lab=AVDD}
C {iopin.sym} -970 -530 2 0 {name=p4 lab=ib5u}
C {iopin.sym} -350 -700 0 0 {name=p5 lab=vim}
C {iopin.sym} -380 -780 0 0 {name=p6 lab=vout}
