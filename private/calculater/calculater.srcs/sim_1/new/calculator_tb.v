`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2014 06:16:51 PM
// Design Name: 
// Module Name: calculator_tb
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


module calculator_tb();

    reg clk = 1'b0;
    reg rst = 1'b0;
    reg [3:0] key = 4'b0000;
    reg valid = 1'b0;
    
    wire [3:0] inputOut;
    wire validInput;
    wire [15:0] resultOutBCD;
    wire validResult;
    wire clear;

    initial begin
        forever begin
            #5 clk = !clk;
        end
    end

    initial begin
        
        // Key in 1;
        #20;
        key = 4'd1;
        valid = 1'b1;
        #30;
        valid = 1'b0;
        
        // Key in 5;
        #20;
        key = 4'd5;
        valid = 1'b1;
        #30;
        valid = 1'b0;
        
         // Key in 3;
         #20;
         key = 4'd3;
         valid = 1'b1;
         #30;
         valid = 1'b0;
         
         // Key in -;
         #20;
         key = 4'd11;
         valid = 1'b1;
         #30;
         valid = 1'b0;
        
         // Key in 1;
         #20;
         key = 4'd1;
         valid = 1'b1;
         #30;
         valid = 1'b0;
        
         // Key in 2;
         #20;
         key = 4'd2;
         valid = 1'b1;
         #30;
         valid = 1'b0;
         
         // Key in 3;
         #20;
         key = 4'd3;
         valid = 1'b1;
         #30;
         valid = 1'b0;
         
         // Key in =;
         #20;
         key = 4'd13;
         valid = 1'b1;
         #30;
         valid = 1'b0;
         
    end
    
    calculator calculator_test(
        .clk(clk),
        .rst(rst),
        .key(key),
        .valid(valid),
        .inputOut(inputOut),
        .validInput(validInput),
        .resultOutBCD(resultOutBCD),
        .validResult(validResult),
        .clear(clear));

endmodule
