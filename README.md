# memristive-pim
## Honors Research: Ivris Raymond

Redesigning FPGA BRAM fabric for use with the SPAR-2 Array Processor 

The github includes source files for memristor models as well as the HDL description of the PiM modules. 
Yosys can be used to synthesize the Verilog using blackboxes for the memristors, then we write to a SPICE 
circuit output. From there we can simulate the entire mixed-signal circuit in a SPICE simulator like LTSpice. 

Steps for Yosys Synthesis:
  1) Read verilog designs 
  2) define hierarchy 
  3) write ilang
  3) proc and opt the design 
  4) write_spice {output file name}
