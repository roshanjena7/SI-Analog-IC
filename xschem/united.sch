v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 240 -40 240 {lab=#net1}
N -400 240 -300 240 {lab=#net2}
N -770 420 -770 480 {lab=GND}
N 40 350 40 400 {lab=GND}
N 30 90 30 200 {lab=#net3}
N -190 440 -190 490 {lab=GND}
N 300 280 300 370 {lab=vout}
N 200 280 300 280 {lab=vout}
N 180 290 200 280 {lab=vout}
N 70 180 70 220 {lab=#net4}
N 70 70 70 120 {lab=#net3}
N 70 70 350 70 {lab=#net3}
N 350 70 350 130 {lab=#net3}
N 350 190 350 230 {lab=GND}
N 30 70 30 90 {lab=#net3}
N 30 70 70 70 {lab=#net3}
N -130 -10 -50 -10 {lab=vout}
N -50 -10 -50 140 {lab=vout}
N -50 140 230 140 {lab=vout}
N 230 140 230 280 {lab=vout}
N -250 -10 -190 -10 {lab=#net1}
N -250 -10 -250 120 {lab=#net1}
N -250 120 -180 120 {lab=#net1}
N -180 120 -180 240 {lab=#net1}
N -130 60 -50 60 {lab=vout}
N -250 60 -190 60 {lab=#net1}
N -600 240 -450 240 {lab=#net5}
N -780 240 -660 240 {lab=#net6}
N -780 240 -780 330 {lab=#net6}
N -780 330 -770 330 {lab=#net6}
N -770 330 -770 360 {lab=#net6}
N -190 320 -190 380 {lab=#net7}
N -190 310 -190 320 {lab=#net7}
N -190 310 -40 310 {lab=#net7}
C {ros.sym} 20 30 0 0 {name=x4}
C {res.sym} -270 240 1 0 {name=R1
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -420 240 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -630 240 1 0 {name=R2
value=380
footprint=1206
device=resistor
m=1}
C {gnd.sym} -770 480 0 0 {name=l1 lab=GND}
C {gnd.sym} 40 400 0 0 {name=l2 lab=GND}
C {gnd.sym} -190 490 0 0 {name=l3 lab=GND}
C {capa.sym} 300 400 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {isource.sym} 70 150 0 0 {name=I2 value=5u}
C {vsource.sym} 350 160 0 0 {name=V1 value=1.5 savecurrent=false}
C {gnd.sym} 350 230 0 0 {name=l4 lab=GND}
C {capa.sym} -160 -10 1 0 {name=C3
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -160 60 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 200 140 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vsource.sym} -190 410 0 0 {name=V2 value=1.5 savecurrent=false}
C {vsource.sym} -770 390 0 0 {name=V3 value="0 AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {gnd.sym} 300 430 0 0 {name=l5 lab=GND}
C {simulator_commands_shown.sym} -1330 60 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
  save all
  op
  write micTest.raw
  set appendwrite
  AC DEC 100 0.1 10e6
  write micTest.raw
  **
  MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO=10e6
  LET vm3db = gain_db - 3.0
  print vm3db
  MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
  MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
  MEAS AC fmid  WHEN vdb(vout)=gain_db
  **Phase Measurement
  LET phase_deg = cph(vout)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  MEAS AC phase_mid  FIND phase_deg AT=fmid
  ** MEAS fero fpole using phase
  LET phase_zero_ph = phase_mid-45
  MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  **
  TRAN 1u 5m
  
.ENDC
"}
