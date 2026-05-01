v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -210 -580 -210 -480 {lab=VDD}
N -210 -580 160 -580 {lab=VDD}
N 160 -580 160 -480 {lab=VDD}
N 160 -450 250 -450 {lab=VDD}
N 250 -560 250 -450 {lab=VDD}
N 160 -560 250 -560 {lab=VDD}
N -30 -650 -30 -580 {lab=VDD}
N -320 -450 -210 -450 {lab=VDD}
N -320 -540 -320 -450 {lab=VDD}
N -320 -540 -210 -540 {lab=VDD}
N -170 -450 120 -450 {lab=#net1}
N -210 -420 -210 -230 {lab=#net1}
N -40 -450 -40 -360 {lab=#net1}
N -210 -360 -40 -360 {lab=#net1}
N 160 -420 160 -240 {lab=out}
N 160 -360 350 -360 {lab=out}
N -210 -170 -210 -130 {lab=#net2}
N -210 -130 160 -130 {lab=#net2}
N 160 -180 160 -130 {lab=#net2}
N -210 -200 -140 -200 {lab=VSS}
N 100 -210 160 -210 {lab=VSS}
N -20 -130 -20 -100 {lab=#net2}
N -20 -40 -20 20 {lab=VSS}
N -20 -70 70 -70 {lab=VSS}
N 70 -70 70 -10 {lab=VSS}
N -20 -10 70 -10 {lab=VSS}
N 200 -210 280 -210 {lab=vinm}
N -140 -70 -60 -70 {lab=vbias}
N 350 -360 360 -360 {lab=out}
N -310 -200 -250 -200 {lab=vinn}
N -140 -200 70 -200 {lab=VSS}
N 70 -200 70 -70 {lab=VSS}
N 70 -210 100 -210 {lab=VSS}
N 70 -210 70 -200 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -230 -200 0 0 {name=M1
W=40
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 180 -210 0 1 {name=M2
W=40
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} -40 -70 0 0 {name=M3
W=16
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} -190 -450 0 1 {name=M4
W=80
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -450 0 0 {name=M5
W=80
L=0.5
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
C {/tools/xschem/share/xschem/place_sym_pins.tcl} -270 -290 0 0 {}
C {iopin.sym} 360 -360 0 0 {name=p1 lab=out}
C {iopin.sym} -30 -650 0 0 {name=p2 lab=VDD}
C {iopin.sym} -310 -200 2 0 {name=p3 lab=vinn}
C {iopin.sym} 280 -210 0 0 {name=p4 lab=vinm}
C {iopin.sym} -140 -70 2 0 {name=p5 lab=vbias}
C {iopin.sym} -20 20 2 0 {name=p6 lab=VSS}
