`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge
// Teammates: Anthony Carno, Tom Ludwis
// 
// Create Date: 02/13/2014 01:50:41 AM
// Design Name: 
// Module Name: keypadCalculatorOled
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


module keypadCalculatorOled(
    input clk,
    input rst,
    input [3:0] rows,
    output [3:0] columns,
    output SDIN,
    output SCLK,
    output DC,
    output RES,
    output VBAT,
    output VDD,
    
    output [2:0] state
    );
    
    wire [3:0] inputOut;
    wire validInput;
    wire [15:0] resultBCD;
    wire validResult;
    wire clear;
    
    wire slowClock;
    wire [3:0] rowOut;
    wire [3:0] colOut;
    wire valid;
    wire [3:0] key;
    
//    singleClkSigGen singleClkSigGen_valid(
//        .clk(clk),
//        .signal(valid),
//        .outSig(validSig));
    

//    slowclock slowclock_inst(
//        .clock(clk),
//        .slowClockValue(slowClock));
        
//    keypadController keypadController_inst(
//        .clk(clk),
//        .slowClock(slowClock),
//        .rows(rows),
//        .columns(columns),
//        .rowOut(rowOut),
//        .colOut(colOut),
//        .valid(valid));
        
//    keyConverter keyConverter_inst(
//        .row(rowOut),
//        .col(colOut),
//        .key(key));
        
//    VerilogOLEDCtrl oledCtrl_inst(
//        .CLK(clk),
//        .RST(rst),
//        .CLR(1'b0),
//        .INPUT_VALID(validSig),
//        .RESULT_VALID(1'b0),
//        .INPUT(key),
//        .RESULT(16'd12),
//        .SDIN(SDIN),
//        .SCLK(SCLK),
//        .DC(DC),
//        .RES(RES),
//        .VBAT(VBAT),
//        .VDD(VDD));
        
        
    keypadCalculator keypadCalculator_inst(
        .clk(clk),
        .rst(rst),
        .rows(rows),
        .columns(columns),
        .inputOut(inputOut),
        .validInput(validInput),
        .resultBCD(resultBCD),
        .validResult(validResult),
        .clear(clear),
        .state(state));

    VerilogOLEDCtrl oledCtrl_inst(
        .CLK(clk),
        .RST(rst),
        .CLR(clear),
        .INPUT_VALID(validInput),
        .RESULT_VALID(validResult),
        .INPUT(inputOut),
        .RESULT(resultBCD),
        .SDIN(SDIN),
        .SCLK(SCLK),
        .DC(DC),
        .RES(RES),
        .VBAT(VBAT),
        .VDD(VDD));

    
endmodule
