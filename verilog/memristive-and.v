`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2023 01:50:18 PM
// Design Name: 
// Module Name: memristive-and
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memristive_and(out, a, b);
    input a, b;
    output out;
    wire mid;
    
    memristor memA (a, mid);
    memristor memB (b, mid);
    memristor final (mid, out);
endmodule
