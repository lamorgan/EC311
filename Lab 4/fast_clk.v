`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:44 04/25/2017 
// Design Name: 
// Module Name:    fast_clk 
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
// 1 kHz
module fast_clk(in_clk, out_clk);
	input in_clk;
	output reg out_clk;
	
	reg [32:0] count=0;
	
	always@(posedge in_clk)
	begin
		count = count + 1'b1;
		if(count == 40000)
		//if(count == 4'b1000)
		begin
			out_clk <=1;
			count = 0;
		end
		else
			out_clk<=0;
	end
endmodule
