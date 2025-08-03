v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -50 130 -0 {lab=vop}
N 130 -50 240 -50 {lab=vop}
N 130 60 130 110 {lab=vom}
N 130 110 250 110 {lab=vom}
C {vcvs.sym} 130 30 0 0 {name=E1 value=1000}
C {lab_wire.sym} 90 10 0 0 {name=p1 sig_type=std_logic lab=vip}
C {lab_wire.sym} 90 50 0 0 {name=p2 sig_type=std_logic lab=vim}
C {lab_wire.sym} 240 -50 0 0 {name=p3 sig_type=std_logic lab=vop}
C {lab_wire.sym} 250 110 0 0 {name=p4 sig_type=std_logic lab=vom}
