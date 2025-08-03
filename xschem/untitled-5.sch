v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 50 40 90 {lab=vg}
N 40 50 80 50 {lab=vg}
N 120 -20 120 20 {lab=vd}
N 120 -20 270 -20 {lab=vd}
N 270 -20 270 70 {lab=vd}
N 120 80 120 150 {lab=GND}
N 120 150 270 150 {lab=GND}
N 270 130 270 150 {lab=GND}
N 40 150 120 150 {lab=GND}
N 120 150 120 160 {lab=GND}
N 120 80 150 80 {lab=GND}
N 150 50 150 80 {lab=GND}
N 120 50 150 50 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 50 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} 40 120 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} 270 100 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 120 160 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 40 50 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 200 -20 0 0 {name=p2 sig_type=std_logic lab=vd
}
C {simulator_commands_shown.sym} 450 -90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC  Vgs 0.4 1.0 0.1 vds 0 1.8 .1
.ENDC
"}
C {devices/code.sym} 450 60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
