# Differential Amplifier (DIFF_AMP)

**Process:** SkyWater Sky130 (130 nm) | **Tools:** Xschem + NGspice + Magic + Netgen | **Platform:** OpenAnalogDockSky130 (Docker)

---

## Specifications

| Parameter         | Value                        |
|-------------------|------------------------------|
| Supply Voltage    | 1.8 V                        |
| Process Node      | SkyWater Sky130 (130 nm)     |
| Topology          | 5T Differential Amplifier with Current Mirror Active Load (Single-Ended Output) |
| Input Common-Mode | 0.9 V                        |
| Bias Voltage      | 0.9 V                        |
| Simulation Type   | Transient (10 µs, step 0.01 µs) |
| Input Signal      | 10 mV amplitude, 1 MHz sine  |

### Transistor Sizing

| Transistor | Type                      | Role                  | W (µm) | L (µm) | nf |
|------------|---------------------------|-----------------------|--------|--------|----|
| M1         | `sky130_fd_pr__nfet_01v8` | Diff pair (VIN+/inn)  | 40     | 0.5    | 1  |
| M2         | `sky130_fd_pr__nfet_01v8` | Diff pair (VIN−/vinm) | 40     | 0.5    | 1  |
| M3         | `sky130_fd_pr__nfet_01v8` | Tail current source   | 16     | 0.5    | 1  |
| M4         | `sky130_fd_pr__pfet_01v8` | Current mirror (diode)| 80     | 0.5    | 1  |
| M5         | `sky130_fd_pr__pfet_01v8` | Current mirror (load) | 80     | 0.5    | 1  |

---

## Circuit Description

The DIFF_AMP is a 5T differential amplifier with current mirror active load and single-ended output, designed on the SkyWater Sky130 130 nm PDK. It consists of:

- **M1, M2** – NMOS differential pair (`sky130_fd_pr__nfet_01v8`), accepting differential inputs `VIN+` and `VIN-`
- **M3** – NMOS tail current source (`sky130_fd_pr__nfet_01v8`), biased by `VBIAS`
- **M4, M5** – PMOS current mirror active load (`sky130_fd_pr__pfet_01v8`)

The output `OUT` is taken from the drain of M2/M5.

---

## Project Structure

```
OpenAnalogDockSky130/
├── .env                          # Docker environment config (ports, VNC password)
├── docker-compose.yml            # Docker Compose file using vishalgupta7/openanalogdocksky130
└── design_data/
    └── test_design/
        ├── xschem/
        │   └── simulation/
        │       ├── DIFF_AMP.sch              # Schematic (symbol/subcircuit)
        │       ├── DIFF_AMP.sym              # Symbol definition
        │       ├── DIFF_AMP.spice            # Extracted netlist
        │       ├── DIFF_AMP_TB_TRANS.sch     # Transient testbench schematic
        │       ├── DIFF_AMP_TB_TRANS.spice   # Testbench netlist
        │       ├── DIFF_AMP_TRANS.raw        # NGspice simulation output
        │       └── DIFF_AMP.save            # Saved signals list
        ├── magic/
        │   ├── DIFF_AMP.mag                  # Magic layout file
        │   ├── DIFF_AMP.gds                  # GDSII layout export
        │   ├── DIFF_AMP.spice               # Layout-extracted netlist
        │   ├── DIFF_AMP.ext                 # Magic extraction file
        │   └── DIFF_AMP_TB_TRANS.mag        # Testbench layout
        └── netgen/
            ├── comp.out                     # LVS comparison result
            └── setup.tcl                    # Netgen setup script
```

---

## Differential Amplifier Layout - Pandiyarajan

### Designer
- **Name:** Pandiyarajan S
- **Email:** s.pandiyarajan1203@gmail.com
- **GitHub:** Pandiya2007
- **Institution:** ECE Undergraduate, India

---

### Circuit
- **Type:** Differential Amplifier
- **Technology:** sky130A (130nm)
- **Tool:** Magic VLSI
- **PDK:** SkyWater sky130A

---
### circuit schematic
<img width="1727" height="925" alt="DIFF_AMP_WITHACTIVELOAD" src="https://github.com/user-attachments/assets/d4e5df48-3291-49e7-8160-9eb7c5759ce7" />


### Circuit Symbol
<img width="1727" height="925" alt="DIFF_AMP_SYMBOL" src="https://github.com/user-attachments/assets/17e16864-060b-47c6-b894-6638dee6ba50" />


---
### ngspice output
<img width="469" height="328" alt="ngspice_output" src="https://github.com/user-attachments/assets/72fa0602-ace7-440e-91c1-01c644152096" />

---
### Magic VLSI Layout
<img width="1736" height="945" alt="DIFF_AMP_LAYOUT" src="https://github.com/user-attachments/assets/284fc2a7-d51b-4c1f-9650-9620c26f851e" />


---

### Netgen LVS Result
<img width="1765" height="799" alt="netgen_result" src="https://github.com/user-attachments/assets/84fb7f15-fa90-4984-b349-2a385fa29f79" />


---

### Tiny Tapeout Precheck Results
<img width="280" height="360" alt="image_360" src="https://github.com/user-attachments/assets/cacbf014-143d-4443-ae8b-3e6077d2245e" />


| Check | Result |
|-------|--------|
| Magic DRC | ✅ Passed |
| KLayout FEOL | ✅ Passed |
| KLayout BEOL | ✅ Passed |
| KLayout offgrid | ✅ Passed |
| KLayout pin label overlapping | ✅ Passed |
| KLayout zero area | ✅ Passed |
| KLayout Checks | ✅ Passed |
| Pin check | ✅ Passed |
| Boundary check | ✅ Passed |
| Power pin check | ✅ Passed |
| Layer check | ✅ Passed |
| Cell name check | ✅ Passed |
| urpm/nwell check | ✅ Passed |
| Analog pin check | ✅ Passed |
| Verilog syntax check | ✅ Passed |

### ✅ All 15 Tests Passed!

---

### Verification Summary
- ✅ Magic DRC Passed
- ✅ KLayout DRC Passed
- ✅ Netgen LVS Passed
- ✅ All 15 TT Precheck Tests Passed

## Tools Used

| Tool       | Purpose                              |
|------------|--------------------------------------|
| **Xschem** | Schematic capture and netlist export |
| **NGspice** | SPICE simulation (transient analysis) |
| **Magic**  | Layout design and GDSII export       |
| **Netgen** | LVS (Layout vs. Schematic) check     |

All tools are pre-installed inside the **OpenAnalogDockSky130** Docker container image (`vishalgupta7/openanalogdocksky130:latest`).

---

## Simulation

### Testbench Setup

| Source | Node   | Value                          |
|--------|--------|--------------------------------|
| V1     | VDD    | 1.8 V DC                       |
| V2     | VIN+   | 0.9 V DC + 10 mV sin @ 1 MHz  |
| V3     | VIN−   | 0.9 V DC                       |
| V4     | VBIAS  | 0.9 V DC                       |

### waveform of simulation
<img width="646" height="527" alt="DIFF_AMP_SIMULATION" src="https://github.com/user-attachments/assets/082de86a-2b83-4cbe-b9bd-56e12d34df28" />

### Analysis

```spice
.lib /pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.control
  saveall
  op
  trans 0.01u 10u
  write DIFF_AMP_TRANS.raw
.endc
```
### testbench 
<img width="1736" height="927" alt="Screenshot 2026-05-01 191827" src="https://github.com/user-attachments/assets/e627a565-4f06-4286-84e3-93b229ba7728" />



---

## LVS Result

Performed using **Netgen** comparing the Magic-extracted netlist against the Xschem schematic netlist.

```
Final result: Circuits match uniquely.
```
<img width="547" height="132" alt="Screenshot 2026-05-01 190307" src="https://github.com/user-attachments/assets/85b39c4f-c816-4c1d-80b4-6e2b1d4d3c6e" />


Both NFET and PFET device classes were verified equivalent, with 5 devices and 8 nets on each side.

---

## How to Run

### Prerequisites
- Docker and Docker Compose installed

### Steps

```bash
# 1. Clone or extract the project
cd OpenAnalogDockSky130

# 2. Create the .env file (already provided)
# Default VNC password: Hello@1234

# 3. Start the container
docker compose up -d

# 4. Access the desktop via browser
# Open: http://localhost:6080

# Or via VNC client at: localhost:5901
# Password: Hello@1234
```

### Running Simulation in NGspice (inside container)

```bash
ngspice DIFF_AMP_TB_TRANS.spice
```

---

## PDK

**SkyWater Sky130A** — Open-source 130 nm process design kit  
Path inside container: `/pdks/sky130A/`  
Library used: `sky130.lib.spice tt` (typical-typical corner)

---

## Author

**PANDIYARAJAN**  
Design submitted as part of the OpenAnalogDockSky130 open-source analog design workflow.
