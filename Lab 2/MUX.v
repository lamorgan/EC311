`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:06 03/28/2017 
// Design Name: 
// Module Name:    MUX 
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
module MUX(Y, A0, A1, A2, A3, S);
output reg [7:0] Y;
input [7:0] A0, A1, A2, A3;
input [1:0] S;

always @(A0, A1, A2, A3, S)
	case(S)
	2'b00: Y = A0;
	2'b01: Y = A1;
	2'b10: Y = A2;
	default : Y = A3;
	endcase

endmodule
