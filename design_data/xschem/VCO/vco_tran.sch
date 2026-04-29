v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 520 -120 1320 280 {flags=graph
y1=-0.083
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.2130183e-07
x2=8.0784889e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
out1"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N -230 350 -230 370 {lab=0}
N -280 500 -260 500 {lab=vctrl}
N -260 500 -260 520 {lab=vctrl}
N -260 580 -260 600 {lab=0}
N -35 405 35 405 {lab=vctrl}
N 350 385 400 385 {lab=out}
N 5 385 35 385 {lab=vdd}
N 25 425 25 435 {lab=0}
N 25 425 35 425 {lab=0}
N 335 385 350 385 {lab=out}
N 5 600 75 600 {lab=vctrl}
N 280 600 330 600 {lab=out1}
N 45 580 75 580 {lab=vdd}
N 65 620 65 630 {lab=0}
N 65 620 75 620 {lab=0}
N 265 600 280 600 {lab=out1}
C {code_shown.sym} -720 -130 0 0 {name=NGSPICE only_toplevel=false value="
.control
tran 1n 2u
write vco_tran.raw
.endc
"}
C {vsource.sym} -230 320 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -230 290 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {gnd.sym} -230 370 0 0 {name=l3 lab=0}
C {vsource.sym} -260 550 0 0 {name=V2 value=0.8 savecurrent=false}
C {gnd.sym} -260 600 0 0 {name=l4 lab=0}
C {lab_pin.sym} -280 500 0 0 {name=p5 sig_type=std_logic lab=vctrl}
C {devices/code.sym} -580 400 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {launcher.sym} 310 190 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/vco_tran.raw tran"
}
C {ipin.sym} -35 405 0 0 {name=p1 lab=vctrl}
C {iopin.sym} 400 385 0 0 {name=p2 lab=out}
C {lab_pin.sym} 5 385 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 25 435 0 0 {name=l1 lab=0}
C {xschem/VCO/vco_1.sym} 185 405 0 0 {name=x2}
C {ipin.sym} 5 600 0 0 {name=p6 lab=vctrl}
C {iopin.sym} 330 600 0 0 {name=p7 lab=out1}
C {lab_pin.sym} 45 580 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {gnd.sym} 65 630 0 0 {name=l2 lab=0}
C {xschem/VCO/vco.sym} 225 600 0 0 {name=x1}
