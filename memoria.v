`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 18:25:05
// Design Name: 
// Module Name: memoria
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


module memoria(
input CLK2,
input salida,// es la salida que manda el sumador completo y entra a la memoria
input Wm,
input CE,
input RESET,
output finsalida
   );
wire Wz;

muxsolo1bit M1(
.A(salida),
.B(finsalida),
.S(Wm),
.F(Wz)
);

Registro1Bittt R2(
.DATA_IN(Wz),
.CE(CE),
.CLK(CLK2),
.RESET(RESET),
.DATA_OUT(finsalida)
 );

endmodule
