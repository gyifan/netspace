`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2014 08:08:04 AM
// Design Name: 
// Module Name: guessCounter
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
* module guessCounter
* Purpose: The purpose of this module is to keep track of the number of guesses
* player 2 has made during the duration of a game.
* 
* Inputs:
*   reset - signal from reset button
*   enter - signal from enter button
*   isIncrementCount - signal from fsm indicating that the counter must increment
*   [5:0] countValue - stores the number of guesses player 2 has made. 
**/

module guessCounter (
    input clk,
    input reset,
    input enter,
    input isIncrementCount,
    output [5:0] countValue
);

reg [5:0] count_next = 6'b0;
reg [5:0] count = 6'b0;

always @(*)
begin 
    if (enter & isIncrementCount)
		count_next <= count + 1;
	else
		count_next <= count;
end

always @(posedge clk, posedge reset)
    if (reset)
        count <= 6'b0;
    else
        count <= count_next;
        
assign countValue = count;

endmodule 
