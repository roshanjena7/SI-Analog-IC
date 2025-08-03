v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -10 40 -10 {lab=#net1}
N -140 -80 -140 -40 {lab=#net2}
N -140 -80 -50 -80 {lab=#net2}
N -140 20 -140 90 {lab=#net3}
N -220 -10 -140 -10 {lab=#net2}
N -220 -80 -220 -10 {lab=#net2}
N -220 -80 -140 -80 {lab=#net2}
N -50 -80 140 -80 {lab=#net2}
N 80 -10 140 -10 {lab=#net2}
N 140 -30 140 -10 {lab=#net2}
N 140 -80 140 -30 {lab=#net2}
N 80 -80 80 -40 {lab=#net2}
N 80 20 80 90 {lab=#net3}
N -140 90 80 90 {lab=#net3}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -120 -10 2 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 60 -10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
