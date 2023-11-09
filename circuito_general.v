`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 22:23:48
// Design Name: 
// Module Name: circuito_general
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


module circuito_general(
input start,
input CLK,
input CLK2, //mas rapido
input RESET,
input CE,

input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,//PRIMER DATO 32BITS
input B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31,//SEGUNDO DATO 32BITS
input C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31,//TERCER DATO 32BITS

output AA0,AA1,AA2,AA3,AA4,AA5,AA6,AA7,AA8,AA9,AA10,AA11,AA12,AA13,AA14,AA15,AA16,AA17,AA18,AA19,AA20,AA21,AA22,AA23,
output AA24,AA25,AA26,AA27,AA28,AA29,AA30,AA31,AA32,AA33
    );
wire [4:0]con1;
wire con5;
wire con6;
wire con7;
wire con8;
wire con9;
wire con10;
wire con11;
wire con12;
wire con13;
wire con14;
wire con15;
wire con16;
wire con17;
wire con18;
wire con19;
wire con20;
wire con21;
wire con22;
wire con23;
wire con24;
wire con25;
wire con26;
wire con27;
wire con28;
wire con29;
wire con30;
wire con31;
wire con32;
wire con33;
wire con34;
wire con35;
wire con36;
wire con37;
wire con38;
wire con39;
wire con40;
wire con41;
wire con42;
wire con43;
wire con44;
wire con45;
wire con46;
wire con47;
wire con48;
wire con49;
wire con50;
wire con51;
wire con52;
wire conS1;
wire conS2;
wire conA;
wire conA1;
wire conA2;
wire conB;
wire conB1;
wire conB2;
wire conC;
wire conC1;
wire conC2;
wire conE1;
wire conE2;

selec_contador SC(
.CLK(CLK), .start(start), .CE(CE), .RESET(RESET), .cnt2(con1)
);
/////////////////////////////////////////////////////////////////////////
multiplexor_32_bits M32_A(
.A1(A0),.A2(A1),.A3(A2),.A4(A3),.A5(A4),.A6(A5),.A7(A6),.A8(A7),.A9(A8),.A10(A9),.A11(A10),.A12(A11),.A13(A12),.A14(A13),.A15(A14),
.A16(A15),.A17(A16),.A18(A17),.A19(A18),.A20(A19),.A21(A20),.A22(A21),.A23(A22),.A24(A23),.A25(A24),.A26(A25),.A27(A26),.A28(A27),
.A29(A28),.A30(A29),.A31(A30),.A32(A31),.S(con1),.F(conA)
);

multiplexor_32_bits M32_B(
.A1(B0),.A2(B1),.A3(B2),.A4(B3),.A5(B4),.A6(B5),.A7(B6),.A8(B7),.A9(B8),.A10(B9),.A11(B10),.A12(B11),.A13(B12),.A14(B13),.A15(B14),
.A16(B15),.A17(B16),.A18(B17),.A19(B18),.A20(B19),.A21(B20),.A22(B21),.A23(B22),.A24(B23),.A25(B24),.A26(B25),.A27(B26),.A28(B27),
.A29(B28),.A30(B29),.A31(B30),.A32(B31),.S(con1),.F(conB)
);

multiplexor_32_bits M32_C(
.A1(C0),.A2(C1),.A3(C2),.A4(C3),.A5(C4),.A6(C5),.A7(C6),.A8(C7),.A9(C8),.A10(C9),.A11(C10),.A12(C11),.A13(C12),.A14(C13),.A15(C14),
.A16(C15),.A17(C16),.A18(C17),.A19(C18),.A20(C19),.A21(C20),.A22(C21),.A23(C22),.A24(C23),.A25(C24),.A26(C25),.A27(C26),.A28(C27),
.A29(C28),.A30(C29),.A31(C30),.A32(C31),.S(con1),.F(conC)
);
////////////////////////////////////////
assign conS1=(start==1'd1);
assign conE1=(con1==5'd31);

Registro1bit RRE(
.DATA_IN(conE1),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(conE2)
 ); 
muxsolo1bit MMME(
.A(conE2),.B(conE1),.S(conE1),.F(conS2)
);
 

muxsolo1bit MMM1(
.A(conC),.B(1'b0),.S(conS1),.F(conC1)
);
muxsolo1bit MMM2(
.A(1'b0),.B(conC1),.S(conS2),.F(conC2)
);

muxsolo1bit MMM3(
.A(conB),.B(1'b0),.S(conS1),.F(conB1)
);
muxsolo1bit MMM4(
.A(1'b0),.B(conB1),.S(conS2),.F(conB2)
);

muxsolo1bit MMM5(
.A(conA),.B(1'b0),.S(conS1),.F(conA1)
);
muxsolo1bit MMM6(
.A(1'b0),.B(conA1),.S(conS2),.F(conA2)
);
//////////////////////////////////////////////////////////////////////////////////
sumador_1bit_completo SBC(
.A(conA2),.B(conB2),.C(conC2),.Ca1(con9),.Ca2(con8),.salida(con12),.salidaAcarreo1(con11),.salidaAcarreo2(con10)
);



Registro1bit RR1(
.DATA_IN(start),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con13)
 ); 
Registro1bit RR2(
.DATA_IN(con6),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con7)
 );  
Registro1bit RR3(
.DATA_IN(con7),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con8)
 ); 
Registro1bit RR4(
.DATA_IN(con5),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con9)
 ); 

muxsolo1bit MM1(
.A(con10),
.B(5'b0),
.S(con13),
.F(con6)
);
muxsolo1bit MM2(
.A(con11),
.B(5'b0),
.S(con13),
.F(con5)
);

selector_de_memoria SM(
.start(start),
.Wm(con14),
.CLK(CLK),
.CE(CE),
.RESET(RESET)
    );

memoria memo1(
.CLK2(CLK2),.salida(con12),.Wm(con14),.CE(CE),.RESET(RESET),.finsalida(AA0)
);
memoria memo2(
.CLK2(CLK2),.salida(con12),.Wm(con15),.CE(CE),.RESET(RESET),.finsalida(AA1)
);
memoria memo3(
.CLK2(CLK2),.salida(con12),.Wm(con16),.CE(CE),.RESET(RESET),.finsalida(AA2)
);
memoria memo4(
.CLK2(CLK2),.salida(con12),.Wm(con17),.CE(CE),.RESET(RESET),.finsalida(AA3)
);
memoria memo5(
.CLK2(CLK2),.salida(con12),.Wm(con18),.CE(CE),.RESET(RESET),.finsalida(AA4)
);
memoria memo6(
.CLK2(CLK2),.salida(con12),.Wm(con19),.CE(CE),.RESET(RESET),.finsalida(AA5)
);
memoria memo7(
.CLK2(CLK2),.salida(con12),.Wm(con20),.CE(CE),.RESET(RESET),.finsalida(AA6)
);
memoria memo8(
.CLK2(CLK2),.salida(con12),.Wm(con21),.CE(CE),.RESET(RESET),.finsalida(AA7)
);
memoria memo9(
.CLK2(CLK2),.salida(con12),.Wm(con22),.CE(CE),.RESET(RESET),.finsalida(AA8)
);
memoria memo10(
.CLK2(CLK2),.salida(con12),.Wm(con23),.CE(CE),.RESET(RESET),.finsalida(AA9)
);
memoria memo11(
.CLK2(CLK2),.salida(con12),.Wm(con24),.CE(CE),.RESET(RESET),.finsalida(AA10)
);
memoria memo12(
.CLK2(CLK2),.salida(con12),.Wm(con25),.CE(CE),.RESET(RESET),.finsalida(AA11)
);
memoria memo13(
.CLK2(CLK2),.salida(con12),.Wm(con26),.CE(CE),.RESET(RESET),.finsalida(AA12)
);
memoria memo14(
.CLK2(CLK2),.salida(con12),.Wm(con27),.CE(CE),.RESET(RESET),.finsalida(AA13)
);
memoria memo15(
.CLK2(CLK2),.salida(con12),.Wm(con28),.CE(CE),.RESET(RESET),.finsalida(AA14)
);
memoria memo16(
.CLK2(CLK2),.salida(con12),.Wm(con29),.CE(CE),.RESET(RESET),.finsalida(AA15)
);
memoria memo17(
.CLK2(CLK2),.salida(con12),.Wm(con30),.CE(CE),.RESET(RESET),.finsalida(AA16)
);
memoria memo18(
.CLK2(CLK2),.salida(con12),.Wm(con31),.CE(CE),.RESET(RESET),.finsalida(AA17)
);
memoria memo19(
.CLK2(CLK2),.salida(con12),.Wm(con32),.CE(CE),.RESET(RESET),.finsalida(AA18)
);
memoria memo20(
.CLK2(CLK2),.salida(con12),.Wm(con33),.CE(CE),.RESET(RESET),.finsalida(AA19)
);
memoria memo21(
.CLK2(CLK2),.salida(con12),.Wm(con34),.CE(CE),.RESET(RESET),.finsalida(AA20)
);
memoria memo22(
.CLK2(CLK2),.salida(con12),.Wm(con35),.CE(CE),.RESET(RESET),.finsalida(AA21)
);
memoria memo23(
.CLK2(CLK2),.salida(con12),.Wm(con36),.CE(CE),.RESET(RESET),.finsalida(AA22)
);
memoria memo24(
.CLK2(CLK2),.salida(con12),.Wm(con37),.CE(CE),.RESET(RESET),.finsalida(AA23)
);
memoria memo25(
.CLK2(CLK2),.salida(con12),.Wm(con38),.CE(CE),.RESET(RESET),.finsalida(AA24)
);
memoria memo26(
.CLK2(CLK2),.salida(con12),.Wm(con39),.CE(CE),.RESET(RESET),.finsalida(AA25)
);
memoria memo27(
.CLK2(CLK2),.salida(con12),.Wm(con40),.CE(CE),.RESET(RESET),.finsalida(AA26)
);
memoria memo28(
.CLK2(CLK2),.salida(con12),.Wm(con41),.CE(CE),.RESET(RESET),.finsalida(AA27)
);
memoria memo29(
.CLK2(CLK2),.salida(con12),.Wm(con42),.CE(CE),.RESET(RESET),.finsalida(AA28)
);
memoria memo30(
.CLK2(CLK2),.salida(con12),.Wm(con43),.CE(CE),.RESET(RESET),.finsalida(AA29)
);
memoria memo31(
.CLK2(CLK2),.salida(con12),.Wm(con44),.CE(CE),.RESET(RESET),.finsalida(AA30)
);
memoria memo32(
.CLK2(CLK2),.salida(con12),.Wm(con45),.CE(CE),.RESET(RESET),.finsalida(AA31)
);
memoria memo33(
.CLK2(CLK2),.salida(con11),.Wm(con46),.CE(CE),.RESET(RESET),.finsalida(AA32)
);
memoria memo34(
.CLK2(CLK2),.salida(con10),.Wm(con47),.CE(CE),.RESET(RESET),.finsalida(AA33)
);

Registro1bit RRR1(
.DATA_IN(con14),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con15)
);
Registro1bit RRR2(
.DATA_IN(con15),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con16)
);
Registro1bit RRR3(
.DATA_IN(con16),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con17)
);
Registro1bit RRR4(
.DATA_IN(con17),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con18)
);
Registro1bit RRR5(
.DATA_IN(con18),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con19)
);
Registro1bit RRR6(
.DATA_IN(con19),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con20)
);
Registro1bit RRR7(
.DATA_IN(con20),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con21)
);
Registro1bit RRR8(
.DATA_IN(con21),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con22)
);
Registro1bit RRR9(
.DATA_IN(con22),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con23)
);
Registro1bit RRR10(
.DATA_IN(con23),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con24)
);
Registro1bit RRR11(
.DATA_IN(con24),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con25)
);
Registro1bit RRR12(
.DATA_IN(con25),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con26)
);
Registro1bit RRR13(
.DATA_IN(con26),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con27)
);
Registro1bit RRR14(
.DATA_IN(con27),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con28)
);
Registro1bit RRR15(
.DATA_IN(con28),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con29)
);
Registro1bit RRR16(
.DATA_IN(con29),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con30)
);
Registro1bit RRR17(
.DATA_IN(con30),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con31)
);
Registro1bit RRR18(
.DATA_IN(con31),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con32)
);
Registro1bit RRR19(
.DATA_IN(con32),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con33)
);
Registro1bit RRR20(
.DATA_IN(con33),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con34)
);
Registro1bit RRR21(
.DATA_IN(con34),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con35)
);
Registro1bit RRR22(
.DATA_IN(con35),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con36)
);
Registro1bit RRR23(
.DATA_IN(con36),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con37)
);
Registro1bit RRR24(
.DATA_IN(con37),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con38)
);
Registro1bit RRR25(
.DATA_IN(con38),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con39)
);
Registro1bit RRR26(
.DATA_IN(con39),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con40)
);
Registro1bit RRR27(
.DATA_IN(con40),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con41)
);
Registro1bit RRR28(
.DATA_IN(con41),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con42)
);
Registro1bit RRR29(
.DATA_IN(con42),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con43)
);
Registro1bit RRR30(
.DATA_IN(con43),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con44)
);
Registro1bit RRR31(
.DATA_IN(con44),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con45)
);
Registro1bit RRR32(
.DATA_IN(con45),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con46)
);
Registro1bit RRR33(
.DATA_IN(con46),.CE(CE),.CLK(CLK),.RESET(RESET),.DATA_OUT(con47)
);







 
endmodule
