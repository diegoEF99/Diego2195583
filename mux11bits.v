`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2023 13:35:25
// Design Name: 
// Module Name: mux11bits
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


module mux11bits#(parameter n = 12)(
input [n-1:0]A,
    input [n-1:0]B,
    input S,
    output [n-1:0] F
    );
    
    assign F = (S)?A:B;
endmodule


