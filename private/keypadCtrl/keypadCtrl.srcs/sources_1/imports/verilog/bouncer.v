`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge, Tom Ludwig
// 
// Create Date: 01/23/2014 08:24:13 AM
// Design Name: Number Guess Game
// Module Name: debouncer
// Project Name: Advanced Digital Design
// Target Devices: ZedBoard
// Tool Versions: Vivado 2013.4
// Description: 
//      This debouncer module will stablize the input button to prevent it from
// take in multiple signal in one push. It also uses a history register to make
// sure the enterOutput only stay high for one clock cycle.
// 
// Dependencies: 
//      enter Button
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: n/a
// 
//////////////////////////////////////////////////////////////////////////////////


/**
* module debouncer
* The purpose is to prevent bouncing for the enter button.
* Based on example given in class (1/21/2014)
**/

module debouncer (
    input slowClock,
    input reset,
    input inputButton,
    output reg outputButton
);

// State value
parameter [1:0]
	firstLow = 2'b00,
	secondLow = 2'b01,
	firstHigh = 2'b10,
	secondHigh = 2'b11;

reg [1:0] state = firstLow;
reg [1:0] nextState = firstLow;

//Next State Logic
always @(*)
begin 
	case (state)
		firstLow: 
			if (| inputButton)
				nextState = secondLow;
		    else 
		        nextState = firstLow;
		secondLow:
			if (inputButton)
				nextState = firstHigh;
			else
				nextState = firstLow;
		firstHigh: 
			if (~inputButton)
				nextState = secondHigh;
		    else
		        nextState = firstHigh;
		secondHigh:
			if (inputButton)
				nextState = firstHigh;
			else
				nextState = firstLow;		
	    default:
	        nextState = state;
	endcase
end 

//Output Logic
always @(*)
begin
	case (state)
		firstLow:
			outputButton = 0;
		secondLow:
			outputButton = 0;
		firstHigh:
			outputButton = 1;
		secondHigh:
			outputButton = 1;
	    default:
	        outputButton = 0;
	endcase
end 

// Update the current state
always @(posedge slowClock, posedge reset)
begin
	if (reset)
		state <= firstLow;
	else
		state <= nextState;
end
 

endmodule

