v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1740 -570 2540 -170 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
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
N 1340 150 1410 150 {lab=vctrl}
N 1250 70 1250 90 {lab=0}
N 1200 220 1220 220 {lab=vctrl}
N 1220 220 1220 240 {lab=vctrl}
N 1220 300 1220 320 {lab=0}
N 1720 130 1770 130 {lab=out}
N 1380 130 1410 130 {lab=vdd}
N 1400 170 1400 180 {lab=0}
N 1400 170 1410 170 {lab=0}
N 1650 225 1650 235 {lab=out}
N 1750 130 1750 135 {lab=out}
N 1410 225 1630 225 {lab=0}
N 1410 170 1410 225 {lab=0}
N 1650 300 1650 310 {lab=0}
N 1630 310 1650 310 {lab=0}
N 1630 230 1630 310 {lab=0}
N 1650 295 1650 300 {lab=0}
N 1630 225 1630 230 {lab=0}
N 1710 130 1720 130 {lab=out}
N 1750 135 1750 220 {lab=out}
N 1650 220 1750 220 {lab=out}
N 1650 220 1650 225 {lab=out}
C {ipin.sym} 1340 150 0 0 {name=p1 lab=vctrl}
C {iopin.sym} 1770 130 0 0 {name=p2 lab=out}
C {code_shown.sym} 1810 -80 0 0 {name=NGSPICE only_toplevel=false value="
.control
    * Create vectors to store data for exactly 3 points
    let v_points = unitvec(3) * 0
    let f_points = unitvec(3) * 0
    let index = 0

    * Explicitly loop through your target voltages
    foreach vcval 0.7 1.0 1.7
        alter V2 $vcval
        
        * Run transient simulation 
        tran 1n 2u
        
        * Measure the period using the 0.9V threshold (mid-rail for 1.8V supply) 
        meas tran t_p trig v(out) val=0.9 rise=2 targ v(out) val=0.9 rise=3
        
        * Store values in our vectors
        let v_points[index] = $vcval
        let f_points[index] = 1/t_p
        
        let index = index + 1
    end

    * Print the final table for the 3 points
    print v_points f_points
.endc
"}
C {vsource.sym} 1250 40 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 1250 10 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {gnd.sym} 1250 90 0 0 {name=l3 lab=0}
C {vsource.sym} 1220 270 0 0 {name=V2 value=0.7 savecurrent=false}
C {gnd.sym} 1220 320 0 0 {name=l4 lab=0}
C {lab_pin.sym} 1200 220 0 0 {name=p5 sig_type=std_logic lab=vctrl}
C {devices/code.sym} 1480 440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {launcher.sym} 1530 -260 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/vco_tb.raw tran"
}
C {lab_pin.sym} 1380 130 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 1400 180 0 0 {name=l1 lab=0}
C {capa-2.sym} 1650 265 0 0 {name=C1
m=1
value=50f
footprint=1206
device=polarized_capacitor}
C {xschem/VCO/vco_1.sym} 1560 150 0 0 {name=x1}
