`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:48 04/04/2017 
// Design Name: 
// Module Name:    Counter 
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
module Counter(count, reset, trigger, clock);
output reg [7:0] count = 8'b0;
input reset, clock, trigger;

always@(posedge clock or posedge reset)
begin
	if(reset)
	begin
		count = 8'b0; 
	end
	else if(trigger)
	begin
		count = count + 1'b1; 
		end
end
endmodule
