`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:00 04/25/2017 
// Design Name: 
// Module Name:    mux 
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
module mux(switch, clean, clock, c, clk);
output reg c;
input switch;
input clean;
input clock;
input clk;

always@(posedge clk)
	case(switch)
		1'b0: c = clean;
		1'b1: c = clock;
	endcase
	
endmodule
