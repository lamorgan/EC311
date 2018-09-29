`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:18 03/21/2017 
// Design Name: 
// Module Name:    bi_adder 
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
module bi_adder(Y, Cout, A, B, M);
output [7:0] Y;
output Cout;
input [3:0] A, B;
input M;
wire [4:1] C;

adder FA1(A[0], B[0], C[1], Y[0], 1'b0, 1'b0);
adder FA2(A[1], B[1], C[2], Y[1], C[1], 1'b0);
adder FA3(A[2], B[2], C[3], Y[2], C[2], 1'b0);
adder FA4(A[3], B[3], C[4], Y[3], C[3], 1'b0);

assign Y[7:5] = 3'b0;
assign Y[4] = Cout;

assign Cout=C[4];

endmodule
