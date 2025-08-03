v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 590 -70 670 -70 {lab=vop}
N 590 -130 590 20 {lab=vop}
N 300 -120 300 -60 {lab=vom}
N 300 -60 310 -60 {lab=vom}
N 310 -60 320 -60 {lab=vom}
N 590 -260 590 -190 {lab=AVDD}
N 300 -260 300 -180 {lab=AVDD}
N 300 -260 590 -260 {lab=AVDD}
N 320 90 320 120 {lab=#net1}
N 590 80 590 120 {lab=#net1}
N 320 120 440 120 {lab=#net1}
N 440 120 440 190 {lab=#net1}
N 440 120 590 120 {lab=#net1}
N 230 60 280 60 {lab=vin}
N 630 50 680 50 {lab=vim}
N 300 -150 450 -150 {lab=vom}
N 450 -150 450 -60 {lab=vom}
N 320 -60 450 -60 {lab=vom}
N 300 -60 300 -10 {lab=vom}
N 450 -150 520 -150 {lab=vom}
N 520 -160 520 -150 {lab=vom}
N 520 -160 590 -160 {lab=vom}
N 300 -10 320 -10 {lab=vom}
N 320 -10 320 30 {lab=vom}
N 290 300 620 300 {lab=ib5u}
N 440 190 440 230 {lab=#net1}
N 440 230 660 230 {lab=#net1}
N 660 230 660 270 {lab=#net1}
N 250 220 250 270 {lab=ib5u}
N 250 220 350 220 {lab=ib5u}
N 350 220 350 300 {lab=ib5u}
N 160 220 250 220 {lab=ib5u}
N 660 330 660 370 {lab=AVSS}
N 180 370 660 370 {lab=AVSS}
N 250 330 250 370 {lab=AVSS}
N 220 300 250 300 {lab=AVSS}
N 220 300 220 370 {lab=AVSS}
N 660 300 690 300 {lab=AVSS}
N 690 300 690 370 {lab=AVSS}
N 660 370 690 370 {lab=AVSS}
N 630 -160 700 -160 {lab=AVDD}
N 590 -260 700 -260 {lab=AVDD}
N 700 -260 700 -160 {lab=AVDD}
N 180 -150 260 -150 {lab=AVDD}
N 180 -260 180 -150 {lab=AVDD}
N 180 -260 300 -260 {lab=AVDD}
N 110 -260 180 -260 {lab=AVDD}
C {iopin.sym} 670 -70 0 0 {name=p1 lab=vop
}
C {iopin.sym} 160 220 2 0 {name=p2 lab=ib5u}
C {iopin.sym} 230 60 2 0 {name=p3 lab=vin}
C {iopin.sym} 680 50 0 0 {name=p4 lab=vim}
C {iopin.sym} 180 370 2 0 {name=p5 lab=AVSS}
C {iopin.sym} 110 -260 2 0 {name=p6 lab=AVDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 300 60 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 610 50 2 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 280 -150 0 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 610 -160 2 0 {name=M4
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 270 300 2 0 {name=M5
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 640 300 0 0 {name=M6
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 300 -30 0 0 {name=p7 sig_type=std_logic lab=vom}
