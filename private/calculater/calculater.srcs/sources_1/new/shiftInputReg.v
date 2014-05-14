`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2014 05:25:19 AM
// Design Name: 
// Module Name: shiftInputReg
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


module shiftInputReg(
    input clk,
    input rst,
    input [3:0] inputDigit,
    input enable,
    output [15:0] outputValue,
    output vacant
    );
    
    reg [3:0] one = 4'b0;
    reg [3:0] ten = 4'b0;
    reg [3:0] hund = 4'b0;
    reg [3:0] shift = 3'b0001;
    wire [2:0] shiftSig;
    
    /*
     * Update registers of each digits of the operands.
     */
    always @(posedge clk, posedge rst)
    begin
        if(rst)
            one <= 4'b0;
        else if(shiftSig[0])
            one <= inputDigit;
    end
    
    always @(posedge clk, posedge rst)
    begin
        if(rst)
            ten <= 4'b0;
        else if(shiftSig[1])
            ten <= inputDigit;
    end
    
    always @(posedge clk, posedge rst)
    begin
        if(rst)
            hund <= 4'b0;
        else if(shiftSig[2])
            hund <= inputDigit;
    end
    
    /* shiftOne register will shift 1 through pin 0 to pin 3. Each bit of the register
     * will be used as the enable bit of ones, tens, and hundreds digit register of 
     * the first parameter, respectively.
     * enableOne is the enable signal of this shift register.
     */
    always @(posedge clk, posedge rst)
    begin
        if(rst)
            shift <= 4'b0001;
        else if(enable)
            shift <= {shift[2:0],1'b0};
    end
    
    // Make the read enable to be one clock signal to each register.
    singleClkSigGen SingleClkSigGen_one(
        .clk(clk),
        .signal(shift[1]),
        .outSig(shiftSig[0]));
        
    singleClkSigGen SingleClkSigGen_two(
        .clk(clk),
        .signal(shift[2]),
        .outSig(shiftSig[1]));
    
    singleClkSigGen SingleClkSigGen_three(
        .clk(clk),
        .signal(shift[3]),
        .outSig(shiftSig[2]));
    
    assign outputValue = one + ten*10 + hund*100;
    assign vacant = |shift[2:0];
    
endmodule
