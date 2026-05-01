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

---

## LVS Result

Performed using **Netgen** comparing the Magic-extracted netlist against the Xschem schematic netlist.

```
Final result: Circuits match uniquely.
```

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
