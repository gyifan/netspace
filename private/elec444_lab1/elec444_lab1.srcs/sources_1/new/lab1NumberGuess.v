`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2014 09:00:53 AM
// Design Name: 
// Module Name: lab1NumberGuess
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


module lab1NumberGuess(
    input clk,
    input reset,
    input enter,
    input [5:0] switches,
    output [1:0] anodes,
    output [6:0] cathodes,
    output redLED,
    output greenLED
    );
    
    //registers store player 1's number and player 2's guesses
    reg [5:0] p1Number = 6'b0;
    wire [5:0] p2Guess;
    
    wire slowClock;
    wire isLow; 
    wire isEqual;
    wire isGuessDisplay;
    wire isIncrementCount;
    wire enterOutput;
    
    wire [5:0] countValue; //Represents the number of guesses player 2 has made
    wire [3:0] countOnes; //Represents the bcd value of one's column 
    wire [6:0] countOnes_7seg; //Represents the 
    wire [3:0] countTens;
    wire [6:0] countTens_7seg;
    
    wire [6:0] pSeg; // 7-Segment display value for 'P'
    wire [6:0] oneSeg; // 7-Segment display value for '1'
    
    // 7-seg input for counter
    wire [6:0] ones;
    wire [6:0] tens;
    
    // Hardcoded the 7-segment output value for "P" and "1"
    assign pSeg     = 7'b0011000;
    assign oneSeg   = 7'b1001111;
    
    // Setup the slow clock for the time multiplexing used in the 7-seg controller
    slowclock slowclock_i (
        .clock(clk),
        .slowClockValue(slowClock));
    
    // Uses 4 state transition debouncer to stablize the enter input
    debouncer debouncer_enter (
        .slowClock(slowClock),
        .clock(clk),
        .reset(reset),
        .inputButton(enter),
        .enterOutput(enterOutput));
        
     // Updates the p2Guess to the switches input
     assign p2Guess = switches;
     
     // Updates the p1Number to the switch input if isIncrementCount is not set
     always @(posedge clk, posedge reset)
     begin
        if (reset)
            p1Number <= 6'b0;
        else
            if (!isGuessDisplayed)
                p1Number <= switches;
            else
                p1Number <= p1Number;
     end
                
    // Updates isLow & isEqual by compare p1Number and p2Guess
    assign isLow = (p2Guess < p1Number);
    assign isEqual = (p2Guess == p1Number);
        
    // Instantiate the finite state machine
    lab1fsm fsm (
        .clock(clk),
        .reset(reset),
        .enterButton(enterOutput),
        .isLow(isLow),
        .isEqual(isEqual),
        .redLED(redLED),
        .greenLED(greenLED),
        .isGuessDisplayed(isGuessDisplayed),
        .isIncrementCount(isIncrementCount));
     
     // Counts the number of guesses player 2 has made
     guessCounter counter (
        .clk(clk),
        .reset(reset),
        .enter(enterOutput),
        .isIncrementCount(isIncrementCount),
        .countValue(countValue));

     // Converts binary number to binary-coded-decimal
     bin2bcd bin2bcd_count(
        .binary(countValue),
        .bcdOnes(countOnes),
        .bcdTens(countTens));
     
     // Converts the bcd to the 7-seg output
     SevenSegmenDecoder sevenSegDec_ctOne(countOnes, countOnes_7seg);
     SevenSegmenDecoder sevenSegDec_ctTen(countTens, countTens_7seg);
    
     /* 
      * Select the 7-segment output based on isGuessDisplayed.
      * ones and tens are corresponding 7-seg output to the two 7-seg displays
      */
     assign ones = isGuessDisplayed ? countOnes_7seg : oneSeg;
     assign tens = isGuessDisplayed ? countTens_7seg : pSeg;

     // Instantiate time multiplexed 7-seg display controller for 2 units (ones and tens)
     sevenSegCtrl sevenSegCtrl_i (
        .ones(ones),
        .tens(tens),
        .clk(slowClock),
        .anodes(anodes),
        .cathodes(cathodes));

endmodule
