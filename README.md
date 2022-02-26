# Design and Simulation of 4 bit Vedic Multiplier using GDI technique on 28nm CMOS technology

This repository presents the design and simulation of 4 bit Vedic Multiplier using GDI technique on 28nm CMOS technology using Synopsys Custom Compiler and Synopsys Primewave.

# Table of Contents
- [Abstract](https://github.com/Rahesh31/4-bit-Vedic-Multiplier/blob/main/README.md#abstract)
- [Tools Used](https://github.com/Rahesh31/4-bit-Vedic-Multiplier/blob/main/README.md#tools-used)
- [GDI Technique](https://github.com/Rahesh31/4-bit-Vedic-Multiplier/blob/main/README.md#gdi-technique)
- [Vedic Multiplier]()
- [Reference Circuit]()
- [GDI Inverter Gate]()
- [GDI EXOR Gate]()
- [GDI EXNOR Gate]()
- [GDI NAND Gate]()
- [GDI NOR Gate]()
- [GDI AND Gate]()
- [GDI MUX_2x1]()
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

  Gate diffusion Input (GDI) technique. Using this technique one can design a digital circuit with low power consumption. The number of transistors used in the circuit is
minimum hence they are used by the circuit is reduced as well as the delay and power consumption. Compared to the existing conventional designs GDI technique is much efficient.
Even though the technique has many advantages, there are few drawbacks which can be rectified. A GDI cell consists of 3 inputs. One input G which is the gate input for PMOS and
NMOS, P which is the input to source/drain of PMOS and N which is the input to source/drain of NMOS.
  The major benefit of using GDI technique is that a large number of functions can be implemented using this technique. We can see from the table 2 that GDI can be used for
implementing various designs such as MUX, AND, OR etc. The main drawback of GDI technique is that of swing degradation. This is due to threshold loss and to eliminate this we
have to use silicon on insulator or twin-well process to realize, which is very expensive. 
<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155850948-68074f04-f1e6-4336-9c42-93fbfa1b2100.png"> <br>
</p>
<p align="center">
  <b> Basic GDI Cell </b> <br>
</p>
<p align="center">
  <img align="center" src="https://user-images.githubusercontent.com/54439300/155850955-8e8cabae-b10c-4bac-a258-d1dd97dd9223.png"> <br>
</p>
<p align="center">
  <b> Implementation of Boolean circuit using GDI </b> <br>
</p>

# Vedic Multiplier

  Vedic Multiplication has proven itself to be one of the efficient and simplified way of multiplying technique, it is an ancient technique and follows a unique set of steps to
give required product.it is a robust technique and gives accurate arithmetic results.

Steps involved in the  Multiplication of 101 by 110 is explained below:
  1.First need to take right hand digits from both multiplicand and multiplier. Then multiply them together. Then we will get the LSB digit of the answer.
  2. Multiply second bit of the top number with the LSB of the bottom number. Then multiply LSB of the top number with the second bit of the bottom number. Then add them
  together to get second bit of the answer.
  3. Multiply third bit of the bottom with the LSB of the top number, second bit of the bottom number with the second bit of the top number, LSB of the bottom number with the
  third bit of the top number. Then add them together to get third bit of the answer.
  4. This step is same as second step, just move one place to the left. We will multiply the second digit of one number by the MSB of the other number.
  5. Finally multiply the LSB of the top and bottom number to get final product.
<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155850962-07d71dcf-ab2a-4508-8cb2-cc3ca481dd86.png"> <br>
</p>
<p align="center">
  <b> Multiplication of two 4-bit numbers using urdhvatiryakbhyam </b> <br>
</p>

# Reference Circuit

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155850973-adea210c-366a-49fc-a0c3-8b65bc75c646.png"> <br>
</p>
<p align="center">
  <b> 4-bit Vedic Multiplier Circuit </b> <br>
</p>

# GDI Inverter Gate

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155852709-d84adc05-ab04-4ac6-9d4c-db89ffa0c5ce.png"> <br>
</p>

# GDI EXOR Gate

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155852802-994e6f5c-641e-43e9-8466-453f7eec0bf1.png"> <br>
</p>

# GDI EXNOR Gate

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155852901-1e7bdec3-43c0-4c5e-8379-246b42faf8e3.png"> <br>
</p>

# GDI NAND Gate

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155853101-47c7d0a2-7861-45f7-8b0a-7c555202501e.png"> <br>
</p>

# GDI NOR Gate

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155853183-c798b780-860d-4160-914b-f3ddbd10b98d.png"> <br>
</p>

# GDI AND Gate

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155853254-f41ef122-ad8b-4059-977f-be24326a076d.png"> <br>
</p>

# GDI MUX_2x1

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155853291-e3d426e3-39fe-4168-872d-1268b60b99aa.png"> <br>
</p>

# GDI Half Adder

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155853374-2009ff1f-f84c-4505-8d16-0e4e7e1dab38.png"> <br>
</p>

# GDI Full Adder

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155853422-961f5cd0-de33-45aa-9862-e9a826da669d.png"> <br>
</p>

# GDI 4-bit Vedic Multiplier

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155854044-d2aff17b-cff7-4dd7-8093-2583e46ca640.png"> <br>
</p>

# Simulations

# Transient Analysis

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155855198-dfea5acb-f505-4889-831c-497f9ab527b7.png"> <br>
</p>
<p align="center">
  <b> Testbench Schematic for Transient Analysis </b> <br>
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155855388-14e686b1-172c-4f27-8e12-d356eef5b247.png"> <br>
</p>
<p align="center">
  <b> Transient Analysis Inputs </b> <br>
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155855369-c4e4eeab-d86e-415d-b1f6-3912029e9a5b.png"> <br>
</p>
<p align="center">
  <b> Transient Analysis Outputs </b> <br>
</p>

# DC Analysis

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155855768-3ed27afa-6efd-4649-8922-fd203d157972.png"> <br>
</p>
<p align="center">
  <b> Testbench Schematic for DC Analysis </b> <br>
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155855729-27df082a-1f35-42ce-abfa-0e102fa951ba.png"> <br>
</p>
<p align="center">
  <b> DC Analysis results </b> <br>
</p>

# Netlist
