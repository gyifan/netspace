`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2014 06:44:01 PM
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb();

    reg clk = 1'b0;
    reg rst = 1'b0;
    reg [3:0] key = 4'b0000;
    reg valid = 1'b0;
    
    reg [15:0] result = 16'd14;
    
    // Output to the calculator logic
    wire resetCalc;
    wire enableOne;
    wire enableTwo;
    wire enableOp;
    wire [3:0] inputOne;
    wire [3:0] inputTwo;
    wire op; // 1'b0 is ADD, 1'b1 is SUB. default ADD
    
    // Output to the OLED display
    wire [3:0] inputOut;
    wire validInput;
    wire [15:0] resultOut;
    wire validResult;
    wire clear;
    
    wire inputOneVacant;
    wire inputTwoVacant;
    
    wire [15:0] paramOne;
    wire [15:0] paramTwo;
    
    singleClkSigGen singleClkSigGen_inst(
        .clk(clk),
        .signal(valid),
        .outSig(validSig));

    initial begin
        forever begin
            #5 clk = !clk;
        end
    end

    initial begin

// 153 - 123 =
        // Key in 1;
        #20;
        key = 4'd1;
        valid = 1'b1;
        #30;
        valid = 1'b0;
        
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
         
// Reset calculator
         // Key in C;
         #20;
         key = 4'd12;
         valid = 1'b1;
         #30;
         valid = 1'b0;
       
         // Key in 1;
         #20;
         key = 4'd1;
         valid = 1'b1;
         #30;
         valid = 1'b0;
      

// Test Clear
        // Key in 1;
        #20;
        key = 4'd1;
        valid = 1'b1;
        #30;
        valid = 1'b0;
        
        // Key in C;
        #20;
        key = 4'd12;
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
        
         // Key in +;
         #20;
         key = 4'd10;
         valid = 1'b1;
         #30;
         valid = 1'b0;
         
         // Key in 3;
         #20;
         key = 4'd3;
         valid = 1'b1;
         #30;
         valid = 1'b0;
         
         // Key in C;
         #20;
         key = 4'd12;
         valid = 1'b1;
         #30;
         valid = 1'b0;


    end

    fsm fsm_inst(
        .clk(clk),
        .rst(rst),
        .key(key),
        .valid(validSig),
        .result(result),
        .inputOneVacant(inputOneVacant),
        .inputTwoVacant(inputTwoVacant),
        
        // Output to the calculator logic
        .resetCalc(resetCalc),
        .enableOne(enableOne),
        .enableTwo(enableTwo),
        .enableOp(enableOp),
        .inputOne(inputOne),
        .inputTwo(inputTwo),
        .op(op), // 1'b0 is ADD, 1'b1 is SUB. default ADD
        
        // Output to the OLED display
        .inputOut(inputOut),
        .validInput(validInput),
        .resultOut(resultOut),
        .validResult(validResult),
        .clear(clear)
        );
        
    shiftInputReg shiftOne(
        .clk(clk),
        .rst(resetCalc),
        .inputDigit(inputOne),
        .enable(enableOne),
        .outputValue(paramOne),
        .vacant(inputOneVacant));
        
    shiftInputReg shiftTwo(        
        .clk(clk),
        .rst(resetCalc),
        .inputDigit(inputTwo),
        .enable(enableTwo),
        .outputValue(paramTwo),
        .vacant(inputTwoVacant));

endmodule