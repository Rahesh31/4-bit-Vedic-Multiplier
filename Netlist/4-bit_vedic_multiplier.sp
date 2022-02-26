*Custom Compiler Version S-2021.09
*Sat Feb 26 19:02:10 2022

*.SCALE METER
*.LDD

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : nand_2_1
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt nand_2_1 A Bbar GND VDD Y
*.PININFO A:I Bbar:I GND:I VDD:I Y:O
MM1 Y A Bbar GND n105 w=0.1u l=0.03u nf=1 m=1
MM2 Y A VDD VDD p105 w=0.2u l=0.03u nf=1 m=1
.ends nand_2_1

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : inv
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt inv A GND VDD Y
*.PININFO A:I GND:I VDD:I Y:O
MM0 Y A GND GND n105 w=0.1u l=0.03u nf=1 m=1
MM1 Y A VDD VDD p105 w=0.2u l=0.03u nf=1 m=1
.ends inv

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : and_2_1
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt and_2_1 A B GND VDD Y
*.PININFO A:I B:I GND:I VDD:I Y:O
XI14 A net65 GND VDD net61 nand_2_1
XI13 net61 GND VDD Y inv
XI12 B GND VDD net65 inv
.ends and_2_1

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : xor_2_1
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt xor_2_1 A B GND VDD Y
*.PININFO A:I B:I GND:I VDD:I Y:O
MM0 Y A net16 GND n105 w=0.1u l=0.03u nf=1 m=1
MM1 Y A B VDD p105 w=0.2u l=0.03u nf=1 m=1
XI2 B GND VDD net16 inv
.ends xor_2_1

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : half_adder
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt half_adder A B Carry GND Sum VDD
*.PININFO A:I B:I Carry:O GND:I Sum:O VDD:I
XI0 A B GND VDD Sum xor_2_1
XI1 A B GND VDD Carry and_2_1
.ends half_adder

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : nor_2_1
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt nor_2_1 A Bbar GND VDD Y
*.PININFO A:I Bbar:I GND:I VDD:I Y:O
MM1 Y A GND GND n105 w=0.1u l=0.03u nf=1 m=1
MM0 Y A Bbar VDD p105 w=0.2u l=0.03u nf=1 m=1
.ends nor_2_1

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : mux_2_1
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt mux_2_1 A B GND Sel VDD Y
*.PININFO A:I B:I GND:I Sel:I VDD:I Y:O
MM0 Y Sel B GND n105 w=0.1u l=0.03u nf=1 m=1
MM1 Y Sel A VDD p105 w=0.2u l=0.03u nf=1 m=1
.ends mux_2_1

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : xnor_2_1
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt xnor_2_1 A B GND VDD Y
*.PININFO A:I B:I GND:I VDD:I Y:O
MM0 Y A B GND n105 w=0.1u l=0.03u nf=1 m=1
MM1 Y A net9 VDD p105 w=0.2u l=0.03u nf=1 m=1
XI2 B GND VDD net9 inv
.ends xnor_2_1

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : full_adder
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt full_adder A B Carry Cin GND Sum VDD
*.PININFO A:I B:I Carry:O Cin:I GND:I Sum:O VDD:I
XI0 A net59 GND VDD net14 nand_2_1
XI1 A net59 GND VDD net15 nor_2_1
XI6 net39 net40 GND Cin VDD net45 mux_2_1
XI2 net14 net15 GND Cin VDD net20 mux_2_1
XI10 B GND VDD net59 inv
XI7 net45 GND VDD Sum inv
XI3 net20 GND VDD Carry inv
XI4 A B GND VDD net39 xnor_2_1
XI5 A B GND VDD net40 xor_2_1
.ends full_adder

********************************************************************************
* Library          : aih_4bit_gdi_vedic_multiplier
* Cell             : 4bit_vedic_multiplier
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt 4bit_vedic_multiplier A0 A1 A2 A3 B0 B1 B2 B3 GND P0 P1 P2 P3 P4 P5 P6
+ P7 VDD
*.PININFO A0:I A1:I A2:I A3:I B0:I B1:I B2:I B3:I GND:I P0:O P1:O P2:O P3:O P4:O
*.PININFO P5:O P6:O P7:O VDD:I
XI15 A3 B3 GND VDD 3%46%3 and_2_1
XI14 A3 B2 GND VDD 3%46%2 and_2_1
XI13 A3 B1 GND VDD 3%46%1 and_2_1
XI12 A3 B0 GND VDD 3%46%0 and_2_1
XI11 A2 B3 GND VDD 2%46%3 and_2_1
XI10 A2 B2 GND VDD 2%46%2 and_2_1
XI9 A2 B1 GND VDD 2%46%1 and_2_1
XI8 A2 B0 GND VDD 2%46%0 and_2_1
XI7 A1 B3 GND VDD 1%46%3 and_2_1
XI6 A1 B2 GND VDD 1%46%2 and_2_1
XI5 A1 B1 GND VDD 1%46%1 and_2_1
XI4 A1 B0 GND VDD 1%46%0 and_2_1
XI3 A0 B3 GND VDD 0%46%3 and_2_1
XI2 A0 B2 GND VDD 0%46%2 and_2_1
XI1 A0 B1 GND VDD 0%46%1 and_2_1
XI0 A0 B0 GND VDD P0 and_2_1
XI23 net139 net140 net159 GND net147 VDD half_adder
XI20 net119 3%46%0 net146 GND net171 VDD half_adder
XI18 net106 net107 net125 GND P2 VDD half_adder
XI16 0%46%1 1%46%0 net106 GND P1 VDD half_adder
XI27 net149 3%46%3 P7 net168 GND P6 VDD full_adder
XI26 net159 net160 net168 net161 GND P5 VDD full_adder
XI25 net152 2%46%3 net149 3%46%2 GND net161 VDD full_adder
XI24 net145 net146 net160 net147 GND P4 VDD full_adder
XI22 1%46%3 2%46%2 net152 3%46%1 GND net140 VDD full_adder
XI21 net125 net171 net145 net126 GND P3 VDD full_adder
XI19 0%46%3 1%46%2 net139 2%46%1 GND net119 VDD full_adder
XI17 0%46%2 1%46%1 net126 2%46%0 GND net107 VDD full_adder
.ends 4bit_vedic_multiplier


