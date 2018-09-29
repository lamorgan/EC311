`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:53 04/11/2017 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(
	output reg clean = 1'b0,
	input clock,
	input trigger);
	
	reg output_exist = 1'b0;
	reg [31:0] deb_count = 0;

always@(posedge clock)
	if(trigger == 1)
	begin 
		if(output_exist == 0)
		begin
			if (deb_count == 1000000)
			begin
				clean = 1'b1; 
				output_exist = 1'b1;
				deb_count = 32'b0;
			end 
			else
			begin 
				deb_count = deb_count + 1'b1;
			end
		end
		else
		begin
			clean = 1'b0;
		end
	end
	else
	begin
		output_exist = 1'b0;
		deb_count = 32'b0;
	end

	

endmodule
