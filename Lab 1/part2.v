`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:04 02/28/2017 
// Design Name: 
// Module Name:    part2 
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
module part2(S, OutC, A, B);
output [3:0] S;
output OutC;
input [3:0] A, B;
wire [3:0] Z;
wire K;
wire [3:0] d;
wire non;
wire non2;
wire non3;



part1 Z_0(Z, K, non, A, B, 1'b0);

output_carry cout(Z[1], Z[2], Z[3], K, OutC);
assign d = {1'b0,OutC,OutC,1'b0};

part1 S_0(S, non2, non3, Z, d, 1'b0);




endmodule
