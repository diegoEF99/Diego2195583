`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2023 13:37:06
// Design Name: 
// Module Name: Registro11bits
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


module Registro11bits#(parameter n = 12)(
    input [n-1:0] DATA_IN,
    input CE,
    input CLK,
    input RESET,
    output reg [n-1:0] DATA_OUT
    );
    
    always @ (posedge CLK)
   
      if (RESET) begin
    DATA_OUT <= {n{11'b0}};
  end  else if (CE) begin
    DATA_OUT <= DATA_IN;
  end

endmodule
