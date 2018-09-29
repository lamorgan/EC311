`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:20 02/28/2017 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(A, B, C1, S, C0, M);
output C1, S;
input A, B, C0, M;

assign S=(((B^M)^A)^C0);
assign C1= (((B^M)^A) & C0) | ((B^M) & A);


endmodule
