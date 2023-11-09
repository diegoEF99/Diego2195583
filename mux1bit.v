`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2023 15:03:56
// Design Name: 
// Module Name: mux1bit
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



module mux1bit#(parameter n = 5)(
input [n-1:0]A,
    input [n-1:0]B,
    input S,
    output [n-1:0] F
    );
    
    assign F = (S)?A:B;
endmodule




