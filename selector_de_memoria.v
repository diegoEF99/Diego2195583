`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 19:29:57
// Design Name: 
// Module Name: selector_de_memoria
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


module selector_de_memoria(
input start,
output Wm,
input CLK,
input CE,
input RESET
    );
wire[10:0]Wa;
wire[10:0]Wb;
wire[10:0]Wc;
wire[10:0]Wd;
wire[10:0]We;
wire[10:0]Wk;
wire Ws;
wire Wj;
assign Wa = Wd+1;

assign Ws=(Wd>=11'd1);
assign Wj=(Wd==11'd1);
assign Wc =11'b1;
assign Wm= Ws&Wj;

mux11bits#(11) M1(
.A(Wa),
.B(Wc),
.S(Ws),
.F(Wb)
);
mux11bits#(11) M2(
.A(Wb),
.B(11'b1),
.S(start),
.F(We)
); 

Registro11bits #(11) R(
.DATA_IN(We),
.CE(CE),
.CLK(CLK),
.RESET(RESET),
.DATA_OUT(Wd)
 );
 

endmodule
