`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:04 02/28/2017 
// Design Name: 
// Module Name:    output_carry 
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
module output_carry(Z2, Z4, Z8, K, OutC);
input Z2, Z4, Z8, K;
output OutC;

assign OutC= (Z8 & Z4) | (Z8 & Z2) | K;

endmodule
