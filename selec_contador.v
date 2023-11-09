`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2023 15:15:10
// Design Name: 
// Module Name: selec_contador
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

module selec_contador(
input CLK,
input start,
input CE,
input RESET,
output [4:0]cnt2
   );
   
wire [4:0]W1;
wire [4:0]W4;
wire [4:0]W8;
wire [4:0]W7;
wire WX;
wire salreg;
assign W1 = cnt2+1;

wire comp1;
assign comp1=(cnt2==5'd31);

mux1bit#(5) M1(
.A(cnt2),
.B(W1),
.S(comp1),
.F(W8)
);

mux1bit#(5) M2(
.A(W8),
.B(5'b0),
.S(salreg),
.F(W7)
);

muxsolo1bit M3(
.A(5'b1),
.B(5'b0),
.S(start),
.F(WX)
);

Registro1Bittt R2(
.DATA_IN(WX),
.CE(CE),
.CLK(CLK),
.RESET(RESET),
.DATA_OUT(salreg)
 );


Registro #(5) R1(
.DATA_IN(W7),
.CE(CE),
.CLK(CLK),
.RESET(RESET),
.DATA_OUT(cnt2)
 );
 

 
endmodule
