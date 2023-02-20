/* Generated by Yosys 0.24+10 (git sha1 3ebc50dee, clang 10.0.0-4ubuntu1 -fPIC -Os) */

(* hdlname = "\\memristive_and" *)
(* top =  1  *)
(* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:23.1-31.10" *)
module memristive_and(out, a, b);
  (* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:24.11-24.12" *)
  input a;
  wire a;
  (* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:24.14-24.15" *)
  input b;
  wire b;
  (* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:26.10-26.13" *)
  (* unused_bits = "0" *)
  wire mid;
  (* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:25.12-25.15" *)
  output out;
  wire out;
  (* module_not_derived = 32'd1 *)
  (* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:30.15-30.31" *)
  memristor \final  (
    .in(mid),
    .out(out)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:28.15-28.28" *)
  memristor memA (
    .in(a),
    .out(mid)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "./memrist-pim.srcs/sources_1/new/memristive-and.v:29.15-29.28" *)
  memristor memB (
    .in(b),
    .out(mid)
  );
endmodule
