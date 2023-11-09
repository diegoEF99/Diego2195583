`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 15:40:18
// Design Name: 
// Module Name: sumador_1bit_completo
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


module sumador_1bit_completo(
input A,
input B,
input C,
input Ca1,
input Ca2,
output salida,
output salidaAcarreo1,
output salidaAcarreo2,
output salidaNada
    );
wire Z1;
wire Z2;
wire Z3;
wire Es;
wire Dc;
wire Gs;
wire Fc;
wire Is;
wire Hc;
wire Jc;
wire Mc;
wire Lc;

assign Z1=(~A&B)|(A&~B); // xor
assign Z2= A&B; // and
assign Es=(~Z1&C)|(Z1&~C);
assign Z3= C&Z1;
assign Gs=(~Ca1&Es)|(Ca1&~Es);
assign Fc= Ca1&Es;
assign Dc= Z2|Z3;
assign Is=(~Fc&Dc)|(Fc&~Dc);
assign Hc= Fc&Dc;
assign salida=(~Ca2&Gs)|(Ca2&~Gs);
assign Jc= Ca2&Gs;
assign salidaAcarreo1=(~Jc&Is)|(Jc&~Is);
assign Lc= Jc&Is;
assign salidaAcarreo2=(~Lc&Hc)|(Lc&~Hc);
assign salidaNada=Lc&Hc;



endmodule
