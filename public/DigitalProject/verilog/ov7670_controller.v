// File ov7670_controller.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 1995

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002, 2005, 2008-2010 Larry Doolittle - LBNL
//     http://doolittle.icarus.com/~larry/vhd2vl/
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

//--------------------------------------------------------------------------------
// Engineer: Mike Field <hamster@snap.net.nz>
// 
// Description: Controller for the OV760 camera - transferes registers to the 
//              camera over an I2C like bus
//--------------------------------------------------------------------------------
// no timescale needed

module ov7670_controller(
clk,
resend,
config_finished,
sioc,
siod,
reset,
pwdn,
xclk
);

input clk;
input resend;
output config_finished;
output sioc;
inout siod;
output reset;
output pwdn;
output xclk;

wire clk;
wire resend;
wire config_finished;
wire sioc;
wire siod;
wire reset;
wire pwdn;
wire xclk;


wire [15:0] inputs;
wire [15:0] outputs;
reg [8:0] data;
wire [9:0] address;
reg sys_clk;

  assign inputs[0] = resend;
  assign config_finished = outputs[0];
  i3c2 #(
      .clk_divide(((125))))
  Inst_i3c2(
      .clk(clk),
    .inst_address(address),
    .inst_data(data),
    .i2c_scl(sioc),
    .i2c_sda(siod),
    .inputs(inputs),
    .outputs(outputs),
    .reg_addr(/* open */),
    .reg_data(/* open */),
    .reg_write(/* open */),
    .error(/* open */));

  assign reset = 1'b 1;
  // Normal mode
  assign pwdn = 1'b 0;
  // Power device up
  assign xclk = sys_clk;
  always @(posedge clk) begin
    sys_clk <=  ~sys_clk;
    case(address)
    10'b 0000000000 : begin
      data <= 9'b 011100100;
    end
    10'b 0000000001 : begin
      data <= 9'b 101000010;
    end
    10'b 0000000010 : begin
      data <= 9'b 100010010;
    end
    10'b 0000000011 : begin
      data <= 9'b 110000000;
    end
    10'b 0000000100 : begin
      data <= 9'b 011111111;
    end
    10'b 0000000101 : begin
      data <= 9'b 011101001;
    end
    10'b 0000000110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000000111 : begin
      data <= 9'b 100010010;
    end
    10'b 0000001000 : begin
      data <= 9'b 100000100;
    end
    10'b 0000001001 : begin
      data <= 9'b 011111111;
    end
    10'b 0000001010 : begin
      data <= 9'b 101000010;
    end
    10'b 0000001011 : begin
      data <= 9'b 100010001;
    end
    10'b 0000001100 : begin
      data <= 9'b 100000000;
    end
    10'b 0000001101 : begin
      data <= 9'b 011111111;
    end
    10'b 0000001110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000001111 : begin
      data <= 9'b 100001100;
    end
    10'b 0000010000 : begin
      data <= 9'b 100000000;
    end
    10'b 0000010001 : begin
      data <= 9'b 011111111;
    end
    10'b 0000010010 : begin
      data <= 9'b 101000010;
    end
    10'b 0000010011 : begin
      data <= 9'b 100111110;
    end
    10'b 0000010100 : begin
      data <= 9'b 100000000;
    end
    10'b 0000010101 : begin
      data <= 9'b 011111111;
    end
    10'b 0000010110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000010111 : begin
      data <= 9'b 110001100;
    end
    10'b 0000011000 : begin
      data <= 9'b 100000000;
    end
    10'b 0000011001 : begin
      data <= 9'b 011111111;
    end
    10'b 0000011010 : begin
      data <= 9'b 101000010;
    end
    10'b 0000011011 : begin
      data <= 9'b 100000100;
    end
    10'b 0000011100 : begin
      data <= 9'b 100000000;
    end
    10'b 0000011101 : begin
      data <= 9'b 011111111;
    end
    10'b 0000011110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000011111 : begin
      data <= 9'b 101000000;
    end
    10'b 0000100000 : begin
      data <= 9'b 100010000;
    end
    10'b 0000100001 : begin
      data <= 9'b 011111111;
    end
    10'b 0000100010 : begin
      data <= 9'b 101000010;
    end
    10'b 0000100011 : begin
      data <= 9'b 100111010;
    end
    10'b 0000100100 : begin
      data <= 9'b 100000100;
    end
    10'b 0000100101 : begin
      data <= 9'b 011111111;
    end
    10'b 0000100110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000100111 : begin
      data <= 9'b 100010100;
    end
    10'b 0000101000 : begin
      data <= 9'b 100111000;
    end
    10'b 0000101001 : begin
      data <= 9'b 011111111;
    end
    10'b 0000101010 : begin
      data <= 9'b 101000010;
    end
    10'b 0000101011 : begin
      data <= 9'b 101001111;
    end
    10'b 0000101100 : begin
      data <= 9'b 101000000;
    end
    10'b 0000101101 : begin
      data <= 9'b 011111111;
    end
    10'b 0000101110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000101111 : begin
      data <= 9'b 101010000;
    end
    10'b 0000110000 : begin
      data <= 9'b 100110100;
    end
    10'b 0000110001 : begin
      data <= 9'b 011111111;
    end
    10'b 0000110010 : begin
      data <= 9'b 101000010;
    end
    10'b 0000110011 : begin
      data <= 9'b 101010001;
    end
    10'b 0000110100 : begin
      data <= 9'b 100001100;
    end
    10'b 0000110101 : begin
      data <= 9'b 011111111;
    end
    10'b 0000110110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000110111 : begin
      data <= 9'b 101010010;
    end
    10'b 0000111000 : begin
      data <= 9'b 100010111;
    end
    10'b 0000111001 : begin
      data <= 9'b 011111111;
    end
    10'b 0000111010 : begin
      data <= 9'b 101000010;
    end
    10'b 0000111011 : begin
      data <= 9'b 101010011;
    end
    10'b 0000111100 : begin
      data <= 9'b 100101001;
    end
    10'b 0000111101 : begin
      data <= 9'b 011111111;
    end
    10'b 0000111110 : begin
      data <= 9'b 101000010;
    end
    10'b 0000111111 : begin
      data <= 9'b 101010100;
    end
    10'b 0001000000 : begin
      data <= 9'b 101000000;
    end
    10'b 0001000001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001000010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001000011 : begin
      data <= 9'b 101011000;
    end
    10'b 0001000100 : begin
      data <= 9'b 100011110;
    end
    10'b 0001000101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001000110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001000111 : begin
      data <= 9'b 100111101;
    end
    10'b 0001001000 : begin
      data <= 9'b 111000000;
    end
    10'b 0001001001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001001010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001001011 : begin
      data <= 9'b 100010001;
    end
    10'b 0001001100 : begin
      data <= 9'b 100000000;
    end
    10'b 0001001101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001001110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001001111 : begin
      data <= 9'b 100010111;
    end
    10'b 0001010000 : begin
      data <= 9'b 100010001;
    end
    10'b 0001010001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001010010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001010011 : begin
      data <= 9'b 100011000;
    end
    10'b 0001010100 : begin
      data <= 9'b 101100001;
    end
    10'b 0001010101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001010110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001010111 : begin
      data <= 9'b 100110010;
    end
    10'b 0001011000 : begin
      data <= 9'b 110100100;
    end
    10'b 0001011001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001011010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001011011 : begin
      data <= 9'b 100011001;
    end
    10'b 0001011100 : begin
      data <= 9'b 100000011;
    end
    10'b 0001011101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001011110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001011111 : begin
      data <= 9'b 100011010;
    end
    10'b 0001100000 : begin
      data <= 9'b 101111011;
    end
    10'b 0001100001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001100010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001100011 : begin
      data <= 9'b 100000011;
    end
    10'b 0001100100 : begin
      data <= 9'b 100001010;
    end
    10'b 0001100101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001100110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001100111 : begin
      data <= 9'b 100001110;
    end
    10'b 0001101000 : begin
      data <= 9'b 101100001;
    end
    10'b 0001101001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001101010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001101011 : begin
      data <= 9'b 100001111;
    end
    10'b 0001101100 : begin
      data <= 9'b 101001011;
    end
    10'b 0001101101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001101110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001101111 : begin
      data <= 9'b 100010110;
    end
    10'b 0001110000 : begin
      data <= 9'b 100000010;
    end
    10'b 0001110001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001110010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001110011 : begin
      data <= 9'b 100011110;
    end
    10'b 0001110100 : begin
      data <= 9'b 100110111;
    end
    10'b 0001110101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001110110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001110111 : begin
      data <= 9'b 100100001;
    end
    10'b 0001111000 : begin
      data <= 9'b 100000010;
    end
    10'b 0001111001 : begin
      data <= 9'b 011111111;
    end
    10'b 0001111010 : begin
      data <= 9'b 101000010;
    end
    10'b 0001111011 : begin
      data <= 9'b 100100010;
    end
    10'b 0001111100 : begin
      data <= 9'b 110010001;
    end
    10'b 0001111101 : begin
      data <= 9'b 011111111;
    end
    10'b 0001111110 : begin
      data <= 9'b 101000010;
    end
    10'b 0001111111 : begin
      data <= 9'b 100101001;
    end
    10'b 0010000000 : begin
      data <= 9'b 100000111;
    end
    10'b 0010000001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010000010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010000011 : begin
      data <= 9'b 100110011;
    end
    10'b 0010000100 : begin
      data <= 9'b 100001011;
    end
    10'b 0010000101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010000110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010000111 : begin
      data <= 9'b 100110101;
    end
    10'b 0010001000 : begin
      data <= 9'b 100001011;
    end
    10'b 0010001001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010001010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010001011 : begin
      data <= 9'b 100110111;
    end
    10'b 0010001100 : begin
      data <= 9'b 100011101;
    end
    10'b 0010001101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010001110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010001111 : begin
      data <= 9'b 100111000;
    end
    10'b 0010010000 : begin
      data <= 9'b 101110001;
    end
    10'b 0010010001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010010010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010010011 : begin
      data <= 9'b 100111001;
    end
    10'b 0010010100 : begin
      data <= 9'b 100101010;
    end
    10'b 0010010101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010010110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010010111 : begin
      data <= 9'b 100111100;
    end
    10'b 0010011000 : begin
      data <= 9'b 101111000;
    end
    10'b 0010011001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010011010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010011011 : begin
      data <= 9'b 101001101;
    end
    10'b 0010011100 : begin
      data <= 9'b 101000000;
    end
    10'b 0010011101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010011110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010011111 : begin
      data <= 9'b 101001110;
    end
    10'b 0010100000 : begin
      data <= 9'b 100100000;
    end
    10'b 0010100001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010100010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010100011 : begin
      data <= 9'b 101101001;
    end
    10'b 0010100100 : begin
      data <= 9'b 100000000;
    end
    10'b 0010100101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010100110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010100111 : begin
      data <= 9'b 101101011;
    end
    10'b 0010101000 : begin
      data <= 9'b 101001010;
    end
    10'b 0010101001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010101010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010101011 : begin
      data <= 9'b 101110100;
    end
    10'b 0010101100 : begin
      data <= 9'b 100010000;
    end
    10'b 0010101101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010101110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010101111 : begin
      data <= 9'b 110001101;
    end
    10'b 0010110000 : begin
      data <= 9'b 101001111;
    end
    10'b 0010110001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010110010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010110011 : begin
      data <= 9'b 110001110;
    end
    10'b 0010110100 : begin
      data <= 9'b 100000000;
    end
    10'b 0010110101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010110110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010110111 : begin
      data <= 9'b 110001111;
    end
    10'b 0010111000 : begin
      data <= 9'b 100000000;
    end
    10'b 0010111001 : begin
      data <= 9'b 011111111;
    end
    10'b 0010111010 : begin
      data <= 9'b 101000010;
    end
    10'b 0010111011 : begin
      data <= 9'b 110010000;
    end
    10'b 0010111100 : begin
      data <= 9'b 100000000;
    end
    10'b 0010111101 : begin
      data <= 9'b 011111111;
    end
    10'b 0010111110 : begin
      data <= 9'b 101000010;
    end
    10'b 0010111111 : begin
      data <= 9'b 110010001;
    end
    10'b 0011000000 : begin
      data <= 9'b 100000000;
    end
    10'b 0011000001 : begin
      data <= 9'b 011111111;
    end
    10'b 0011000010 : begin
      data <= 9'b 101000010;
    end
    10'b 0011000011 : begin
      data <= 9'b 110010110;
    end
    10'b 0011000100 : begin
      data <= 9'b 100000000;
    end
    10'b 0011000101 : begin
      data <= 9'b 011111111;
    end
    10'b 0011000110 : begin
      data <= 9'b 101000010;
    end
    10'b 0011000111 : begin
      data <= 9'b 110011010;
    end
    10'b 0011001000 : begin
      data <= 9'b 100000000;
    end
    10'b 0011001001 : begin
      data <= 9'b 011111111;
    end
    10'b 0011001010 : begin
      data <= 9'b 101000010;
    end
    10'b 0011001011 : begin
      data <= 9'b 110110000;
    end
    10'b 0011001100 : begin
      data <= 9'b 110000100;
    end
    10'b 0011001101 : begin
      data <= 9'b 011111111;
    end
    10'b 0011001110 : begin
      data <= 9'b 101000010;
    end
    10'b 0011001111 : begin
      data <= 9'b 110110001;
    end
    10'b 0011010000 : begin
      data <= 9'b 100001100;
    end
    10'b 0011010001 : begin
      data <= 9'b 011111111;
    end
    10'b 0011010010 : begin
      data <= 9'b 101000010;
    end
    10'b 0011010011 : begin
      data <= 9'b 110110010;
    end
    10'b 0011010100 : begin
      data <= 9'b 100001110;
    end
    10'b 0011010101 : begin
      data <= 9'b 011111111;
    end
    10'b 0011010110 : begin
      data <= 9'b 101000010;
    end
    10'b 0011010111 : begin
      data <= 9'b 110110011;
    end
    10'b 0011011000 : begin
      data <= 9'b 110000010;
    end
    10'b 0011011001 : begin
      data <= 9'b 011111111;
    end
    10'b 0011011010 : begin
      data <= 9'b 101000010;
    end
    10'b 0011011011 : begin
      data <= 9'b 110111000;
    end
    10'b 0011011100 : begin
      data <= 9'b 100001010;
    end
    10'b 0011011101 : begin
      data <= 9'b 011111111;
    end
    10'b 0011011110 : begin
      data <= 9'b 011111110;
    end
    10'b 0011011111 : begin
      data <= 9'b 011111110;
    end
    10'b 0011100000 : begin
      data <= 9'b 010000000;
    end
    10'b 0011100001 : begin
      data <= 9'b 000000000;
    end
    10'b 0011100010 : begin
      data <= 9'b 000011100;
    end
    default : begin
      data <= {9{1'b0}};
    end
    endcase
  end


endmodule
