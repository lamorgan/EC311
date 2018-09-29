`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:09:03 03/28/2017 
// Design Name: 
// Module Name:    adder 
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
module adder(A, B, C1, S, C0, M);
output C1, S;
input A, B, C0, M;

assign S=(((B^M)^A)^C0);
assign C1= (((B^M)^A) & C0) | ((B^M) & A);


endmodule
