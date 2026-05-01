v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -50 -220 -30 {lab=0}
N -220 -190 -220 -170 {lab=VDD}
N -220 -260 -220 -250 {lab=0}
N -360 -110 -310 -110 {lab=vinm}
N -340 -70 -310 -70 {lab=vbias}
N -440 -110 -420 -110 {lab=0}
N -390 -240 -390 -220 {lab=0}
N -340 -10 -340 -0 {lab=0}
N -70 -90 -70 -70 {lab=out}
N -70 -90 -50 -90 {lab=out}
N -50 -110 -50 -90 {lab=out}
N -70 -10 -70 10 {lab=0}
N -390 -150 -310 -150 {lab=vinn}
N -390 -160 -390 -150 {lab=vinn}
N -70 -110 -50 -110 {lab=out}
C {/home/vncuser/design_data/test_design/xschem/DIFF_AMP.sym} -220 -110 0 0 {name=x1}
C {vsource.sym} -220 -220 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -220 -260 2 0 {name=l1 lab=0}
C {gnd.sym} -220 -30 0 0 {name=l2 lab=0}
C {vsource.sym} -390 -190 2 0 {name=V2 value="sin 0.9 10m 1e6 0 0" savecurrent=false}
C {vsource.sym} -390 -110 1 0 {name=V3 value=0.9 savecurrent=false}
C {vsource.sym} -340 -40 0 0 {name=V4 value= 0.85 savecurrent=false}
C {gnd.sym} -440 -110 0 0 {name=l3 lab=0}
C {gnd.sym} -390 -240 2 0 {name=l4 lab=0}
C {gnd.sym} -340 0 0 0 {name=l5 lab=0}
C {devices/code.sym} -530 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {code_shown.sym} -1310 -530 0 0 {name=s1 only_toplevel=false value=" 
.include /home/vncuser/design_data/test_design/xschem/simulation/DIFF_AMP_TB_TRANS.save
 
.control
save all
op
set appendwrite
write DIFF_AMP_TRANS.raw

tran 0.1n 10u
write DIFF_AMP_TRANS.raw 
.endc 
"}
C {lab_wire.sym} -60 -110 0 0 {name=p1 sig_type=std_logic lab=out}
C {capa-2.sym} -70 -40 0 0 {name=C1
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} -70 10 0 0 {name=l6 lab=0}
C {lab_wire.sym} -320 -110 0 0 {name=p2 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -320 -70 0 0 {name=p3 sig_type=std_logic lab=vbias}
C {lab_wire.sym} -320 -150 0 0 {name=p4 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -220 -170 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/launcher.sym} -810 -170 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/launcher.sym} -810 -240 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
