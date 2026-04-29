v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -230 -70 -230 -50 {lab=0}
N -280 80 -260 80 {lab=vctrl}
N -260 80 -260 100 {lab=vctrl}
N -260 160 -260 180 {lab=0}
N 410 -50 410 -20 {lab=#net1}
N 410 -150 410 -110 {lab=#net2}
N 340 -80 340 10 {lab=#net3}
N 340 -80 370 -80 {lab=#net3}
N 220 -180 370 -180 {lab=#net4}
N 180 -130 250 -130 {lab=#net4}
N 250 -180 250 -130 {lab=#net4}
N 370 120 370 190 {lab=vctrl}
N 140 120 140 190 {lab=vctrl}
N 70 120 140 120 {lab=vctrl}
N 180 120 180 150 {lab=GND}
N 180 150 410 150 {lab=GND}
N 410 120 410 150 {lab=GND}
N 340 10 370 10 {lab=#net3}
N 180 -220 180 -210 {lab=VDD}
N 180 -220 410 -220 {lab=VDD}
N 410 -220 410 -210 {lab=VDD}
N 180 -210 180 -180 {lab=VDD}
N 410 -210 410 -180 {lab=VDD}
N 290 -230 290 -220 {lab=VDD}
N 580 -150 580 -110 {lab=#net5}
N 540 120 540 190 {lab=vctrl}
N 580 120 580 150 {lab=GND}
N 580 -220 580 -210 {lab=VDD}
N 580 -210 580 -180 {lab=VDD}
N 410 -110 410 -80 {lab=#net2}
N 410 -40 510 -40 {lab=#net1}
N 510 -80 510 -40 {lab=#net1}
N 510 -80 540 -80 {lab=#net1}
N 510 -40 510 10 {lab=#net1}
N 510 10 540 10 {lab=#net1}
N 410 -220 580 -220 {lab=VDD}
N 760 -150 760 -110 {lab=#net6}
N 720 120 720 190 {lab=vctrl}
N 760 120 760 150 {lab=GND}
N 760 -220 760 -210 {lab=VDD}
N 760 -210 760 -180 {lab=VDD}
N 580 -40 700 -40 {lab=#net7}
N 700 -80 700 -40 {lab=#net7}
N 700 -80 720 -80 {lab=#net7}
N 700 -40 700 10 {lab=#net7}
N 700 10 720 10 {lab=#net7}
N 760 -30 880 -30 {lab=#net3}
N 310 -270 310 -30 {lab=#net3}
N 310 -30 340 -30 {lab=#net3}
N 410 150 760 150 {lab=GND}
N 140 190 720 190 {lab=vctrl}
N 180 -150 180 90 {lab=#net4}
N 470 150 470 170 {lab=GND}
N 290 -240 290 -230 {lab=VDD}
N 580 -220 760 -220 {lab=VDD}
N 350 -180 350 -160 {lab=#net4}
N 350 -160 540 -160 {lab=#net4}
N 540 -180 540 -160 {lab=#net4}
N 540 -160 720 -160 {lab=#net4}
N 720 -180 720 -160 {lab=#net4}
N 580 -50 580 -20 {lab=#net7}
N 580 -110 580 -80 {lab=#net5}
N 760 -50 760 -20 {lab=#net3}
N 760 -110 760 -80 {lab=#net6}
N 840 -270 840 -30 {lab=#net3}
N 880 -80 880 -40 {lab=#net3}
N 880 -80 900 -80 {lab=#net3}
N 880 -40 880 10 {lab=#net3}
N 880 10 900 10 {lab=#net3}
N 940 -50 940 -20 {lab=#net8}
N 940 -110 940 -80 {lab=VDD}
N 940 10 940 40 {lab=GND}
N 940 -30 990 -30 {lab=#net8}
N 940 -220 940 -110 {lab=VDD}
N 940 40 940 150 {lab=GND}
N 760 -220 940 -220 {lab=VDD}
N 310 -270 840 -270 {lab=#net3}
N 1040 -80 1040 -40 {lab=#net8}
N 1040 -80 1060 -80 {lab=#net8}
N 1040 -40 1040 10 {lab=#net8}
N 1040 10 1060 10 {lab=#net8}
N 1100 -50 1100 -20 {lab=out}
N 1100 -110 1100 -80 {lab=VDD}
N 1100 10 1100 40 {lab=GND}
N 1100 -30 1150 -30 {lab=out}
N 990 -30 1040 -30 {lab=#net8}
N 940 -220 1100 -220 {lab=VDD}
N 1100 -220 1100 -110 {lab=VDD}
N 760 150 1100 150 {lab=GND}
N 1100 40 1100 150 {lab=GND}
N 760 40 760 90 {lab=#net9}
N 580 40 580 90 {lab=#net10}
N 410 40 410 90 {lab=#net11}
N 760 10 790 10 {lab=GND}
N 790 10 790 150 {lab=GND}
N 580 10 610 10 {lab=GND}
N 610 10 610 150 {lab=GND}
N 410 10 450 10 {lab=GND}
N 450 10 450 150 {lab=GND}
C {code_shown.sym} -600 -140 0 0 {name=NGSPICE only_toplevel=false value=".include vco_opdc.save
.control
op
write vco_opdc.raw
set appendwrite
tran 0.1 2n
write vco_opdc.raw
.endc
"}
C {vsource.sym} -230 -100 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -230 -50 0 0 {name=l3 lab=0}
C {vsource.sym} -260 130 0 0 {name=V2 value=0.7 savecurrent=false}
C {gnd.sym} -260 180 0 0 {name=l4 lab=0}
C {lab_pin.sym} -280 80 0 0 {name=p3 sig_type=std_logic lab=vctrl}
C {devices/code.sym} -590 120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {ammeter.sym} -230 -160 2 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} -230 -190 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/annotate_fet_params.sym} -220 360 0 0 {name=annot1 ref=M1}
C {sky130_fd_pr/annotate_fet_params.sym} -130 360 0 0 {name=annot2 ref=M2}
C {sky130_fd_pr/annotate_fet_params.sym} -80 350 0 0 {name=annot3 ref=M3}
C {sky130_fd_pr/annotate_fet_params.sym} -10 340 0 0 {name=annot4 ref=M4}
C {sky130_fd_pr/annotate_fet_params.sym} 70 340 0 0 {name=annot5 ref=M5}
C {sky130_fd_pr/annotate_fet_params.sym} 180 330 0 0 {name=annot6 ref=M6}
C {sky130_fd_pr/annotate_fet_params.sym} 280 330 0 0 {name=annot7 ref=M7}
C {sky130_fd_pr/annotate_fet_params.sym} 370 320 0 0 {name=annot8 ref=M8}
C {sky130_fd_pr/annotate_fet_params.sym} 470 330 0 0 {name=annot9 ref=M9}
C {sky130_fd_pr/annotate_fet_params.sym} 560 320 0 0 {name=annot10 ref=M10}
C {sky130_fd_pr/annotate_fet_params.sym} 630 320 0 0 {name=annot11 ref=M11}
C {sky130_fd_pr/annotate_fet_params.sym} 690 310 0 0 {name=annot12 ref=M12}
C {sky130_fd_pr/annotate_fet_params.sym} 730 300 0 0 {name=annot13 ref=M13}
C {sky130_fd_pr/annotate_fet_params.sym} 790 300 0 0 {name=annot14 ref=M14}
C {sky130_fd_pr/annotate_fet_params.sym} 850 300 0 0 {name=annot15 ref=M15}
C {sky130_fd_pr/annotate_fet_params.sym} 890 300 0 0 {name=annot16 ref=M16}
C {sky130_fd_pr/annotate_fet_params.sym} 940 300 0 0 {name=annot17 ref=M17}
C {sky130_fd_pr/annotate_fet_params.sym} 990 290 0 0 {name=annot18 ref=M18}
C {sky130_fd_pr/pfet_01v8.sym} 200 -180 0 1 {name=M7
W=70
L=3.2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 120 0 0 {name=M8
W=40
L=4.2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 120 0 0 {name=M5
W=40
L=4.2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 10 0 0 {name=M6
W=49
L=1.4
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 390 -180 0 0 {name=M1
W=70
L=3.2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 390 -80 0 0 {name=M2
W=74
L=1.4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 560 120 0 0 {name=M3
W=40
L=4.2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 560 -180 0 0 {name=M9
W=70
L=3.2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 740 120 0 0 {name=M11
W=40
L=4.2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 740 -180 0 0 {name=M13
W=70
L=3.2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 70 120 0 0 {name=p1 lab=vctrl}
C {iopin.sym} 1150 -30 0 0 {name=p2 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 560 10 0 0 {name=M4
W=49
L=1.4
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 560 -80 0 0 {name=M10
W=74
L=1.4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 740 10 0 0 {name=M12
W=49
L=1.4
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 740 -80 0 0 {name=M14
W=74
L=1.4
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 920 10 0 0 {name=M15
W=10
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 920 -80 0 0 {name=M16
W=20
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1080 10 0 0 {name=M17
W=20
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1080 -80 0 0 {name=M18
W=40
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 470 170 0 0 {name=p4 lab=GND}
C {ipin.sym} 290 -240 0 0 {name=p5 lab=VDD}
