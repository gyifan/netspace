`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge
// 
// Create Date: 02/06/2014 10:43:18 AM
// Design Name: 3-digit add and sub calculator
// Module Name: fsm
// Project Name: Advanced Digital Design - lab2
// Target Devices: ZedBoard
// Tool Versions: Vivado 13.4
// Description: 
//      This module declares the finite state machine of the system.
//  This is called in calculator.v verlog
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define IDLE        3'b000   // State waiting for the first input
`define INPUT_ONE   3'b001   // State waiting for the first parameter
`define OP          3'b010   // State waiting for the first input of the second parm
`define INPUT_TWO   3'b011   // State waiting for the second parameter
`define CALCULATE   3'b100   // State calculating the equation and output the result

/*
 * Keypad key definitions 
 */
`define ADD         4'd10
`define SUB         4'd11
`define CLEAR       4'd12
`define EQUAL       4'd13

module fsm(
    input clk,
    input rst,
    input [3:0] key,
    input valid,
    input [15:0] result,
    input inputOneVacant,
    input inputTwoVacant,
    
    // Outputs to the calculator logic
    output resetCalc,
    output reg enableOne = 1'b0,
    output reg enableTwo = 1'b0,
    output reg enableOp = 1'b0,
    output reg [3:0] inputOne = 4'b0,
    output reg [3:0] inputTwo = 4'b0,
    output op, // 1'b0 is ADD, 1'b1 is SUB. default ADD
    
    // Outputs to the OLED display
    output [3:0] inputOut,
    output reg validInput = 1'b0,
    output [15:0] resultOut,
    output validResult,
    output clear,
    
    output reg [2:0] state = `IDLE
    );
    
//    reg [2:0] state = `IDLE;
    reg [2:0] nstate = `IDLE;

    // States transition logic
    always @(*)
    begin
        if (valid)
            case (state)
                `IDLE:
                    begin
                        if(key < 4'd10)
                            nstate <= `INPUT_ONE;
                        else
                            nstate <= `IDLE;
                    end
                `INPUT_ONE:
                    begin
                        if(key == `CLEAR)
                            nstate <= `IDLE;
                        else if((key == `ADD)|(key == `SUB))
                            nstate <= `OP;
                        else
                            nstate <= `INPUT_ONE;
                    end
                `OP:
                    begin
                        if(key == `CLEAR)
                            nstate <= `IDLE;
                        else if(key < 4'd10)
                            nstate <= `INPUT_TWO;
                        else
                            nstate <= `OP;
                    end
                `INPUT_TWO:
                    begin
                        if(key == `CLEAR)
                            nstate <= `IDLE;
                        else if(key == `EQUAL)
                            nstate <= `CALCULATE;
                        else
                            nstate <= `INPUT_TWO;
                    end
                `CALCULATE:
                    begin
                        if(key == `CLEAR)
                            nstate <= `IDLE;
                        else
                            nstate <= `CALCULATE;
                    end
                default:
                    begin
                        nstate <= state;
                    end
            endcase
        else
            nstate <= state;
    end
    
    // Output Logic
    always @(*)
    begin
        case(state)
            `IDLE:
                begin
                    inputOne <= (key < 4'd10) ? key : 4'b0;
                    enableOne <= inputOneVacant & (key < 4'd10) & valid;
                    inputTwo <= 4'b0;
                    enableTwo <= 1'b0;
                    validInput <= inputOneVacant & (key < 4'd10) & valid;
                    enableOp <= 1'b0;
                end
            `INPUT_ONE:
                begin
                    inputOne <= (key < 4'd10) ? key : 4'b0;
                    enableOne <= inputOneVacant & (key < 4'd10) & valid;
                    inputTwo <= 4'b0;
                    enableTwo <= 1'b0;
                    validInput <= ((inputOneVacant & (key < 4'd10)) | (key == `ADD)|(key == `SUB)) & valid;
                    enableOp <= ((key == `ADD)|(key == `SUB))&valid;
                end
            `OP:
                begin
                    inputOne <= 4'b0;
                    enableOne <= 1'b0;
                    inputTwo <= (key < 4'd10) ? key : 4'b0;
                    enableTwo <= inputTwoVacant & (key < 4'd10) & valid;
                    validInput <= inputTwoVacant & (key < 4'd10) & valid;
                    enableOp <= 1'b0;
                end
            `INPUT_TWO:
                begin
                    inputOne <= 4'b0;
                    enableOne <= 1'b0;
                    inputTwo <= (key < 4'd10) ? key : 4'b0;
                    enableTwo <= inputTwoVacant & (key < 4'd10) & valid;
                    validInput <= ((inputTwoVacant & (key < 4'd10)) | (key == `EQUAL)) & valid;
                    enableOp <= 1'b0;
                end
            `CALCULATE:
                begin
                    inputOne <= 4'b0;
                    enableOne <= 1'b0;
                    inputTwo <= 4'b0;
                    enableTwo <= 1'b0;
                    validInput <= 1'b0;
                    enableOp <= 1'b0;
                end
            default:
                begin
                    inputOne <= 4'b0;
                    enableOne <= 1'b0;
                    inputTwo <= 4'b0;
                    enableTwo <= 1'b0;
                    validInput <= 1'b0;
                    enableOp <= 1'b0;
                end
        endcase
    end
    assign op = (key == `SUB);
    assign inputOut = key;
    assign resetCalc = (key == `CLEAR) & valid;
    assign resultOut = (state == `CALCULATE) ? result : 16'b0;
    assign validResult = state == `CALCULATE;
    assign clear = resetCalc;
    
    // Update current state
    always @(posedge clk, posedge rst)
    begin
        if (rst)
            state <= `IDLE;
        else
            state <= nstate;
    end
    
endmodule
