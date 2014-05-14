`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2014 10:25:48 AM
// Design Name: 
// Module Name: vga_bram
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


module vga_bram(
    input clk,
    input [3:0] color_in,
    input [9:0] row_in,
    input [10:0] col_in,
    input [9:0] row_out,
    input [10:0] col_out,
    output [3:0] color_out
    );
    
    // buffers for temporarily stroe the input value from PS
    reg [3:0] color_reg;
    reg [9:0] row_reg;
    reg [10:0] col_reg;
    
    /*
     * Converted value to put into the BRAM
     * BRAM in this case is used as a buffer.
     * Conversion scheme:
     *   Address: {col,row[5:0]} - 17 bits
     *   Data: color - 4 bits
     * 
     */
    wire [16:0] addr_in;
    wire [3:0] color_din;
    wire [11:0] bram_wen;
    
    /* Converted BRAM address and bram_ren pair from row and 
     * column request from PL to the BRAM. (Similar to inputs from PS)
     */
    wire [16:0] addr_out;
    wire [3:0] color_tmp[0:11];
    wire [11:0] bram_ren;
    
    // Read PS input to register
    always @(posedge clk)
    begin
        color_reg <= color_in;
        row_reg <= row_in;
        col_reg <= col_in;
    end
    
    // Convert
    assign addr_in = {col_reg[10:0], row_reg[5:0]};
    assign color_din = color_reg;
    assign bram_wen = 12'b1 << row_reg[9:6];
    
    assign addr_out = {col_out[10:0], row_out[5:0]};
    assign bram_ren = 12'b1 << row_out[9:6];
    
    /*
     * Use generate statement block to make 12 color_table.
     * Each color_table hold part of the 1280*720 pixels.
     * 
     */
    genvar i;
    generate
        for (i=0; i<12; i=i+1)
            color_map color_table_i (
              .clka(clk),    // input wire clka
              .ena(1'b1),      // input wire ena
              .wea(bram_wen[i]),      // input wire [0 : 0] wea
              .addra(addr_in),  // input wire [16 : 0] addra
              .dina(color_din),    // input wire [3 : 0] dina
              .clkb(clk),    // input wire clkb
              .enb(bram_ren[i]),      // input wire enb
              .addrb(addr_out),  // input wire [16 : 0] addrb
              .doutb(color_tmp[i])  // output wire [3 : 0] doutb
            );
    endgenerate
    
    assign color_out = bram_ren[0] == 1'b1 ? color_tmp[0] : bram_ren[1] ? color_tmp[1] :
         bram_ren[2] == 1'b1 ? color_tmp[2] : bram_ren[3] ? color_tmp[3] :
         bram_ren[4] == 1'b1 ? color_tmp[4] : bram_ren[5] ? color_tmp[5] : 
         bram_ren[6] == 1'b1 ? color_tmp[6] : bram_ren[7] ? color_tmp[7] :
         bram_ren[8] == 1'b1 ? color_tmp[8] : bram_ren[9] ? color_tmp[9] :
         bram_ren[10] == 1'b1 ? color_tmp[10] : bram_ren[11] ? color_tmp[11] : 4'b0;

endmodule
