`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:00 03/21/2017 
// Design Name: 
// Module Name:    Multiplier 
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
module Multiplier(Y, A, B);
output [7:0] Y;
input [3:0] A, B;
wire [3:0] d,e;
wire [7:0] f,g,h;

assign Y = A * B;


endmodule
