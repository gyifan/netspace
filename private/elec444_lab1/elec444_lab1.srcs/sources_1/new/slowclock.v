`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2014 08:24:13 AM
// Design Name: 
// Module Name: slowclock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/**
* This module is designed to create a "slow clock" counter
* 
**/

module slowclock (
input clock,
output slowClockValue
);

reg [15:0] counter = 16'b0;

always @(posedge clock)
begin 
	counter = counter + 16'b1;
end 

assign slowClockValue = counter[15];

endmodule 


