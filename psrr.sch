v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -60 210 -60 {
lab=VOUT}
N 60 -140 90 -140 {
lab=GND}
N 90 -140 90 -115 {
lab=GND}
N 70 10 90 10 {
lab=GND}
N 90 10 90 40 {
lab=GND}
N -15 10 10 10 {
lab=#net1}
N -15 -20 -15 10 {
lab=#net1}
N -15 -140 0 -140 {
lab=#net2}
N -15 -140 -15 -100 {
lab=#net2}
N 70 -60 150 -60 {
lab=VOUT}
N -180 -40 -180 -10 {
lab=GND}
N -110 -110 -100 -110 {
lab=#net3}
N -100 -110 -100 -80 {
lab=#net3}
N -180 -40 -100 -40 {
lab=GND}
N -170 -110 -170 -40 {
lab=GND}
C {devices/lab_wire.sym} 205 -60 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 30 -140 3 0 {name=V3 value=0.8 savecurrent=false}
C {devices/gnd.sym} 90 -115 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 40 10 3 0 {name=V2 value=-0.8 savecurrent=false}
C {devices/gnd.sym} 90 40 0 0 {name=l3 lab=GND}
C {devices/code.sym} -230 70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 170 110 2 1 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
*dc V1 0 1.8 100u
plot VOUT
.endc 
"}
C {devices/gnd.sym} -180 -10 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -140 -110 1 0 {name=V4 value=-58.0733u savecurrent=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} 50 -60 0 0 {name=x1}
