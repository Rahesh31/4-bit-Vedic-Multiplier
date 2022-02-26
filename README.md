# Design and Simulation of 4 bit Vedic Multiplier using GDI technique on 28nm CMOS technology

This repository presents the design and simulation of 4 bit Vedic Multiplier using GDI technique on 28nm CMOS technology using Synopsys Custom Compiler and Synopsys Primewave.

# Table of Contents
- [Abstract](https://github.com/Rahesh31/4-bit-Vedic-Multiplier/blob/main/README.md#abstract)
- [Tools Used](https://github.com/Rahesh31/4-bit-Vedic-Multiplier/blob/main/README.md#tools-used)
- [GDI Technique](https://github.com/Rahesh31/4-bit-Vedic-Multiplier/blob/main/README.md#gdi-technique)
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

  Gate diffusion Input (GDI) technique. Using this technique one can design a digital circuit with low power consumption. The number of transistors used in the circuit is
minimum hence they are used by the circuit is reduced as well as the delay and power consumption. Compared to the existing conventional designs GDI technique is much efficient.
Even though the technique has many advantages, there are few drawbacks which can be rectified. A GDI cell consists of 3 inputs. One input G which is the gate input for PMOS and
NMOS, P which is the input to source/drain of PMOS and N which is the input to source/drain of NMOS.
  The major benefit of using GDI technique is that a large number of functions can be implemented using this technique. We can see from the table 2 that GDI can be used for
implementing various designs such as MUX, AND, OR etc. The main drawback of GDI technique is that of swing degradation. This is due to threshold loss and to eliminate this we
have to use silicon on insulator or twin-well process to realize, which is very expensive. 
<p>
  <img align="center" src="https://user-images.githubusercontent.com/54439300/155850948-68074f04-f1e6-4336-9c42-93fbfa1b2100.png">
  <b align="center" Basic GDI Cell>
  <img align="center" src="https://user-images.githubusercontent.com/54439300/155850955-8e8cabae-b10c-4bac-a258-d1dd97dd9223.png">
  <b align="center" Implementation of Boolean circuit using GDI>
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
  <img src="https://user-images.githubusercontent.com/54439300/155850962-07d71dcf-ab2a-4508-8cb2-cc3ca481dd86.png"/>
  <b Multiplication of two 4-bit numbers using urdhvatiryakbhyam.>
</p>

#Reference Circuit

<p align="center">
  <img src="https://user-images.githubusercontent.com/54439300/155850973-adea210c-366a-49fc-a0c3-8b65bc75c646.png"/>
  <b 4-bit Vedic Multiplier Circuit>
</p>

