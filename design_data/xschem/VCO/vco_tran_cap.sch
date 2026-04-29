v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 410 -370 1210 30 {flags=graph
y1=-0.018
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.1211713e-07
x2=1.1079019e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N -150 260 -80 260 {lab=vctrl}
N -340 100 -340 120 {lab=0}
N -390 250 -370 250 {lab=vctrl}
N -370 250 -370 270 {lab=vctrl}
N -370 330 -370 350 {lab=0}
N -130 240 -80 240 {lab=vdd}
N -100 280 -100 340 {lab=0}
N -100 280 -80 280 {lab=0}
N 180 260 180 280 {lab=out}
N -100 340 -100 360 {lab=0}
N -100 340 180 340 {lab=0}
N 180 260 210 260 {lab=out}
N 110 260 180 260 {lab=out}
C {iopin.sym} 210 260 0 0 {name=p2 lab=out}
C {code_shown.sym} -1160 -390 0 0 {name=NGSPICE only_toplevel=false value="
.param
+ wpm=70
+ lpm=3.2
+ wnm=40
+ lnm=4.2
+ wpi=74
+ lpi=1.4
+ wni=49
+ lni=1.4
+ wpb=20
+ lpb=1
+ wnb=10
+ lnb=1
+ wpb1=40
+ lpb1=1
+ wnb1=20
+ lnb1=1
.control
tran 1n 2u
write vco_tran_cap.raw
meas tran t_period trig v(out) val=0.9 rise=2 targ v(out) val=0.9 rise=3
  let freq = 1/t_period
  print freq
.endc
"}
C {vsource.sym} -340 70 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -340 40 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {gnd.sym} -340 120 0 0 {name=l3 lab=0}
C {vsource.sym} -370 300 0 0 {name=V2 value=0.7 savecurrent=false}
C {gnd.sym} -370 350 0 0 {name=l4 lab=0}
C {lab_pin.sym} -390 250 0 0 {name=p5 sig_type=std_logic lab=vctrl}
C {devices/code.sym} -640 180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss
"
spice_ignore=false}
C {launcher.sym} 200 -60 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/vco_tran_cap.raw tran"
}
C {lab_pin.sym} -150 260 0 0 {name=p1 sig_type=std_logic lab=vctrl}
C {lab_pin.sym} -130 240 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -100 360 0 0 {name=l1 lab=0}
C {capa-2.sym} 180 310 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {xschem/VCO/vco.sym} 70 260 0 0 {name=x1}
