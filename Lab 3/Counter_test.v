`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:28:34 04/11/2017
// Design Name:   Counter
// Module Name:   X:/My Documents/311/Lab3/Counter_test.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_test;

	// Inputs
	reg reset;
	reg clock;
	reg trigger;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.count(count), 
		.reset(reset), 
		.trigger(trigger),
		.clock(clock)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		trigger = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
   end

		// Add stimulus here
	always 
	#1 clock = !clock;

	always 
	#20 trigger = !trigger;

      
endmodule

