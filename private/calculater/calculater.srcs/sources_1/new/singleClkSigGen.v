`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge
// 
// Create Date: 02/09/2014 04:52:31 PM
// Design Name: 3-digit add and sub calculator
// Module Name: singleClkSigGen
// Project Name: Advanced Digital Design - lab2
// Target Devices: ZedBoard
// Tool Versions: Vivado 13.4
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module singleClkSigGen(
    input clk,
    input signal,
    output reg outSig
    );
    
    reg preval = 1'b0;
    
    always @(posedge clk)
    begin
        if(preval == 1'b0)
            outSig = signal;
        else
            outSig = 1'b0;
        
        preval = signal;
    end
    
endmodule
