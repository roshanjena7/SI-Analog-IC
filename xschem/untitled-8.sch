v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -10 100 -10 {lab=#net1}
N 140 -90 140 -40 {lab=AVDD}
N -80 -90 -80 -40 {lab=AVDD}
N -80 -90 190 -90 {lab=AVDD}
N 190 -90 190 -10 {lab=AVDD}
N 140 -10 190 -10 {lab=AVDD}
N -240 -10 -80 -10 {lab=AVDD}
N -350 -90 -80 -90 {lab=AVDD}
N -240 -90 -240 -10 {lab=AVDD}
N -80 20 -80 140 {lab=#net2}
N 140 90 140 140 {lab=#net3}
N 180 170 310 170 {lab=vim}
N -260 170 -120 170 {lab=vip}
N -80 200 -80 280 {lab=#net4}
N -80 280 140 280 {lab=#net4}
N 140 200 140 280 {lab=#net4}
N -80 170 -10 170 {lab=#net4}
N -10 170 -10 280 {lab=#net4}
N 80 170 140 170 {lab=#net4}
N 80 170 80 280 {lab=#net4}
N -150 440 80 440 {lab=ib5u}
N 80 430 80 440 {lab=ib5u}
N 80 430 140 430 {lab=ib5u}
N -190 340 -190 410 {lab=ib5u}
N -190 340 -120 340 {lab=ib5u}
N -120 340 -120 440 {lab=ib5u}
N 180 350 180 400 {lab=#net4}
N 30 350 180 350 {lab=#net4}
N 30 280 30 350 {lab=#net4}
N -190 470 -190 550 {lab=AVSS}
N -190 550 240 550 {lab=AVSS}
N 180 460 180 550 {lab=AVSS}
N 180 430 240 430 {lab=AVSS}
N 240 430 240 550 {lab=AVSS}
N -280 440 -190 440 {lab=AVSS}
N -280 440 -280 550 {lab=AVSS}
N -340 550 -190 550 {lab=AVSS}
N -310 340 -190 340 {lab=ib5u}
N 140 90 280 90 {lab=#net3}
N 140 20 140 90 {lab=#net3}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -60 -10 2 0 {name=M10
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 120 -10 0 0 {name=M1
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -100 170 0 0 {name=M2
L=2
W=4
nf=1 mult=5
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 160 170 2 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -170 440 2 0 {name=M4
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 430 0 0 {name=M5
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -260 170 2 0 {name=p1 lab=vip}
C {iopin.sym} -340 550 2 0 {name=p2 lab=AVSS}
C {iopin.sym} -350 -90 2 0 {name=p3 lab=AVDD}
C {iopin.sym} -310 340 2 0 {name=p4 lab=ib5u}
C {iopin.sym} 310 170 0 0 {name=p5 lab=vim}
C {iopin.sym} 280 90 0 0 {name=p6 lab=vout}
