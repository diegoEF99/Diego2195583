`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2023 11:09:46
// Design Name: 
// Module Name: Registro1Bittt
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


module Registro1Bittt(
    input DATA_IN,
    input CE,
    input CLK,
    input RESET,
    output reg DATA_OUT
    );
    
    always @ (posedge CLK)
   
      if (RESET) begin
    DATA_OUT <= {1'b0};
  end  else if (CE) begin
    DATA_OUT <= DATA_IN;
  end

endmodule