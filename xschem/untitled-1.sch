v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 0 20 40 {lab=vin}
N 20 -0 60 0 {lab=vin}
N 120 -0 180 0 {lab=#net1}
N 240 0 290 0 {lab=#net2}
N 350 -0 390 0 {lab=#net3}
N 390 -110 420 -110 {lab=#net3}
N 480 -110 520 -110 {lab=vout}
N 390 -110 390 -60 {lab=#net3}
N 390 -60 420 -60 {lab=#net3}
N 390 -60 390 -0 {lab=#net3}
N 480 -60 520 -60 {lab=vout}
N 390 -0 450 -0 {lab=#net3}
N 520 -110 520 -10 {lab=vout}
N 520 -10 610 -10 {lab=vout}
N 610 -10 610 -0 {lab=vout}
N 520 50 520 110 {lab=GND}
N 450 0 450 40 {lab=#net3}
N 450 40 480 40 {lab=#net3}
N 470 -0 480 -0 {lab=#net4}
N 470 0 470 80 {lab=#net4}
C {res.sym} 90 0 1 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 210 0 1 0 {name=C1
m=1
value=4.7U
footprint=1206
device="ceramic capacitor"}
C {res.sym} 320 0 1 0 {name=R2
value=380
footprint=1206
device=resistor
m=1}
C {gnd.sym} 20 100 0 0 {name=l1 lab=GND}
C {capa.sym} 450 -110 1 0 {name=C2
m=1
value=27P
footprint=1206
device="ceramic capacitor"}
C {res.sym} 450 -60 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 520 20 0 0 {name=E1 value=3}
C {capa.sym} 610 30 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 610 60 0 0 {name=l2 lab=GND}
C {gnd.sym} 520 110 0 0 {name=l3 lab=GND}
C {vsource.sym} 470 110 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 470 140 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} 720 -90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=" 
.control
op
save all
write micTEST.raw
SET APPENDWRITE
MEAS AC gain-db MAX vdb(vout) FROM=0.1 TO=10e6
LET vm3db=gain -db - 3.0
print vm3db
MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
MEAS AC fpole WHEN vdb(vout)=vm3db RISE=1
**Phase Measurement
LET Phase deg = cph(vout)180/PI
MEAS phase zero FIND phase deg AT=fzero
AC DEC 100 1 10e6
MEAS AC fzero WHEN vdb(vin)=vm3db RISE=1
MEAS AC fpole WHEN vdb(vin)=vm3db RISE=1
LET phase deg = cph(vin)180/PI
.ENDC
* ngspice commands
"}
C {lab_wire.sym} 610 -10 0 0 {name=p1 sig_type=std_logic lab=vout
}
C {lab_wire.sym} 30 0 0 0 {name=p2 sig_type=std_logic lab=vin}
C {vsource.sym} 20 70 0 0 {name=V1 value=" 0 AC 1" savecurrent=false}
