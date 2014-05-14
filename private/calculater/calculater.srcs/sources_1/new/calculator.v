`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge
// Teammates: Anthony Carno, Tom Ludwis
// 
// Create Date: 02/09/2014 05:10:24 PM
// Design Name: 3-digit add and sub calculator
// Module Name: calculator
// Project Name: Advanced Digital Design - lab2
// Target Devices: ZedBoard
// Tool Versions: Vivado 13.4
// Description: 
//      This module takes in the output from the keypad controller and does a two
//  3-digit add or sub calculation.
// Dependencies: 
//  singleClkSigGen, fsm, bin2bcdDec4
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module calculator(
    input clk,
    input rst,
    input [3:0] key,
    input valid,

    output [3:0] inputOut,
    output validInput,
    output [15:0] resultOutBCD,
    output validResult,
    output clear,
    
    output [2:0] state
    );
    
    wire validSig; // Make the valid input as one clock period pauses.
    wire [15:0] resultOut;
    
    wire inputOneVacant;
    wire inputTwoVacant;
    
    wire resetCalc;
    wire enableOne;
    wire enableTwo;
    wire enableOp;
    wire [3:0] inputOne;
    wire [3:0] inputTwo;
    wire op;
    reg op_reg;
    
    wire [15:0] operandOne;
    wire [15:0] operandTwo;
    wire [15:0] result;
    
    // Instantiate the single clock singal generator to convert 
    // valid input signal to one clock cycle pulse.
    singleClkSigGen singleClkSigGen_valid(
        .clk(clk),
        .signal(valid),
        .outSig(validSig));
    
    /*
     * Instantiate the Finite State Machine of the system
     */
    fsm fsm_inst(
        // Input signals
        .clk(clk),
        .rst(rst),
        .key(key),
        .valid(validSig),
        .result(resultOut),
        .inputOneVacant(inputOneVacant),
        .inputTwoVacant(inputTwoVacant),
        
        // Output signals to the calculator logic
        .resetCalc(resetCalc),
        .enableOne(enableOne),
        .enableTwo(enableTwo),
        .enableOp(enableOp),
        .inputOne(inputOne),
        .inputTwo(inputTwo),
        .op(op),
        
        // Output signals to the OLED display
        .inputOut(inputOut),
        .validInput(validInput),
        .resultOut(resultOutBCD),
        .validResult(validResult),
        .clear(clear),
        .state(state));
    
    always @(posedge clk)
    begin 
        if(enableOp)
            op_reg <= op;
    end
    
    shiftInputReg shiftOne(
        .clk(clk),
        .rst(resetCalc),
        .inputDigit(inputOne),
        .enable(enableOne),
        .outputValue(operandOne),
        .vacant(inputOneVacant));
        
    shiftInputReg shiftTwo(        
        .clk(clk),
        .rst(resetCalc),
        .inputDigit(inputTwo),
        .enable(enableTwo),
        .outputValue(operandTwo),
        .vacant(inputTwoVacant));
        
    assign result = op_reg ? (operandOne - operandTwo) : (operandOne + operandTwo);
    
    // Convert 16-bit result to 16-bit BCD value.
    bin2bcdDec4 bin2bcdDec4_result(
        .binary(result),
        .bcdOnes(resultOut[3:0]),
        .bcdTens(resultOut[7:4]),
        .bcdHunds(resultOut[11:8]),
        .bcdThouds(resultOut[15:12]));
    
//    //vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
//    /*
//     * Update registers of each digits of the operands.
//     */
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            paramOne[0] <= 4'b0;
//        else if(shiftOne[0])
//            paramOne[0] <= inputOne;
//    end
    
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            paramOne[1] <= 4'b0;
//        else if(shiftOne[1])
//            paramOne[1] <= inputOne;
//    end
    
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            paramOne[2] <= 4'b0;
//        else if(shiftOne[2])
//            paramOne[2] <= inputOne;
//    end
    
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            paramTwo[0] <= 4'b0;
//        else if(shiftTwo[0])
//            paramTwo[0] <= inputTwo;
//    end
    
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            paramTwo[1] <= 4'b0;
//        else if(shiftTwo[1])
//            paramTwo[1] <= inputTwo;
//    end
    
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            paramTwo[2] <= 4'b0;
//        else if(shiftTwo[2])
//            paramTwo[2] <= inputTwo;
//    end
//    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    
//    // Get the operands from the regiters and perform calculation.
//    assign operandOne = paramOne[0] + paramOne[1]*10 + paramOne[2]*100;
//    assign operandTwo = paramTwo[0] + paramTwo[1]*10 + paramTwo[2]*100;

    

    
//    //vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
//    /* shiftOne register will shift 1 through pin 0 to pin 3. Each bit of the register
//     * will be used as the enable bit of ones, tens, and hundreds digit register of 
//     * the first parameter, respectively.
//     * enableOne is the enable signal of this shift register.
//     */
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            shiftOne <= 3'b001;
//        else if(enableOne)
//            shiftOne <= {shiftOne[1:0],1'b0};
//    end
    
//    /* shiftTwo register will shift 1 through pin 0 to pin 3. Each bit of the register
//     * will be used as the enable bit of ones, tens, and hundreds digit register of 
//     * the second parameter, respectively.
//     * enableTwo is the enable singal of this shift register.
//     */
//    always @(posedge clk, posedge resetCalc)
//    begin
//        if(resetCalc)
//            shiftTwo <= 3'b001;
//        else if(enableTwo)
//            shiftTwo <= {shiftTwo[1:0],1'b0};
//    end
//    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    
endmodule
