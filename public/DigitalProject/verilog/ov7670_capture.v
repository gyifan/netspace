// File ov7670_capture.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
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
// Description: Captures the pixels coming from the OV7670 camera and 
//              Stores them in block RAM
//
// The length of href last controls how often pixels are captive - (2 downto 0) stores
// one pixel every 4 cycles.
//
// "line" is used to control how often data is captured. In this case every forth 
// line
//--------------------------------------------------------------------------------
// no timescale needed

module ov7670_capture(
pclk,
rez_160x120,
rez_320x240,
vsync,
href,
d,
addr,
dout,
we
);

input pclk;
input rez_160x120;
input rez_320x240;
input vsync;
input href;
input [7:0] d;
output [18:0] addr;
output [11:0] dout;
output we;

wire pclk;
wire rez_160x120;
wire rez_320x240;
wire vsync;
wire href;
wire [7:0] d;
wire [18:0] addr;
wire [11:0] dout;
wire we;


reg [15:0] d_latch = 0;
reg [18:0] address = 0;
reg [1:0] line = 0;
reg [6:0] href_last = 0;
reg we_reg = 1'b 0;
reg href_hold = 1'b 0;
wire latched_vsync = 1'b 0;
wire latched_href = 1'b 0;
wire [7:0] latched_d = 0;

  assign addr = address;
  assign we = we_reg;
  assign dout = {d_latch[15:12],d_latch[10:7],d_latch[4:1]};
  always @(posedge pclk) begin
    if(we_reg == 1'b 1) begin
      address <= (((address)) + 1);
    end
    // This is a bit tricky href starts a pixel transfer that takes 3 cycles
    //        Input   | state after clock tick   
    //         href   | wr_hold    d_latch           dout                we address  address_next
    // cycle -1  x    |    xx      xxxxxxxxxxxxxxxx  xxxxxxxxxxxx  x   xxxx     xxxx
    // cycle 0   1    |    x1      xxxxxxxxRRRRRGGG  xxxxxxxxxxxx  x   xxxx     addr
    // cycle 1   0    |    10      RRRRRGGGGGGBBBBB  xxxxxxxxxxxx  x   addr     addr
    // cycle 2   x    |    0x      GGGBBBBBxxxxxxxx  RRRRGGGGBBBB  1   addr     addr+1
    // detect the rising edge on href - the start of the scan line
    if(href_hold == 1'b 0 && latched_href == 1'b 1) begin
      case(line)
      2'b 00 : begin
        line <= 2'b 01;
      end
      2'b 01 : begin
        line <= 2'b 10;
      end
      2'b 10 : begin
        line <= 2'b 11;
      end
      default : begin
        line <= 2'b 00;
      end
      endcase
    end
    href_hold <= latched_href;
    // capturing the data from the camera, 12-bit RGB
    if(latched_href == 1'b 1) begin
      d_latch <= {d_latch[7:0],latched_d};
    end
    we_reg <= 1'b 0;
    // Is a new screen about to start (i.e. we have to restart capturing
    if(latched_vsync == 1'b 1) begin
      address <= {19{1'b0}};
      href_last <= {7{1'b0}};
      line <= {2{1'b0}};
    end
    else begin
      // If not, set the write enable whenever we need to capture a pixel
      if((rez_160x120 == 1'b 1 && href_last[6] == 1'b 1) || (rez_320x240 == 1'b 1 && href_last[2] == 1'b 1) || (rez_160x120 == 1'b 0 && rez_320x240 == 1'b 0 && href_last[0] == 1'b 1)) begin
        if(rez_160x120 == 1'b 1) begin
          if(line == 2'b 10) begin
            we_reg <= 1'b 1;
          end
        end
        else if(rez_320x240 == 1'b 1) begin
          if(line[1] == 1'b 1) begin
            we_reg <= 1'b 1;
          end
        end
        else begin
          we_reg <= 1'b 1;
        end
        href_last <= {7{1'b0}};
      end
      else begin
        href_last <= {href_last[6 - 1:0],latched_href};
      end
    end
  end

	always @(negedge pclk)
	begin
           latched_d     <= d;
           latched_href  <= href;
           latched_vsync <= vsync;
        end

endmodule
