// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Feb 20 14:00:56 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog /home/ivris/memrist-pim/memrist-pim.v
// Design      : memristive_and
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module memristive_and
   (out,
    a,
    b);
  output out;
  input a;
  input b;

  wire a;
  wire a_IBUF;
  wire b;
  wire b_IBUF;
  wire mid;
  wire out;
  wire out_OBUF;

  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  (* black_box = "1" *) 
  memristor final
       (.in(mid),
        .out(out_OBUF));
  (* black_box = "1" *) 
  memristor memA
       (.in(a_IBUF),
        .out(mid));
  (* black_box = "1" *) 
  memristor memB
       (.in(b_IBUF),
        .out(mid));
  OBUF out_OBUF_inst
       (.I(out_OBUF),
        .O(out));
endmodule

module memristor
   (in,
    out);
  inout in;
  inout out;


endmodule
