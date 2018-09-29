`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:48:50 04/25/2017
// Design Name:   top_mod
// Module Name:   X:/My Documents/311/Lab4/top_mod_test.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_mod_test;

	// Inputs
	reg trigger;
	reg clock;
	reg switch;
	reg reset;

	// Outputs
	wire [3:0] AN;
	wire [6:0] seven;

	// Instantiate the Unit Under Test (UUT)
	top_mod uut (
		.clock(clock), 
		.switch(switch), 
		.reset(reset), 
		.AN(AN), 
		.trigger(trigger),
		.seven(seven)
	);

	initial begin
		// Initialize Inputs
		trigger = 0;
		clock = 0;
		switch = 1;
		reset = 1;
		#5 reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  		always 
	#1 clock = !clock;

//	always 
//	#20 trigger = !trigger;
	
endmodule

