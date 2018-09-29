`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:37 03/28/2017
// Design Name:   ALU
// Module Name:   X:/My Documents/311/Lab2/ALU_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg [1:0] S;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   
		always begin
		
		#1 {A,B,S}={A,B,S}+1'b1;
		
		end
		
endmodule

