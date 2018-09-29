`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:11 04/11/2017
// Design Name:   debouncer
// Module Name:   X:/My Documents/311/Lab3/debounce_test.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debouncer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debounce_test;

	// Inputs
	reg clock;
	reg trigger;

	// Outputs
	wire clean;

	// Instantiate the Unit Under Test (UUT)
	debouncer uut (
		.clock(clock), 
		.trigger(trigger), 
		.clean(clean)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		trigger = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
	always 
	#1 clock = !clock;

	always 
	#20 trigger = !trigger;

endmodule

