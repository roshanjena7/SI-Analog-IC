v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 10 -50 10 {lab=vg}
N -120 70 -120 110 {lab=GND}
N -120 110 90 110 {lab=GND}
N -10 40 -10 110 {lab=GND}
N -10 110 -10 130 {lab=GND}
N 90 70 90 110 {lab=GND}
N -10 -50 -10 -20 {lab=vd}
N -10 -50 90 -50 {lab=vd}
N 90 -50 90 10 {lab=vd}
N -10 10 20 10 {lab=GND}
N 20 10 20 60 {lab=GND}
N -10 60 20 60 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -120 40 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} -10 130 0 0 {name=l1 lab=GND}
C {vsource.sym} 90 40 0 0 {name=V2 value=0 savecurrent=false}
C {lab_wire.sym} 30 -50 0 0 {name=p1 sig_type=std_logic lab=vd}
C {lab_wire.sym} -90 10 0 0 {name=p2 sig_type=std_logic lab=vg}
C {simulator_commands_shown.sym} 160 -10 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.CONTROL
 OP
 DC vds 0 1.8 0.05 vgs 0.4 1.0 0.1
.ENDC
"}
C {devices/code.sym} 180 200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
