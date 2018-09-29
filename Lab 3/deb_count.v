`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:54 04/18/2017 
// Design Name: 
// Module Name:    deb_count 
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
module deb_count(clock, trigger, reset, count);
output [7:0] count;
input reset, clock, trigger;

debouncer cle(clean, clock, trigger);
Counter one(count, reset, clean, clock);


endmodule
