# 📘 Analog IC Design Internship Report
Name: ROSHAN JENA

SIC: 23BEEH17

Branch: Electrical & Electronics Engineering

Duration: June 2nd, 2025 – June 20th, 2025

Mentor: Dr. Saroj Rout

# 🛠️ Software Used
Xschem

Ngspice

Siliwiz

Git & GitHub

# 📑 Table of Contents

USB Microphone System Analysis

High-Pass Filter Circuit

Siliwiz Simulation

Current Mirror

FET Characterization

NFET Characterization
COURSE DETAIlL
## 1. Introduction to an electronic system design, a plug-n-play USB-MIDI microphone.

Microphone pre-amplifier and interface circuit design.
Select an widely available Op-Amp for the preamplifier e.g. TI OPA 344
Derive the important specs for the CMOS Op-Amp design.
## 2. Introduction to linear circuits and passive devices

Understanding passive devices (RLC) using basic EM principles.
Principle of linearity and superposition
Network analysis: KCL, KVL, node theorems, Thevenin, Norton
Emphasis on interfacing circuits and power transfer principle.
## 3. Basics of MOS device physics

Introduction to pn junctions.
MOS as capacitor.
Threshold voltage.
IV characteristics.
Parasitic capacitance.
##4. Basics of analog building blocks

Current mirror design: simple, cascode and wide-swing mirrors
Basic understanding of differential amplifiers.
Introduction to AC analysis: stability analysis of a 2-stage amplifier.
Design of a folded cascode amplifier using CMOS 130nm.
## 5. Implementation of the design

All the designs will be done using Skywater 130nm CMOS technology.
Schematic capture using open-source xschem.
Simulation will be done using ngspice.
Layout and final verification will be done using magic and netgen.

# 1. USB Microphone System Analysis
This section explains the analog front-end of a USB microphone setup and its role in signal conditioning and conversion.
<img width="1280" height="666" alt="image" src="https://github.com/user-attachments/assets/0a8ae1a0-a64c-4892-a4c4-4e4b579bbba1" />
# System Overview
MEMS Microphone (SPH8878LR5H-1): Captures sound and outputs an analog voltage signal
Op-Amp (OPA344): Amplifies & filters
ADC + USB Output: Digitizes and sends to PC
🎧 This design enables real-time USB-MIDI output via analog signal conditioning.

# 🎛️ Thevenin Equivalent Model of the Microphone
To understand the microphone as a signal source, it can be modeled with its Thevenin equivalent:

This model helps in:

Analyzing signal strength and loading
Impedance matching for the amplifier input
Ensuring minimal signal loss at the interface
<img width="1423" height="788" alt="image" src="https://github.com/user-attachments/assets/81202ccf-e212-4793-ba17-70e04650f6ab" />

#📷 This schematic shows the practical implementation of the Thevenin model using Xschem.
📈 Output Response of the Microphone Circuit
The simulation below shows the voltage output (vout) across the load, after signal amplification and filtering.
<img width="1415" height="708" alt="image" src="https://github.com/user-attachments/assets/f069a4e0-4d5d-4cc6-a12c-57d0771c7b3b" />
🧪 This waveform helps verify if the designed circuit properly amplifies the mic signal within expected voltage ranges.

# 📈 Frequency Response
The frequency response reveals the bandwidth and filtering effects of the analog stage.
<img width="1600" height="659" alt="image" src="https://github.com/user-attachments/assets/2d9a4181-3e14-455c-91d0-37dd816d6da5" />
# 🔁 Simulink Output
The Simulink simulation confirms system-level behavior and time-domain signal dynamics.
<img width="488" height="347" alt="image" src="https://github.com/user-attachments/assets/274a0bf0-9129-4b2a-b3eb-c849e161fa66" />




