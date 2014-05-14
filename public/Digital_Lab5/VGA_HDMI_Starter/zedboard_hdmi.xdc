set_property PACKAGE_PIN Y9 [get_ports {clk_100}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_100}]
create_clock -name sys_clk_pin -period 10 [get_ports clk_100]
#NET "clk_100" TNM_NET = clk_100;
#%TIMESPEC TS_clk_100 = PERIOD "clk_100" 10 ns HIGH 50%;

#BACKBONE
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_100_IBUF]

set_property PACKAGE_PIN W18 [get_ports {hdmi_clk}] 
set_property PACKAGE_PIN Y13 [get_ports {hdmi_d[0]}] 
set_property PACKAGE_PIN AA13 [get_ports {hdmi_d[1]}] 
set_property PACKAGE_PIN AA14 [get_ports {hdmi_d[2]}] 
set_property PACKAGE_PIN Y14 [get_ports {hdmi_d[3]}]  
set_property PACKAGE_PIN AB15 [get_ports {hdmi_d[4]}] 
set_property PACKAGE_PIN AB16 [get_ports {hdmi_d[5]}] 
set_property PACKAGE_PIN AA16 [get_ports {hdmi_d[6]}] 
set_property PACKAGE_PIN AB17 [get_ports {hdmi_d[7]}]
set_property PACKAGE_PIN AA17 [get_ports {hdmi_d[8]}] 
set_property PACKAGE_PIN Y15 [get_ports {hdmi_d[9]}]  
set_property PACKAGE_PIN W13 [get_ports {hdmi_d[10]}]
set_property PACKAGE_PIN W15 [get_ports {hdmi_d[11]}] 
set_property PACKAGE_PIN V15 [get_ports {hdmi_d[12]}]
set_property PACKAGE_PIN U17 [get_ports {hdmi_d[13]}]
set_property PACKAGE_PIN V14 [get_ports {hdmi_d[14]}]
set_property PACKAGE_PIN V13 [get_ports {hdmi_d[15]}]
set_property PACKAGE_PIN U16 [get_ports {hdmi_de}] 
set_property PACKAGE_PIN V17 [get_ports {hdmi_hsync}]
set_property PACKAGE_PIN W17 [get_ports {hdmi_vsync}]
set_property PACKAGE_PIN AA18 [get_ports {hdmi_scl}] 
set_property PACKAGE_PIN Y16 [get_ports {hdmi_sda}] 
set_property PULLUP true [get_ports {hdmi_sda}]
#set_property PACKAGE_PIN W16 [get_ports {hdmi_INT}]  # "HD-INT"
#set_property PACKAGE_PIN U15 [get_ports {hdmi_SPDIF}]  # "HD-SPDIF"
#set_property PACKAGE_PIN Y18 [get_ports {hdmi_SPDIFO}]  # "HD-SPDIFO"

set_property PACKAGE_PIN V20 [get_ports {vga_r[0]}]  
set_property PACKAGE_PIN U20 [get_ports {vga_r[1]}]  
set_property PACKAGE_PIN V19 [get_ports {vga_r[2]}]  
set_property PACKAGE_PIN V18 [get_ports {vga_r[3]}]  
set_property PACKAGE_PIN AB22 [get_ports {vga_g[0]}]
set_property PACKAGE_PIN AA22 [get_ports {vga_g[1]}]
set_property PACKAGE_PIN AB21 [get_ports {vga_g[2]}]
set_property PACKAGE_PIN AA21 [get_ports {vga_g[3]}]
set_property PACKAGE_PIN Y21 [get_ports {vga_b[0]}]
set_property PACKAGE_PIN Y20 [get_ports {vga_b[1]}]
set_property PACKAGE_PIN AB20 [get_ports {vga_b[2]}]
set_property PACKAGE_PIN AB19 [get_ports {vga_b[3]}]
set_property PACKAGE_PIN AA19 [get_ports {vga_hs}]
set_property PACKAGE_PIN Y19 [get_ports {vga_vs}]

set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[10]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[11]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[12]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[13]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_d[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_de}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_hsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_vsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_sda}]
#set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_INT}]  # "HD-INT"
#set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_SPDIF}]  # "HD-SPDIF"
#set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_SPDIFO}]  # "HD-SPDIFO"

set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_hs}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_vs}]