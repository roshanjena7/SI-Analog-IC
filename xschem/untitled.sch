v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -40 70 -40 {lab=#net1}
N 70 -70 70 -40 {lab=#net1}
N 70 -110 70 -70 {lab=#net1}
N 70 -110 100 -110 {lab=#net1}
N 130 -70 160 -70 {lab=vout}
N 160 -110 160 -70 {lab=vout}
N 160 -70 260 -70 {lab=vout}
N 260 -70 260 -20 {lab=vout}
N 160 -70 160 -30 {lab=vout}
N 70 -40 70 -0 {lab=#net1}
N 70 -0 100 -0 {lab=#net1}
N 100 0 100 20 {lab=#net1}
N 100 20 120 20 {lab=#net1}
N 80 -20 120 -20 {lab=#net2}
N 80 -20 80 50 {lab=#net2}
N -180 -40 -150 -40 {lab=vin}
N -30 -40 -20 -90 {lab=#net3}
N -90 -70 -90 -40 {lab=n1}
N -140 -70 -90 -70 {lab=n1}
N -140 -90 -140 -70 {lab=n1}
N -140 -90 -80 -90 {lab=n1}
C {vsource.sym} -180 -10 0 0 {name=V1 value="0 AC 1"}
C {res.sym} -120 -40 1 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -50 -90 1 0 {name=C1
m=1
value=4.7U
footprint=1206
device="ceramic capacitor"}
C {res.sym} 0 -40 1 0 {name=R2
value=4.7K
footprint=1206
device=resistor
m=1}
C {res.sym} 100 -70 1 0 {name=R3
value=300K
footprint=1206
device=resistor
m=1}
C {capa.sym} 130 -110 1 0 {name=C2
m=1
value=27P
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 160 0 0 0 {name=E1 value=1000}
C {gnd.sym} 80 90 0 0 {name=l1 lab=GND}
C {vsource.sym} 80 60 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -180 20 0 0 {name=l2 lab=GND}
C {gnd.sym} 160 30 0 0 {name=l3 lab=GND}
C {capa.sym} 260 10 2 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 260 40 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} 540 -280 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".op
.control
AC DEC 100 1 10e6 
plot v(vin)
plot v(vout)
.ENDC
* ngspice commands 
"}
C {lab_wire.sym} -140 -90 0 0 {name=p1 sig_type=std_logic lab=n1
}
C {lab_wire.sym} 30 -430 0 0 {name=p2 sig_type=std_logic lab=xxx}
C {lab_wire.sym} -170 -40 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_wire.sym} 260 -70 0 0 {name=p4 sig_type=std_logic lab=vout}
