# Set clock
set_property PACKAGE_PIN Y9 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}] 

# assign switches to ports and set IO standards
set_property PACKAGE_PIN F22 [get_ports {switches[0]}]
set_property PACKAGE_PIN G22 [get_ports {switches[1]}]
set_property PACKAGE_PIN H22 [get_ports {switches[2]}]
set_property PACKAGE_PIN F21 [get_ports {switches[3]}]
set_property PACKAGE_PIN H19 [get_ports {switches[4]}]
set_property PACKAGE_PIN H18 [get_ports {switches[5]}]

set_property IOSTANDARD LVCMOS33 [get_ports {switches[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {switches[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {switches[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {switches[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {switches[4]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {switches[5]}] 

# BTNC is enter, BTNR is reset
set_property PACKAGE_PIN P16 [get_ports {enter}]
set_property PACKAGE_PIN R18 [get_ports {reset}]

set_property IOSTANDARD LVCMOS33 [get_ports {enter}] 
set_property IOSTANDARD LVCMOS33 [get_ports {reset}] 

# LED0 is Low, LED1 is high
set_property PACKAGE_PIN T22 [get_ports {redLED}]
set_property PACKAGE_PIN T21 [get_ports {greenLED}]

set_property IOSTANDARD LVCMOS33 [get_ports {redLED}] 
set_property IOSTANDARD LVCMOS33 [get_ports {greenLED}] 

# Assign cathodes to JA1-JA4, JA7-JA9
set_property PACKAGE_PIN Y11 [get_ports {cathodes[6]}]
set_property PACKAGE_PIN AA11 [get_ports {cathodes[5]}]
set_property PACKAGE_PIN Y10 [get_ports {cathodes[4]}]
set_property PACKAGE_PIN AA9 [get_ports {cathodes[3]}]
set_property PACKAGE_PIN AB11 [get_ports {cathodes[2]}]
set_property PACKAGE_PIN AB10 [get_ports {cathodes[1]}]
set_property PACKAGE_PIN AB9 [get_ports {cathodes[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[4]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[5]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cathodes[6]}] 

# Assign anodes to JB1 and JB2
set_property PACKAGE_PIN W12 [get_ports {anodes[0]}]
set_property PACKAGE_PIN W11 [get_ports {anodes[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {anodes[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {anodes[1]}] 