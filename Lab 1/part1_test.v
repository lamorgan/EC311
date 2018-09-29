`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:03 02/28/2017
// Design Name:   part1
// Module Name:   X:/My Documents/311/lab1/part1_test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: part1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module part1_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg M;

	// Outputs
	wire [3:0] S;
	wire F;
	wire V;

	// Instantiate the Unit Under Test (UUT)
	part1 uut (
		.S(S), 
		.F(F), 
		.V(V), 
		.A(A), 
		.B(B), 
		.M(M)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		always begin
		
		#1 {A,B,M}={A,B,M}+1'b1;
		
		end
		
endmodule

