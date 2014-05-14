`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Thomas Ludwig
// 
// Create Date: 01/23/2014 08:22:41 AM
// Design Name: 
// Module Name: bouncer
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
* module debouncer
* The purpose is to prevent bouncing for the enter button.
* Based on example given in class (1/21/2014)
**/

module debouncer (
input slowClock,
input clock,
input reset,
input inputButton,
output reg enterOutput
);

reg outputButton = 1'b0;
reg outputButton_prev = 1'b0;

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
			if (inputButton)
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

//FSM state changer?
always @(posedge slowClock, posedge reset)
begin
	if (reset)
		state <= firstLow;
	else
		state <= nextState;
end

always @(*)
begin
    if(outputButton_prev == 1'b0)
        enterOutput <= outputButton;
    else
        enterOutput <= 1'b0;
end

always @(posedge clock, posedge reset)
begin
    if (reset)
        outputButton_prev <= 1'b0;
    else
        outputButton_prev <= outputButton;
end
    
    

endmodule //debouncer

