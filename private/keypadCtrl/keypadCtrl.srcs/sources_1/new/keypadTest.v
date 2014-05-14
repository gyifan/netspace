`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2014 03:18:57 PM
// Design Name: 
// Module Name: keypadTest
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


module keypadTest(
    input clk,
    input [3:0] rows,
    output [3:0] columns,
    output [1:0] anodes,
    output [6:0] cathodes,
    
    output test
    );
    
    wire slowClock;
    wire slowestClk;
    
    wire [3:0] row;
    wire [3:0] col;
    wire [3:0] key;
    
    wire [3:0] bcdOnes;
    wire [3:0] bcdTens;
    wire [6:0] ones;
    wire [6:0] tens;
    
    slowclock slowclock_i(
        .clock(clk),
        .slowClockValue(slowClock));
    
    keypadController keypad(
        .clk(clk),
        .slowClock(slowClock),
        .rows(rows),
        .columns(columns),
        .rowOut(row),
        .valid(test),
        .colOut(col));
    
    keyConverter keyConverter_i(
        .row(row),
        .col(col),
        .key(key));
        
    bin2bcd bin2bcd_i(
        .binary({2'b0,key}),
        .bcdOnes(bcdOnes),
        .bcdTens(bcdTens));
        
    SevenSegmenDecoder sevenSegDec_One(bcdOnes, ones);
    SevenSegmenDecoder sevenSegDec_Ten(bcdTens, tens);
    
    sevenSegCtrl sevenSegCtrl_i(
        .ones(ones),
        .tens(tens),
        .clk(slowClock),
        .anodes(anodes),
        .cathodes(cathodes));
    
endmodule
