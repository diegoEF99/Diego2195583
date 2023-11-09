`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2023 15:08:30
// Design Name: 
// Module Name: registro
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


module Registro#(parameter n = 6)(
    input [n-1:0] DATA_IN,
    input CE,
    input CLK,
    input RESET,
    output reg [n-1:0] DATA_OUT
    );
    
    always @ (posedge CLK)
   
      if (RESET) begin
    DATA_OUT <= {n{1'b0}};
  end  else if (CE) begin
    DATA_OUT <= DATA_IN;
  end

endmodule
