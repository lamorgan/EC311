`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:24 04/18/2017 
// Design Name: 
// Module Name:    binary_to_7 
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
module binary_to_7(seven, bin, AN);
	input [3:0] bin;
	output [3:0] AN;
	output reg [6:0] seven;
	
	always @(bin)
	begin
		case(bin)
			4'b0000: seven = 7'b1000000;
			4'b0001: seven = 7'b1111001;
			4'b0010: seven = 7'b0100100;
			4'b0011: seven = 7'b0110000;
			4'b0100:	seven = 7'b0011001;
			4'b0101: seven = 7'b0010010;
			4'b0110: seven = 7'b0000010;
			4'b0111: seven = 7'b1111000;
			4'b1000: seven = 7'b0000000;
			4'b1001: seven = 7'b0011000;
			4'b1010: seven = 7'b0001000;
			4'b1011: seven = 7'b0000011;
			4'b1100: seven = 7'b1000110;
			4'b1101: seven = 7'b0100001;
			4'b1110: seven = 7'b0000110;
			4'b1111:	seven = 7'b0001110;
		endcase
	end
endmodule
