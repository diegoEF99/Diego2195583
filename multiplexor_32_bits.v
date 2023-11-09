`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2023 13:09:45
// Design Name: 
// Module Name: multiplexor_32_bits
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


module multiplexor_32_bits(
    input A1, 
    input A2,
    input A3,
    input A4,
    input A5,
    input A6,
    input A7,
    input A8,
    input A9,
    input A10,
    input A11,
    input A12,
    input A13,
    input A14,
    input A15,
    input A16,
    input A17,
    input A18,
    input A19,
    input A20,
    input A21,
    input A22,
    input A23,
    input A24,
    input A25,
    input A26,
    input A27,
    input A28,
    input A29,
    input A30,
    input A31,
    input A32,
    output reg F,
    input [4:0] S
    );
    
    always@(*)
        case(S)
            5'b00000: F <= A1;
            5'b00001: F <= A2;
            5'b00010: F <= A3;
            5'b00011: F <= A4;
            5'b00100: F <= A5;
            5'b00101: F <= A6;
            5'b00110: F <= A7;
            5'b00111: F <= A8;
            5'b01000: F <= A9;
            5'b01001: F <= A10;
            5'b01010: F <= A11;
            5'b01011: F <= A12;
            5'b01100: F <= A13;
            5'b01101: F <= A14;
            5'b01110: F <= A15;
            5'b01111: F <= A16;
            5'b10000: F <= A17;
            5'b10001: F <= A18;
            5'b10010: F <= A19;
            5'b10011: F <= A20;
            5'b10100: F <= A21;
            5'b10101: F <= A22;
            5'b10110: F <= A23;
            5'b10111: F <= A24;
            5'b11000: F <= A25;
            5'b11001: F <= A26;
            5'b11010: F <= A27;
            5'b11011: F <= A28;
            5'b11100: F <= A29;
            5'b11101: F <= A30;
            5'b11110: F <= A31;
            default:  F <= A32;
       endcase
         
endmodule
