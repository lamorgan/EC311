`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:37 03/21/2017 
// Design Name: 
// Module Name:    bcd_adder 
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
module bcd_adder(Y, OutC, A, B);
output [7:0] Y;
output OutC;
input [3:0] A, B;
wire [7:0] Z,X;
wire K;
wire [3:0] d, f;
wire non;


bi_adder Z_0(Z, K, A, B, 1'b0);

C_Out cout(Z[1], Z[2], Z[3], K, OutC);

assign d = {1'b0,OutC,OutC,1'b0};
assign f = {Z[3], Z[2], Z[1], Z[0]};

bi_adder S_0(X, non, f, d, 1'b0);
assign Y[3:0] = {X[3], X[2], X[1], X[0]};
assign Y[7:5] = 3'b0;
assign Y[4] = OutC;

endmodule
