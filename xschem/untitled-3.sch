v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 10 50 10 {lab=vin}
N -40 50 50 50 {lab=vim}
N 90 -40 90 -0 {lab=#net1}
N 90 -40 200 -40 {lab=#net1}
N 90 60 90 100 {lab=#net2}
N 90 100 200 100 {lab=#net2}
N 260 -40 360 -40 {lab=#net3}
N 310 -40 310 -0 {lab=#net3}
N 310 60 310 100 {lab=#net2}
N 200 100 310 100 {lab=#net2}
N 310 100 380 100 {lab=#net2}
N 380 50 380 100 {lab=#net2}
N 360 -40 380 -40 {lab=#net3}
N 380 -40 380 10 {lab=#net3}
N 420 -40 420 -0 {lab=vop}
N 420 -40 480 -40 {lab=vop}
N 420 60 420 100 {lab=#net4}
N 420 100 480 100 {lab=#net4}
C {vcvs.sym} 90 30 0 0 {name=E1 value=100}
C {res.sym} 230 -40 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 310 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 420 30 0 0 {name=E2 value=100}
C {iopin.sym} -40 50 2 0 {name=p1 lab=vim}
C {iopin.sym} -40 10 2 0 {name=p2 lab=vin}
C {iopin.sym} 480 -40 0 0 {name=p3 lab=vop}
C {iopin.sym} 480 100 0 0 {name=p4 lab=vom}
