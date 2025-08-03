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
# 🔧 Op-Amp Modeling as a Single Pole System
To better analyze the frequency response of the analog front-end, the operational amplifier is modeled using a single-pole transfer function. This provides insight into the bandwidth limitations and phase behavior of the amplifier.
<img width="1606" height="780" alt="image" src="https://github.com/user-attachments/assets/14731e97-49ab-4562-9b23-36c68a34540b" />

# 🔁 Simulink Output
The Simulink simulation confirms system-level behavior and time-domain signal dynamics.
<img width="493" height="350" alt="image" src="https://github.com/user-attachments/assets/c66fe622-1592-4a00-9310-c230cc35af84" />
# High-Pass Filter Circuit
This section explains the working and transfer function of a high-pass filter using an op-amp.

<img width="1080" height="630" alt="image" src="https://github.com/user-attachments/assets/578df93a-e611-41e1-8ac1-25a1a6fce51f" />
# 🧰 Circuit Overview
Input Capacitor C_i = 4.7μF: Blocks DC

Resistors R_i = R_f = 5kΩ: Define gain and cutoff

Op-Amp in non-inverting configuration

# 🧮 S-Domain Transfer Function

H(s) = (Rf * s * Ci) / (1 + s * Ri * Ci)

At low frequencies → H(s) → 0 (attenuates low freq)

At high frequencies → H(s) → 1 (passes high freq)

🔻 Cutoff Frequency (fc)

fc = 1 / (2πRiCi) ≈ 6.77 Hz For Ri = 5kΩ, Ci = 4.7μF

🖼️ Op-Amp Schematic Diagram

Detailed internal schematic of the operational amplifier:

<img width="941" height="451" alt="image" src="https://github.com/user-attachments/assets/624d635c-72ae-419f-ab59-22e61da2d1e0" />

 ## Op-Amp Symbolic Diagram
 
Standard symbolic representation of an operational amplifier:

<img width="1015" height="667" alt="image" src="https://github.com/user-attachments/assets/b5baee05-da16-43df-83ac-d7c559f10433" />

# High-Pass Filter Circuit Using the Op-Amp

High-pass filter circuit built using the op-amp symbol shown above:

<img width="791" height="621" alt="image" src="https://github.com/user-attachments/assets/00a84c2f-e398-4dca-aa5a-52c7a2e8897c" />

# Frequency Response Plot of the High-Pass Filter

The plot below shows the frequency response (gain vs frequency) of the high-pass filter circuit.

<img width="1411" height="508" alt="image" src="https://github.com/user-attachments/assets/5af303ba-f07d-4213-b102-922f568e4025" />

# 🔁 Simulink Output of the High-Pass Filter
simulink output from the Simulink simulation of the high-pass filter circuit.
<img width="497" height="340" alt="image" src="https://github.com/user-attachments/assets/d7851448-f615-4bba-8a11-869b8d366d1b" />
# 3. Siliwiz Simulation
Converts drawn layouts into functional circuits using SPICE backend.
<img width="966" height="462" alt="image" src="https://github.com/user-attachments/assets/dec849a5-4258-4c7b-b771-ae79f26e1767" />

# 4. Current Mirror
The circuit is used to copy the flow of current in one active device and controlling the flow of current in another device by maintaining the output current stable instead of loading
<img width="931" height="394" alt="image" src="https://github.com/user-attachments/assets/3db68555-8194-4b06-bf8d-b6bb49a2da89" />

#5. FET Characterization
To characterize the I-V behavior of an n-channel MOSFET (FET) by running a DC sweep analysis using Ngspice through an Xschem-based setup.
<img width="1919" height="1016" alt="image" src="https://github.com/user-attachments/assets/9af4a68c-4bdb-4cf7-9c01-48a8d6420530" />














