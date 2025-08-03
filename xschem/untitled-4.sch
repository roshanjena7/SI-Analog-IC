v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 40 50 40 {lab=vin}
N -60 80 50 80 {lab=#net1}
N -60 80 -60 140 {lab=#net1}
N -60 -40 -60 40 {lab=vin}
N -80 -40 -60 -40 {lab=vin}
N -80 140 -60 140 {lab=#net1}
N 90 -40 90 30 {lab=#net2}
N 90 -40 210 -40 {lab=#net2}
N 90 90 90 190 {lab=GND}
N 90 190 220 190 {lab=GND}
N 270 -40 400 -40 {lab=#net3}
N 350 -40 350 50 {lab=#net3}
N 350 110 350 190 {lab=GND}
N 220 190 350 190 {lab=GND}
N 350 190 350 200 {lab=GND}
N 400 -40 460 -40 {lab=#net3}
N 460 -40 460 20 {lab=#net3}
N 350 190 460 190 {lab=GND}
N 460 120 460 190 {lab=GND}
N 460 120 540 120 {lab=GND}
N 460 20 540 20 {lab=#net3}
N 540 90 540 120 {lab=GND}
N 540 90 570 90 {lab=GND}
N 540 20 540 50 {lab=#net3}
N 570 90 570 120 {lab=GND}
N 570 120 590 120 {lab=GND}
N 590 100 590 120 {lab=GND}
N 540 50 560 50 {lab=#net3}
N 560 20 560 50 {lab=#net3}
N 560 20 590 20 {lab=#net3}
N 590 20 590 50 {lab=#net3}
N 630 10 630 60 {lab=vop}
N 630 100 630 150 {lab=vom}
N 630 150 710 150 {lab=vom}
N 630 10 710 10 {lab=vop}
C {vcvs.sym} 90 60 0 0 {name=E1 value=1000}
C {res.sym} 240 -40 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 350 80 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 590 80 2 0 {name=E2 value=1000}
C {gnd.sym} 350 200 0 0 {name=l1 lab=GND}
C {iopin.sym} 710 10 0 0 {name=p1 lab=vop
}
C {iopin.sym} 710 150 0 0 {name=p2 lab=vom}
C {iopin.sym} -80 -40 2 0 {name=p3 lab=vin}
C {iopin.sym} -80 140 2 0 {name=p4 lab=vim}
