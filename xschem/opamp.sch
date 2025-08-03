v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -50 130 -0 {lab=vop}
N 130 -50 240 -50 {lab=vop}
N 130 60 130 110 {lab=#net1}
N 130 110 250 110 {lab=#net1}
N 30 10 90 10 {lab=vin}
N 240 -50 310 -50 {lab=vop}
N 250 110 310 110 {lab=#net1}
N 30 50 90 50 {lab=vim}
C {vcvs.sym} 130 30 0 0 {name=E1 value=1000}
C {iopin.sym} 30 10 2 0 {name=p1 lab=vin}
C {iopin.sym} 30 50 2 0 {name=p2 lab=vim}
C {iopin.sym} 310 -50 0 0 {name=p3 lab=vop}
C {iopin.sym} 310 110 0 0 {name=p4 lab=vom}
