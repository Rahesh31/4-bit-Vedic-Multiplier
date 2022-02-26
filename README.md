# Design and Simulation of 4 bit Vedic Multiplier using GDI technique on 28nm CMOS technology

This repository presents the design and simulation of 4 bit Vedic Multiplier using GDI technique on 28nm CMOS technology using Synopsys Custom Compiler and Synopsys Primewave.

# Table of Contents
- [Abstract]()
- [Tools Used]()
- [GDI Technique]()
- [Vedic Multiplier]()
- [Reference Circuit]()
- [GDI EXOR Gate]()
- [GDI EXNOR Gate]()
- [GDI NAND Gate]()
- [GDI NOR Gate]()
- [GDI AND Gate]()
- [GDI MUX]()
- [GDI Half Adder]()
- [GDI Full Adder]()
- [GDI 4-bit Vedic Multiplier]()
- [Simulations]()
- [Netlist]()
- [Acknowedgements]()
- [References]()

# Abstract

Multipliers are used in the building blocks of several processors. Conventional multiplication is time consuming and lengthy process; to overcome these drawbacks the circuit
designers must develop speedy multipliers. Vedic Multiplier is one of the fastest and low power multipliers. It has large number of applications such as Fast Fourier Transform
(FFT), Convolution etc. Here, 4-bit Vedic Multiplier is implemented using Gate Diffusion Input (GDI) technique and 28nm CMOS technology. GDI Technique allows us to use lesser
number of Transistors and hence lesser power and area than the conventional Static CMOS technique.

# Tools Used

- Synopsys Custom Compiler:  The Synopsys Custom Compiler™ design environment is a modern solution for full-custom analog, custom digital, and mixed-signal IC design. As the heart of the Synopsys Custom Design Platform, Custom Compiler provides design entry, simulation management and analysis, and custom layout editing features. This tool was used to design the circuit on a transistor level.
- Synopsys Primewave:  PrimeWave™ Design Environment is a comprehensive and flexible environment for simulation setup and analysis of analog, RF, mixed-signal design, custom-digital and memory designs within the Synopsys Custom Design Platform. This tool helped in various types of simulations of the above designed circuit.
- Synopsys 28nm PDK:  The Synopsys 28nm Process Design Kit(PDK) was used in creation and simulation of the above designed circuit.

# GDI Technique

  Gate diffusion Input (GDI) technique. Using this technique one can design a digital circuit with low power in embedded system. The number of transistors used in the circuit is
minimum hence they are used by the circuit is reduced as well as the delay and power consumption. Compared to the existing conventional designs GDI technique is much efficient.
Even though the technique has many advantages, there are few drawbacks which can be rectified. A GDI cell consists of 3 inputs. One input G which is the gate input for PMOS and
NMOS, P which is the input to source/drain of PMOS and N which is the input to source/drain of NMOS.
  The major benefit of using GDI technique is that a large number of functions can be implemented using this technique. We can see from the table 2 that GDI can be used for
implementing various designs such as MUX, AND, OR etc. The main drawback of GDI technique is that of swing degradation. This is due to threshold loss and to eliminate this we
have to use silicon on insulator or twin-well process to realize, which is very expensive. 

![Basic GDI Cell](https://user-images.githubusercontent.com/54439300/155849634-4a313df4-f98a-4cf6-b461-43a1aeeaffaf.png)

