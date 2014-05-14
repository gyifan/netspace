`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge, Tom Ludwig
// 
// Create Date: 01/23/2014 08:24:13 AM
// Design Name: Number Guess Game
// Module Name: slowclock
// Project Name: Advanced Digital Design
// Target Devices: ZedBoard
// Tool Versions: Vivado 2013.4
// Description: 
//      This module is designed to slow down the 100 MHz PL clock by a factor of
// 65536. This slow clock output will be used as the clock source of the debouncer
// and time multiplexed 7-segment display controller.
// 
// Dependencies: 
//      PL clock 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: n/a
// 
//////////////////////////////////////////////////////////////////////////////////

module slowclock #(
    parameter LENGTH = 16
)(
    input clock,
    output slowClockValue
);

reg [LENGTH-1:0] counter = 0; // clock counter

always @(posedge clock)
begin 
	counter = counter + 1; // increment counter every clock cycle
end 

assign slowClockValue = counter[LENGTH-1];

endmodule 


