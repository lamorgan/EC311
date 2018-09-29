`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:12 04/21/2017 
// Design Name: 
// Module Name:    seven_alternate 
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
module seven_alternate(AN, clk, reset, big_bin, small_bin);
	input clk;
	input reset;
	input [15:0] big_bin;
	output reg [3:0] small_bin;
	output reg [3:0] AN;
	
	reg [1:0] count=0;
	
	always @(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			AN = 0;
			small_bin = 0;
			count = 0;
		end
		else
		begin
			count = count + 1'b1;
			case (count)
				2'b00: begin
					AN = 4'b1110;
					small_bin = big_bin[3:0];
					end
				2'b01: begin
					AN = 4'b1101;
					small_bin = big_bin[7:4];
					end
				2'b10: begin
					AN = 4'b1011;
					small_bin = big_bin[11:8];
					end
				2'b11: begin
					AN = 4'b0111;
					small_bin = big_bin[15:12];
					end
			endcase
		end
	end
endmodule

