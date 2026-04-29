# 3-Stage Current-Starved Ring VCO
**Process:** SkyWater Sky130 (130 nm) | **Tools:** Xschem + NGspice + Magic

## Specifications

| Parameter | Value |
|-----------|-------|
| Supply Voltage | 1.8 V |
| Tuning Range | 5.27 – 57.57 MHz |
| Current Consumption | 90.83 µA @ 0.7 V / 383 µA @ 1.7 V |


## Schematic
<img width="1820" height="765" alt="image" src="https://github.com/user-attachments/assets/3650ff5d-d5a2-491a-9665-3f2bb948e14c" />

## Frequency vs. Vctrl (TT, 27°C)

| Vctrl (V) | 0.70 | 0.80 | 0.90 | 1.00 | 1.10 | 1.20 | 1.30 | 1.40 | 1.50 | 1.60 | 1.70 |
|-----------|------|------|------|------|------|------|------|------|------|------|------|
| fosc (MHz) | 5.27 | 12.76 | 21.98 | 31.46 | 39.49 | 44.26 | 47.90 | 52.32 | 53.71 | 56.10 | 57.57 |

> Frequency saturates beyond Vctrl = 1.2 V. Circuit unstable at VDD = 1.8 V.

## PVT Corner Summary

Tested across TT/FF/SS/FS/SF corners with 0–50 fF load. Load sensitivity is minimal (< 0.4 MHz shift at TT). Frequency spread across corners:

| Vctrl | Min (SS/FS) | Typical (TT) | Max (FF) |
|-------|-------------|--------------|----------|
| 0.7 V | 3.90 MHz | 5.27 MHz | 6.87 MHz |
| 1.0 V | 29.35 MHz | 31.46 MHz | 33.32 MHz |
| 1.7 V | 55.37 MHz | 57.57 MHz | 59.52 MHz |

## Layout
<img width="1074" height="587" alt="image" src="https://github.com/user-attachments/assets/a81a5f3c-d585-4070-9338-1e38b1038183" />

