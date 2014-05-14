`timescale 1ns / 1ps

module lab1fsm (
    input clock,
    input reset,
    input enterButton,          // enter input from the user
    input isLow,                // if the guess low
    input isEqual,              // if guess is right
    output reg redLED,          // if red LED is on or off. if 1: on, else off
    output reg greenLED,        // if green LED is on or off. if 1: on, else off
    /**
    * boolean value to indicate whether or not the 7-segment display
    * displays P1 or the number of guesses P2 has conducted 
    * if true (1) display guess, else (0) display "P1"
    */
    output reg isGuessDisplayed,
    /**
    * Stores boolean to tell signal counter to increment value
    * if 1 (true), increment counter, else (false/0) do not increment counter
    **/
    output reg isIncrementCount
);

/**
* Symbolic state definitions
* p1Choice: state where Player 1 inputs a number
* outputs: LEDs are off, counter is zeroed, and 7-seg displays P1
* 
* p2Guess: state where Player 2 guesses player 1's number
* outputs: LEDs remain unchanged, display counter
*
* guessHigh: state where Player 2 input a higher number
* outputs: redLED is high, greenLED is low, display and increment counter.
*
* guessLow: state where Player 2 inputs a lower number
* outputs: redLED is low, greenLED is high, display and increment counter.
* 
* guessEqual: state where Player 2 inputs the correct number
* outputs: LEDs are both high, display and increment counter.
*
* Note: Whenever the reset is pressed, the state will be set to p1Choice.
**/

// State parameters
parameter [2:0]
	p1Choice = 3'b000, 
	p2Guess = 3'b001,
	guessHigh = 3'b010,
	guessLow = 3'b011,
	guessEqual = 3'b100;

// 
reg [2:0] state = p1Choice; //Register that stores current state in FSM
reg [2:0] nextState = p1Choice; //Register that stores the next state in FSM

//Determine next state
always @(*)
	begin
	    if (enterButton)
            case (state)
                p1Choice:
                        nextState = p2Guess;
                p2Guess:
                    begin
                        if (isLow)
                            nextState = guessLow;
                        else if (isEqual)
                            nextState = guessEqual;
                        else
                            nextState = guessHigh;
                    end
                guessEqual:
                    nextState = guessEqual;
                guessHigh:
                    begin
                        if (isLow)
                            nextState = guessLow;
                        else if (isEqual)
                            nextState = guessEqual;
                        else
                            nextState = guessHigh;
                    end
                guessLow:
                    begin
                        if (isLow)
                            nextState = guessLow;
                        else if (isEqual)
                            nextState = guessEqual;
                        else
                            nextState = guessHigh;
                    end
                default:
                    nextState = state;
            endcase 
        else
            nextState = state;
	end 
	
/** Output Logic **/
always @(*)
begin 
	/**
	* Output default: both LEDs are off, do not increment counter
	* and player 2's guess is not displayed
	**/

	case (state)
		p1Choice:
		begin
			redLED <= 1'b0;
			greenLED <= 1'b0;
			isGuessDisplayed <= 1'b0;
			isIncrementCount <= 1'b0;
		end
		p2Guess: 
		begin 
		    redLED <= 1'b0;
		    greenLED <= 1'b0;
			isGuessDisplayed <= 1'b1;
			isIncrementCount <= 1'b1;
		end
		guessHigh:
		begin
			redLED <= 1'b1;
			greenLED <= 1'b0;
			isIncrementCount <= 1'b1;
			isGuessDisplayed <= 1'b1;
		end
		guessLow:
		begin
			redLED <= 1'b0;
			greenLED <= 1'b1;
			isIncrementCount <= 1'b1;
			isGuessDisplayed <= 1'b1;
		end
		guessEqual:
		begin
			 redLED <= 1'b1;
			 greenLED <= 1'b1;
			 isIncrementCount <= 1'b0;
			 isGuessDisplayed <= 1'b1;
		end
		
		default:
		begin
		      redLED <= 1'b0;
		      greenLED <= 1'b0;
		      isIncrementCount <= 1'b0;
		      isGuessDisplayed <= 1'b0; 
		end 
	endcase	
end 
	
//FSM state register
always @(posedge clock, posedge reset)
begin
	if (reset)
	begin
		state <= p1Choice;
    end
		//Signal for counter to reset?
	else
		state <= nextState;
		//Signal for counter to increment?
end 

endmodule 