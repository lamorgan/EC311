`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:08 04/18/2017
// Design Name:   deb_count
// Module Name:   X:/My Documents/311/Lab3/deb_count_test.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: deb_count
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module deb_count_test;

	// Inputs
	reg clock;
	reg trigger;
	reg reset;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	deb_count uut (
		.clock(clock), 
		.trigger(trigger), 
		.reset(reset), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		trigger = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always 
	#1 clock = !clock;

	always 
	#20 trigger = !trigger;
      
endmodule

