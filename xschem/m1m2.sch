v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 10 20 10 {lab=#net1}
N -190 -70 -190 -20 {lab=#net1}
N -190 -70 -120 -70 {lab=#net1}
N -120 -70 -120 10 {lab=#net1}
N 60 -80 60 -20 {lab=#net2}
N 60 -80 170 -80 {lab=#net2}
N 170 -80 170 10 {lab=#net2}
N 170 70 170 130 {lab=GND}
N -240 10 -190 10 {lab=GND}
N -240 10 -240 140 {lab=GND}
N 170 130 170 140 {lab=GND}
N -240 140 170 140 {lab=GND}
N -190 40 -190 140 {lab=GND}
N -290 -70 -190 -70 {lab=#net1}
N -290 -70 -290 40 {lab=#net1}
N -290 100 -290 140 {lab=GND}
N -290 140 -240 140 {lab=GND}
N 60 40 60 140 {lab=GND}
N 60 10 120 10 {lab=GND}
N 120 10 120 140 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -170 10 0 1 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 40 10 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 170 40 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {isource.sym} -290 70 2 0 {name=I0 value=50u}
C {simulator_commands_shown.sym} 260 -40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC Vds 0 1.8 0.05
PLOT abs(vds#branch)
AC DEC 100 100 1000
PLOT '1/vm(vds#branch)' 
.ENDC
"}
C {gnd.sym} -70 140 0 0 {name=l2 lab=GND}
C {devices/code.sym} 320 180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
