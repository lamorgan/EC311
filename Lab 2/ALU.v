`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:15 03/28/2017 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(A, B, S, Y);
output [7:0] Y;
input [3:0] A, B;
input [1:0] S;
wire [7:0] A0, A1, A2, A3;
wire non, non1;

Buffer one(A0, A, B);
bi_adder two(A1, non, A, B, 1'b0);
bcd_adder three(A2, non1, A, B);
Multiplier four(A3, A, B);
	
MUX five(Y, A0, A1, A2, A3, S);

 
endmodule
