`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge
// Teammates: Anthony Carno, Tom Ludwis
// 
// Create Date: 02/13/2014 12:41:34 AM
// Design Name: 3-digit add and sub calculator
// Module Name: keypadCalculator
// Project Name: Advanced Digital Design - lab2
// Target Devices: ZedBoard
// Tool Versions: Vivado 13.4
// Description: 
//      This module integrates the keypad controller and the 3-digit add and sub
//  calculator modules together. It will take the input from the keypad to do 3
//  digits calculation. It has following specifications:
//      1. The user has to start with 0-9 input on the 4X4 keypad.
//      2. The user can enter max 3 digit for the either operand. Any number 
//         input after 3 maximum will be ignored.
//      3. There has to be a operator between the two operands.
//          A: '+'      B: '-'
//      4. After two operands and one operator, the user can press '=' to see the
//         answer.
//          #: '='
//      5. Anytime the user can use 'clear' button to reset the calculator.
//          C: 'clear'
// 
// Dependencies: 
//  slowclock, keypadController, keyConverter, calculator modules.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module keypadCalculator(
    input clk,
    input rst,
    input [3:0] rows,
    output [3:0] columns,
    
    output [3:0] inputOut,
    output validInput,
    output [15:0] resultBCD,
    output validResult,
    output clear,
    
    output [2:0] state
    );
    
    wire slowClock;
    wire [3:0] rowOut;
    wire [3:0] colOut;
    wire valid;
    wire [3:0] key;
    
    // Create a slow clok for the keypad controller.
    slowclock slowclock_inst(
        .clock(clk),
        .slowClockValue(slowClock));
        
    keypadController keypadController_inst(
        .clk(clk),
        .slowClock(slowClock),
        .rows(rows),
        .columns(columns),
        .rowOut(rowOut),
        .colOut(colOut),
        .valid(valid));
        
    keyConverter keyConverter_inst(
        .row(rowOut),
        .col(colOut),
        .key(key));
        
    calculator calculator_inst(
        .clk(clk),
        .rst(rst),
        .key(key),
        .valid(valid),
        .inputOut(inputOut),
        .validInput(validInput),
        .resultOutBCD(resultBCD),
        .validResult(validResult),
        .clear(clear),
        .state(state));
    
endmodule
