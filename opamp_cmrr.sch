v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1240 -820 -440 -420 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N -475 40 -475 60 {
lab=GND}
N -80 35 -80 55 {
lab=GND}
N -255 -55 -225 -55 {
lab=INP}
N -255 -95 -255 -55 {
lab=INP}
N -255 -95 -225 -95 {
lab=INP}
N -550 -280 -550 -230 {
lab=GND}
N -550 -380 -550 -340 {
lab=INP}
N -265 -75 -255 -75 {
lab=INP}
N -140 -135 -140 -115 {
lab=#net1}
N -140 -135 -135 -135 {
lab=#net1}
N -535 -140 -535 -110 {
lab=#net2}
N -670 -385 -670 -340 {
lab=INN}
N -660 -90 -620 -90 {
lab=INN}
N -660 -50 -620 -50 {
lab=INP}
N -450 -70 -370 -70 {
lab=OUT}
N -55 -75 -0 -75 {
lab=OUT1}
N -75 -135 -60 -135 {
lab=GND}
N -475 -140 -455 -140 {
lab=GND}
N -535 -30 -535 40 {
lab=#net3}
N -140 -35 -140 35 {
lab=#net4}
N -670 -230 -550 -230 {
lab=GND}
N -670 -280 -670 -230 {
lab=GND}
N -620 -230 -620 -200 {
lab=GND}
N -80 40 -0 40 {
lab=GND}
N -475 40 -410 40 {
lab=GND}
N 0 -2.5 -0 40 {
lab=GND}
N -0 -75 -0 -62.5 {
lab=OUT1}
N -410 -70 -410 -47.5 {}
N -410 12.5 -410 40 {}
C {devices/vsource.sym} -670 -310 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -550 -310 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -620 -200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -505 -140 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -455 -140 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -505 40 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -475 60 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -105 -135 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -60 -135 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -110 35 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -80 55 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -670 -365 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -550 -350 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -380 -70 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -5 -75 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} -330 -390 0 0 {name=s2 only_toplevel=false value=".control
save all
ac dec 100 1 10G
let Ad = \{v(OUT)/(v(INP)-v(INN))\}
let Acm = \{v(OUT1)/v(INP)\}
let CMRR = \{20*log(Ad/Acm)\}
let Ao = \{20*log(Ad)\}
save Ad Acm CMRR Ao
write opamp_cmrr.raw
PLOT Ao
PLOT CMRR
.endc"}
C {devices/code.sym} -490 -360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_wire.sym} -260 -75 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -635 -90 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -635 -50 0 0 {name=p7 sig_type=std_logic lab=INP}
C {../xschem/opamp.sym} -470 -70 0 0 {name=x1}
C {../xschem/opamp.sym} -75 -75 0 0 {name=x2}
C {devices/launcher.sym} -1170 -400 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/opamp_cmrr.raw tran"
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -410 -17.5 2 0 {name=C3 model=cap_mim_m3_1 W=12 L=20 MF=10 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 0 -30 2 0 {name=C1 model=cap_mim_m3_1 W=12 L=20 MF=10 spiceprefix=X}
