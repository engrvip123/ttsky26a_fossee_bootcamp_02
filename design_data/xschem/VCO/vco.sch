v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -20 -70 10 {lab=#net1}
N -70 -120 -70 -80 {lab=#net2}
N -140 -50 -140 40 {lab=#net3}
N -140 -50 -110 -50 {lab=#net3}
N -260 -150 -110 -150 {lab=#net4}
N -300 -100 -230 -100 {lab=#net4}
N -230 -150 -230 -100 {lab=#net4}
N -110 150 -110 220 {lab=vctrl}
N -340 150 -340 220 {lab=vctrl}
N -410 150 -340 150 {lab=vctrl}
N -300 150 -300 180 {lab=GND}
N -300 180 -70 180 {lab=GND}
N -70 150 -70 180 {lab=GND}
N -140 40 -110 40 {lab=#net3}
N -300 -190 -300 -180 {lab=VDD}
N -300 -190 -70 -190 {lab=VDD}
N -70 -190 -70 -180 {lab=VDD}
N -300 -180 -300 -150 {lab=VDD}
N -70 -180 -70 -150 {lab=VDD}
N -190 -200 -190 -190 {lab=VDD}
N 100 -120 100 -80 {lab=#net5}
N 60 150 60 220 {lab=vctrl}
N 100 150 100 180 {lab=GND}
N 100 -190 100 -180 {lab=VDD}
N 100 -180 100 -150 {lab=VDD}
N -70 -80 -70 -50 {lab=#net2}
N -70 -10 30 -10 {lab=#net1}
N 30 -50 30 -10 {lab=#net1}
N 30 -50 60 -50 {lab=#net1}
N 30 -10 30 40 {lab=#net1}
N 30 40 60 40 {lab=#net1}
N -70 -190 100 -190 {lab=VDD}
N 280 -120 280 -80 {lab=#net6}
N 240 150 240 220 {lab=vctrl}
N 280 150 280 180 {lab=GND}
N 280 -190 280 -180 {lab=VDD}
N 280 -180 280 -150 {lab=VDD}
N 100 -10 220 -10 {lab=#net7}
N 220 -50 220 -10 {lab=#net7}
N 220 -50 240 -50 {lab=#net7}
N 220 -10 220 40 {lab=#net7}
N 220 40 240 40 {lab=#net7}
N 280 -0 400 -0 {lab=#net3}
N -170 -240 -170 -0 {lab=#net3}
N -170 0 -140 -0 {lab=#net3}
N -70 180 280 180 {lab=GND}
N -340 220 240 220 {lab=vctrl}
N -300 -120 -300 120 {lab=#net4}
N -10 180 -10 200 {lab=GND}
N -190 -210 -190 -200 {lab=VDD}
N 100 -190 280 -190 {lab=VDD}
N -130 -150 -130 -130 {lab=#net4}
N -130 -130 60 -130 {lab=#net4}
N 60 -150 60 -130 {lab=#net4}
N 60 -130 240 -130 {lab=#net4}
N 240 -150 240 -130 {lab=#net4}
N 100 -20 100 10 {lab=#net7}
N 100 -80 100 -50 {lab=#net5}
N 280 -20 280 10 {lab=#net3}
N 280 -80 280 -50 {lab=#net6}
N 360 -240 360 0 {lab=#net3}
N 400 -50 400 -10 {lab=#net3}
N 400 -50 420 -50 {lab=#net3}
N 400 -10 400 40 {lab=#net3}
N 400 40 420 40 {lab=#net3}
N 460 -20 460 10 {lab=#net8}
N 460 -80 460 -50 {lab=VDD}
N 460 40 460 70 {lab=GND}
N 460 0 510 0 {lab=#net8}
N 460 -190 460 -80 {lab=VDD}
N 460 70 460 180 {lab=GND}
N 280 -190 460 -190 {lab=VDD}
N -170 -240 360 -240 {lab=#net3}
N 560 -50 560 -10 {lab=#net8}
N 560 -50 580 -50 {lab=#net8}
N 560 -10 560 40 {lab=#net8}
N 560 40 580 40 {lab=#net8}
N 620 -20 620 10 {lab=out}
N 620 -80 620 -50 {lab=VDD}
N 620 40 620 70 {lab=GND}
N 620 0 670 0 {lab=out}
N 510 -0 560 0 {lab=#net8}
N 460 -190 620 -190 {lab=VDD}
N 620 -190 620 -80 {lab=VDD}
N 280 180 620 180 {lab=GND}
N 620 70 620 180 {lab=GND}
N 280 70 280 120 {lab=#net9}
N 100 70 100 120 {lab=#net10}
N -70 70 -70 120 {lab=#net11}
N 280 40 310 40 {lab=GND}
N 310 40 310 180 {lab=GND}
N 100 40 130 40 {lab=GND}
N 130 40 130 180 {lab=GND}
N -70 40 -30 40 {lab=GND}
N -30 40 -30 180 {lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -280 -150 0 1 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} -320 150 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} -90 150 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -90 40 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} -90 -150 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -90 -50 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 80 150 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -150 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 260 150 0 0 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 260 -150 0 0 {name=M13
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
C {ipin.sym} -410 150 0 0 {name=p1 lab=vctrl}
C {iopin.sym} 670 0 0 0 {name=p2 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 80 40 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -50 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 260 40 0 0 {name=M12
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
C {sky130_fd_pr/pfet_01v8.sym} 260 -50 0 0 {name=M14
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
C {sky130_fd_pr/nfet_01v8.sym} 440 40 0 0 {name=M15
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
C {sky130_fd_pr/pfet_01v8.sym} 440 -50 0 0 {name=M16
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
C {sky130_fd_pr/nfet_01v8.sym} 600 40 0 0 {name=M17
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -50 0 0 {name=M18
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
C {ipin.sym} -10 200 0 0 {name=p4 lab=GND}
C {ipin.sym} -190 -210 0 0 {name=p5 lab=VDD}
