// File vga.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
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
// Description: Generate analog 640x480 VGA, double-doublescanned from 19200 bytes of RAM
//
//--------------------------------------------------------------------------------
// no timescale needed

module vga(
clk25,
vga_red,
vga_green,
vga_blue,
vga_hSync,
vga_vSync,
frame_addr,
frame_pixel,
led
);

input clk25;
output [3:0] vga_red;
output [3:0] vga_green;
output [3:0] vga_blue;
output vga_hSync;
output vga_vSync;
output [18:0] frame_addr;
input [11:0] frame_pixel;
output [7:0] led;

wire clk25;
reg [3:0] vga_red;
reg [3:0] vga_green;
reg [3:0] vga_blue;
reg vga_hSync;
reg vga_vSync;
wire [18:0] frame_addr;
wire [11:0] frame_pixel;
wire [7:0] led;

// temp rgb registers for filtering purpose
reg [3:0] vga_red_r;
reg [3:0] vga_green_r;
reg [3:0] vga_blue_r;
reg [9:0] hLaser = 0;
reg [9:0] vLaser = 0;

// Timing constants
parameter hRez = 640;
parameter hStartSync = 640 + 16;
parameter hEndSync = 640 + 16 + 96;
parameter hMaxCount = 800;
parameter vRez = 480;
parameter vStartSync = 480 + 10;
parameter vEndSync = 480 + 10 + 2;
parameter vMaxCount = 480 + 10 + 2 + 33;
parameter hsync_active = 1'b 0;
parameter vsync_active = 1'b 0;
reg [9:0] hCounter = 0;
reg [9:0] vCounter = 0;
reg [18:0] address = 0;
reg blank = 1'b 1;

  assign frame_addr = (address);
  always @(posedge clk25) begin
    // Count the lines and rows      
    if(hCounter == (hMaxCount - 1)) begin
      hCounter <= {10{1'b0}};
      if(vCounter == (vMaxCount - 1)) begin
        vCounter <= {10{1'b0}};
      end
      else begin
        vCounter <= vCounter + 1;
      end
    end
    else begin
      hCounter <= hCounter + 1;
    end
	 
    if(blank == 1'b 0) begin
      vga_red_r <= frame_pixel[11:8];
      vga_green_r <= frame_pixel[7:4];
      vga_blue_r <= frame_pixel[3:0];
    end
    else begin
      vga_red_r <= {4{1'b0}};
      vga_green_r <= {4{1'b0}};
      vga_blue_r <= {4{1'b0}};
    end
	 
    if(vCounter >= vRez) begin
      address <= {19{1'b0}};
      blank <= 1'b 1;
    end
    else begin
      if(hCounter < 640) begin
        blank <= 1'b 0;
        address <= address + 1;
      end
      else begin
        blank <= 1'b 1;
      end
    end
	 
    // Are we in the hSync pulse? (one has been added to include frame_buffer_latency)
    if(hCounter > hStartSync && hCounter <= hEndSync) begin
      vga_hSync <= hsync_active;
    end
    else begin
      vga_hSync <=  ~hsync_active;
    end
	 
    // Are we in the vSync pulse?
    if(vCounter >= vStartSync && vCounter < vEndSync) begin
      vga_vSync <= vsync_active;
    end
    else begin
      vga_vSync <=  ~vsync_active;
    end
	 
	 // Update the laser location
	 if(vga_red_r > 14 && hCounter < 640 && hCounter > 4)
	 begin
		vLaser <= vCounter < 480 ? vCounter : vLaser;
		hLaser <= hCounter;
	 end

  end
  
  always @(*)
  begin
	 if(hCounter < hLaser + 10 && hCounter > hLaser - 10)
	 begin
	   if(vCounter < vLaser + 10 && vCounter > vLaser - 10) begin
		  vga_red <= 4'b0;
		  vga_green <= 4'b0;
		  vga_blue <= 4'b0;
		end
		else begin
        vga_red <= vga_red_r;
        vga_green <= vga_green_r;
        vga_blue <= vga_blue_r;
		end
	 end 
	 else
	 begin
      vga_red <= vga_red_r;
      vga_green <= vga_green_r;
      vga_blue <= vga_blue_r;
	 end
  end

  assign led = hLaser >> 1;

//assign vga_red = (vga_red_r > 14) ? 4'b1111 : 4'b0;
//assign vga_green = (vga_red_r > 14) ? 4'b1111 : 4'b0;
//assign vga_blue = (vga_red_r > 14) ? 4'b1111 : 4'b0;

endmodule
