// File i3c2.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
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
// Create Date:    21:30:20 05/25/2013 
// Design Name:    i3c2 - Intelligent I2C Controller
// Module Name:    i3c2 - Behavioral 
// Description:    The main CPU/logic
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//--------------------------------------------------------------------------------
// no timescale needed

module i3c2(
clk,
inst_address,
inst_data,
i2c_scl,
i2c_sda,
inputs,
outputs,
reg_addr,
reg_data,
reg_write,
error
);

parameter [7:0] clk_divide;
input clk;
output [9:0] inst_address;
input [8:0] inst_data;
output i2c_scl;
inout i2c_sda;
input [15:0] inputs;
output [15:0] outputs;
output [4:0] reg_addr;
output [7:0] reg_data;
output reg_write;
output error;

wire clk;
wire [9:0] inst_address;
wire [8:0] inst_data;
reg i2c_scl;
reg i2c_sda;
wire [15:0] inputs;
reg [15:0] outputs;
reg [4:0] reg_addr;
reg [7:0] reg_data;
reg reg_write;
reg error;


parameter STATE_RUN = 4'b 0000;
parameter STATE_DELAY = 4'b 0001;
parameter STATE_I2C_START = 4'b 0010;
parameter STATE_I2C_BITS = 4'b 0011;
parameter STATE_I2C_STOP = 4'b 0100;
reg [3:0] state = STATE_RUN;
parameter OPCODE_JUMP = 4'b 0000;
parameter OPCODE_SKIPSET = 4'b 0001;
parameter OPCODE_SKIPCLEAR = 4'b 0010;
parameter OPCODE_SET = 4'b 0011;
parameter OPCODE_CLEAR = 4'b 0100;
parameter OPCODE_I2C_READ = 4'b 0101;
parameter OPCODE_DELAY = 4'b 0110;
parameter OPCODE_SKIPACK = 4'b 0111;
parameter OPCODE_SKIPNACK = 4'b 1000;
parameter OPCODE_NOP = 4'b 1001;
parameter OPCODE_I2C_STOP = 4'b 1010;
parameter OPCODE_I2C_WRITE = 4'b 1011;
parameter OPCODE_WRITELOW = 4'b 1100;
parameter OPCODE_WRITEHI = 4'b 1101;
parameter OPCODE_UNKNOWN = 4'b 1110;
wire [3:0] opcode;
reg ack_flag = 1'b 0;
reg skip = 1'b 1;  // IGNORE THE FIRST INSTRUCTION
// I2C status
reg i2c_doing_read = 1'b 0;
reg i2c_started = 1'b 0;
reg [3:0] i2c_bits_left;  // counters     
reg [9:0] pcnext = 0;
reg [15:0] delay;
reg [7:0] bitcount;  // Input/output data
reg [8:0] i2c_data;

  // |Opcode   | Instruction | Action
  // +---------+-------------+----------------------------------------
  // |00nnnnnnn| JUMP m      | Set PC to m (n = m/8)
  // |01000nnnn| SKIPCLEAR n | Skip if input n clear
  // |01001nnnn| SKIPSET n   | skip if input n set
  // |01010nnnn| CLEAR n     | Clear output n
  // |01011nnnn| SET n       | Set output n
  // |0110nnnnn| READ n      | Read to register n
  // |01110nnnn| DELAY m     | Delay m clock cycles (n = log2(m))
  // |011110000| SKIPNACK    | Skip if NACK is set
  // |011110001| SKIPACK     | Skip if ACK is set
  // |011110010| WRITELOW    | Write inputs 7 downto 0 to the I2C bus
  // |011110011| WRITEHI     | Write inputs 15 downto 8 to the I2C bus
  // |011110100| USER0       | User defined
  // |.........|             |
  // |011111110| USER9       | User defined
  // |011111111| STOP        | Send Stop on i2C bus
  // |1nnnnnnnn| WRITE n     | Output n on I2C bus
  assign opcode = inst_data[8:7] == 2'b 00 ? OPCODE_JUMP : inst_data[8:4] == 5'b 01000 ? OPCODE_SKIPCLEAR : inst_data[8:4] == 5'b 01001 ? OPCODE_SKIPSET : inst_data[8:4] == 5'b 01010 ? OPCODE_CLEAR : inst_data[8:4] == 5'b 01011 ? OPCODE_SET : inst_data[8:5] == 4'b 0110 ? OPCODE_I2C_READ : inst_data[8:4] == 5'b 01110 ? OPCODE_DELAY : inst_data[8:0] == 9'b 011110000 ? OPCODE_SKIPACK : inst_data[8:0] == 9'b 011110001 ? OPCODE_SKIPNACK : inst_data[8:0] == 9'b 011110010 ? OPCODE_WRITELOW : inst_data[8:0] == 9'b 011110011 ? OPCODE_WRITEHI : inst_data[8:0] == 9'b 011111110 ? OPCODE_NOP : inst_data[8:0] == 9'b 011111111 ? OPCODE_I2C_STOP : inst_data[8:8] == 1'b 1 ? OPCODE_I2C_WRITE : OPCODE_UNKNOWN;
  assign inst_address = (pcnext);
  always @(posedge clk) begin
    case(state)
    STATE_I2C_START : begin
      i2c_started <= 1'b 1;
      i2c_scl <= 1'b 1;
      if(bitcount == ({1'b 0,clk_divide[7:1]})) begin
        i2c_sda <= 1'b 0;
      end
      if(bitcount == 0) begin
        state <= STATE_I2C_BITS;
        i2c_scl <= 1'b 0;
        bitcount <= (clk_divide);
      end
      else begin
        bitcount <= bitcount - 1;
      end
    end
    STATE_I2C_BITS : begin
      // scl has always just lowered '0' on entry
      // set the data half way through clock low half of the cycle
      if(bitcount == (((clk_divide)) - ({2'b 00,clk_divide[7:2]}))) begin
        if(i2c_data[8] == 1'b 0) begin
          i2c_sda <= 1'b 0;
        end
        else begin
          i2c_sda <= 1'b Z;
        end
      end
      // raise the clock half way thorugh
      if(bitcount == ({1'b 0,clk_divide[7:1]})) begin
        i2c_scl <= 1'b 1;
      end
      // Input bits three quarters through the cycle
      if(bitcount == ({2'b 00,clk_divide[7:2]})) begin
        i2c_data <= {i2c_data[7:0],i2c_sda};
      end
      // lower the clock at the end of the cycle
      if(bitcount == 0) begin
        i2c_scl <= 1'b 0;
        if(i2c_bits_left == 3'b 000) begin
          i2c_scl <= 1'b 0;
          if(i2c_doing_read == 1'b 1) begin
            reg_data <= i2c_data[8:1];
            reg_write <= 1'b 1;
          end
          ack_flag <=  ~i2c_data[0];
          state <= STATE_RUN;
          pcnext <= pcnext + 1;
        end
        else begin
          i2c_bits_left <= i2c_bits_left - 1;
        end
        bitcount <= (clk_divide);
      end
      else begin
        bitcount <= bitcount - 1;
      end
    end
    STATE_I2C_STOP : begin
      // clock stays high, and data goes high half way through a bit
      i2c_started <= 1'b 0;
      if(bitcount == (((clk_divide)) - ({2'b 00,clk_divide[7:2]}))) begin
        i2c_sda <= 1'b 0;
      end
      if(bitcount == ({1'b 0,clk_divide[7:1]})) begin
        i2c_scl <= 1'b 1;
      end
      if(bitcount == ({2'b 00,clk_divide[7:2]})) begin
        i2c_sda <= 1'b Z;
      end
      if(bitcount == 0) begin
        state <= STATE_RUN;
        pcnext <= pcnext + 1;
      end
      else begin
        bitcount <= bitcount - 1;
      end
    end
    STATE_DELAY : begin
      if(bitcount != 0) begin
        bitcount <= bitcount - 1;
      end
      else begin
        if(delay == 0) begin
          pcnext <= pcnext + 1;
          state <= STATE_RUN;
        end
        else begin
          delay <= delay - 1;
          bitcount <= ((clk_divide)) - 1;
        end
      end
    end
    STATE_RUN : begin
      reg_data <= 8'b XXXXXXXX;
      if(skip == 1'b 1) begin
        // Do nothing for a cycle other than unset 'skip';
        skip <= 1'b 0;
        pcnext <= pcnext + 1;
      end
      else begin
        case(opcode)
        OPCODE_JUMP : begin
          // Ignore the next instruciton while fetching the jump destination
          skip <= 1'b 1;
          pcnext <= {(inst_data[6:0]),3'b 000};
        end
        OPCODE_I2C_WRITE : begin
          i2c_data <= {inst_data[7:0],1'b 1};
          bitcount <= (clk_divide);
          i2c_doing_read <= 1'b 0;
          i2c_bits_left <= 4'b 1000;
          if(i2c_started == 1'b 0) begin
            state <= STATE_I2C_START;
          end
          else begin
            state <= STATE_I2C_BITS;
          end
        end
        OPCODE_I2C_READ : begin
          reg_addr <= inst_data[4:0];
          i2c_data <= {8'h FF,1'b 1};
          // keep the SDA pulled up while clocking in data & ACK
          bitcount <= (clk_divide);
          i2c_bits_left <= 4'b 1000;
          i2c_doing_read <= 1'b 1;
          if(i2c_started == 1'b 0) begin
            state <= STATE_I2C_START;
          end
          else begin
            state <= STATE_I2C_BITS;
          end
        end
        OPCODE_SKIPCLEAR : begin
          skip <=  ~(inputs[to_integer[(inst_data[3:0])]] ^ inst_data[4]);
          pcnext <= pcnext + 1;
        end
        OPCODE_SKIPSET : begin
          skip <=  ~(inputs[to_integer[(inst_data[3:0])]] ^ inst_data[4]);
          pcnext <= pcnext + 1;
        end
        OPCODE_CLEAR : begin
          outputs[to_integer[(inst_data[3:0])]] <= inst_data[4];
          pcnext <= pcnext + 1;
        end
        OPCODE_SET : begin
          outputs[to_integer[(inst_data[3:0])]] <= inst_data[4];
          pcnext <= pcnext + 1;
        end
        OPCODE_SKIPACK : begin
          skip <= ack_flag;
          pcnext <= pcnext + 1;
        end
        OPCODE_SKIPNACK : begin
          skip <=  ~ack_flag;
          pcnext <= pcnext + 1;
        end
        OPCODE_DELAY : begin
          state <= STATE_DELAY;
          bitcount <= (clk_divide);
          case(inst_data[3:0])
          4'b 0000 : begin
            delay <= 16'h 0001;
          end
          4'b 0001 : begin
            delay <= 16'h 0002;
          end
          4'b 0010 : begin
            delay <= 16'h 0004;
          end
          4'b 0011 : begin
            delay <= 16'h 0008;
          end
          4'b 0100 : begin
            delay <= 16'h 0010;
          end
          4'b 0101 : begin
            delay <= 16'h 0020;
          end
          4'b 0110 : begin
            delay <= 16'h 0040;
          end
          4'b 0111 : begin
            delay <= 16'h 0080;
          end
          4'b 1000 : begin
            delay <= 16'h 0100;
          end
          4'b 1001 : begin
            delay <= 16'h 0200;
          end
          4'b 1010 : begin
            delay <= 16'h 0400;
          end
          4'b 1011 : begin
            delay <= 16'h 0800;
          end
          4'b 1100 : begin
            delay <= 16'h 1000;
          end
          4'b 1101 : begin
            delay <= 16'h 2000;
          end
          4'b 1110 : begin
            delay <= 16'h 4000;
          end
          default : begin
            delay <= 16'h 8000;
          end
          endcase
        end
        OPCODE_I2C_STOP : begin
          bitcount <= (clk_divide);
          state <= STATE_I2C_STOP;
        end
        OPCODE_NOP : begin
          pcnext <= pcnext + 1;
        end
        default : begin
          error <= 1'b 1;
        end
        endcase
      end
    end
    default : begin
      state <= STATE_RUN;
      pcnext <= {10{1'b0}};
      skip <= 1'b 1;
    end
    endcase
  end


endmodule
