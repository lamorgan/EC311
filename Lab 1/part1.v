`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:38 02/24/2017 
// Design Name: 
// Module Name:    part1 
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
module part1(S, F, V, A, B, M);
output [3:0] S;
output F;
output V;
input [3:0] A, B;
input M;
wire [4:1] C;

fulladder FA1(A[0], B[0], C[1], S[0], M, M);
fulladder FA2(A[1], B[1], C[2], S[1], C[1], M);
fulladder FA3(A[2], B[2], C[3], S[2], C[2], M);
fulladder FA4(A[3], B[3], C[4], S[3], C[3], M);


assign F=C[4];
assign V=(C[3]^C[4]);

endmodule
