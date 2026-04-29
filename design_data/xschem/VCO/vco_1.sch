v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 10 -20 40 {lab=#net1}
N -20 -90 -20 -50 {lab=#net2}
N -90 -20 -90 70 {lab=#net3}
N -90 -20 -60 -20 {lab=#net3}
N -210 -120 -60 -120 {lab=#net4}
N -250 -70 -180 -70 {lab=#net4}
N -180 -120 -180 -70 {lab=#net4}
N -60 180 -60 250 {lab=vctrl}
N -290 180 -290 250 {lab=vctrl}
N -360 180 -290 180 {lab=vctrl}
N -250 180 -250 210 {lab=GND}
N -250 210 -20 210 {lab=GND}
N -20 180 -20 210 {lab=GND}
N -90 70 -60 70 {lab=#net3}
N -250 -160 -250 -150 {lab=VDD}
N -250 -160 -20 -160 {lab=VDD}
N -20 -160 -20 -150 {lab=VDD}
N -250 -150 -250 -120 {lab=VDD}
N -20 -150 -20 -120 {lab=VDD}
N -140 -170 -140 -160 {lab=VDD}
N 150 -90 150 -50 {lab=#net5}
N 110 180 110 250 {lab=vctrl}
N 150 180 150 210 {lab=GND}
N 150 -160 150 -150 {lab=VDD}
N 150 -150 150 -120 {lab=VDD}
N -20 -50 -20 -20 {lab=#net2}
N -20 20 80 20 {lab=#net1}
N 80 -20 80 20 {lab=#net1}
N 80 -20 110 -20 {lab=#net1}
N 80 20 80 70 {lab=#net1}
N 80 70 110 70 {lab=#net1}
N -20 -160 150 -160 {lab=VDD}
N 330 -90 330 -50 {lab=#net6}
N 290 180 290 250 {lab=vctrl}
N 330 180 330 210 {lab=GND}
N 330 -160 330 -150 {lab=VDD}
N 330 -150 330 -120 {lab=VDD}
N 150 20 270 20 {lab=#net7}
N 270 -20 270 20 {lab=#net7}
N 270 -20 290 -20 {lab=#net7}
N 270 20 270 70 {lab=#net7}
N 270 70 290 70 {lab=#net7}
N 330 30 450 30 {lab=#net3}
N -120 -210 -120 30 {lab=#net3}
N -120 30 -90 30 {lab=#net3}
N -20 210 330 210 {lab=GND}
N -290 250 290 250 {lab=vctrl}
N -250 -90 -250 150 {lab=#net4}
N 40 210 40 230 {lab=GND}
N -140 -180 -140 -170 {lab=VDD}
N 150 -160 330 -160 {lab=VDD}
N -80 -120 -80 -100 {lab=#net4}
N -80 -100 110 -100 {lab=#net4}
N 110 -120 110 -100 {lab=#net4}
N 110 -100 290 -100 {lab=#net4}
N 290 -120 290 -100 {lab=#net4}
N 150 10 150 40 {lab=#net7}
N 150 -50 150 -20 {lab=#net5}
N 330 10 330 40 {lab=#net3}
N 330 -50 330 -20 {lab=#net6}
N 410 -210 410 30 {lab=#net3}
N 450 -20 450 20 {lab=#net3}
N 450 -20 470 -20 {lab=#net3}
N 450 20 450 70 {lab=#net3}
N 450 70 470 70 {lab=#net3}
N 510 10 510 40 {lab=#net8}
N 510 -50 510 -20 {lab=VDD}
N 510 70 510 100 {lab=GND}
N 510 30 560 30 {lab=#net8}
N 510 -160 510 -50 {lab=VDD}
N 510 100 510 210 {lab=GND}
N 330 -160 510 -160 {lab=VDD}
N -120 -210 410 -210 {lab=#net3}
N 610 -20 610 20 {lab=#net8}
N 610 -20 630 -20 {lab=#net8}
N 610 20 610 70 {lab=#net8}
N 610 70 630 70 {lab=#net8}
N 670 10 670 40 {lab=out}
N 670 -50 670 -20 {lab=VDD}
N 670 70 670 100 {lab=GND}
N 670 30 720 30 {lab=out}
N 560 30 610 30 {lab=#net8}
N 510 -160 670 -160 {lab=VDD}
N 670 -160 670 -50 {lab=VDD}
N 330 210 670 210 {lab=GND}
N 670 100 670 210 {lab=GND}
N 330 100 330 150 {lab=#net9}
N 150 100 150 150 {lab=#net10}
N -20 100 -20 150 {lab=#net11}
N -20 70 10 70 {lab=GND}
N 10 70 10 210 {lab=GND}
N 150 70 180 70 {lab=GND}
N 180 70 180 210 {lab=GND}
N 330 70 360 70 {lab=GND}
N 360 70 360 210 {lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -230 -120 0 1 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} -270 180 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} -40 180 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -40 70 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -120 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -20 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 130 180 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -120 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 310 180 0 0 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 310 -120 0 0 {name=M13
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
C {ipin.sym} -360 180 0 0 {name=p1 lab=vctrl}
C {iopin.sym} 720 30 0 0 {name=p2 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 130 70 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -20 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 310 70 0 0 {name=M12
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
C {sky130_fd_pr/pfet_01v8.sym} 310 -20 0 0 {name=M14
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
C {sky130_fd_pr/nfet_01v8.sym} 490 70 0 0 {name=M15
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
C {sky130_fd_pr/pfet_01v8.sym} 490 -20 0 0 {name=M16
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
C {sky130_fd_pr/nfet_01v8.sym} 650 70 0 0 {name=M17
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
C {sky130_fd_pr/pfet_01v8.sym} 650 -20 0 0 {name=M18
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
C {ipin.sym} 40 230 0 0 {name=p4 lab=GND}
C {ipin.sym} -140 -180 0 0 {name=p5 lab=VDD}
