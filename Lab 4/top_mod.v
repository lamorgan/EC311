`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:32 04/25/2017 
// Design Name: 
// Module Name:    top_mod 
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
module top_mod(clock, switch, trigger, reset, AN, seven);
	input trigger;
	input clock;
	input switch;
	input reset;
	output [3:0] AN;
	output [6:0] seven;
	wire [15:0] count;
	wire [3:0] small_bin;
	wire clean;
	wire fast_clock;
	wire slow_clock;
	wire c;
	
	debouncer deb(clean, clock, trigger);
	slow_clk clk_2(clock, slow_clock);
	
	mux m(switch, clean, slow_clock, c, clock);
	
	counter coun(count, reset, c);
	
	fast_clk clk_1(clock, fast_clock);
	
	seven_alternate sa(AN, fast_clock, reset, count, small_bin);
	binary_to_7 b7(seven, small_bin, AN);
	

endmodule
