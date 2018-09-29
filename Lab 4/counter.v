`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:05 04/21/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(count, reset, clock);
output reg [15:0] count = 16'b0;
input reset, clock;

always@(posedge clock or posedge reset)
begin
	if(reset)
	begin
		count = 16'b0; 
	end
	else
	begin
		count = count + 1'b1; 
		end
end
endmodule
