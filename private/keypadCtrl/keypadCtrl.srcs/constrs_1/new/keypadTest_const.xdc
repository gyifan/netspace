# Set clock
set_property PACKAGE_PIN Y9 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}] 

# Test
set_property PACKAGE_PIN V10 [get_ports {test}]
set_property IOSTANDARD LVCMOS33 [get_ports {test}] 

# Assign rows to JC1_P-JC2_N
set_property PACKAGE_PIN AB7 [get_ports {rows[0]}]
set_property PACKAGE_PIN AB6 [get_ports {rows[1]}]
set_property PACKAGE_PIN Y4 [get_ports {rows[2]}]
set_property PACKAGE_PIN AA4 [get_ports {rows[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {rows[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rows[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rows[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rows[3]}] 

# Assign columns to JC3_P-JC3_N
set_property PACKAGE_PIN R6 [get_ports {columns[0]}]
set_property PACKAGE_PIN T6 [get_ports {columns[1]}]
set_property PACKAGE_PIN T4 [get_ports {columns[2]}]
set_property PACKAGE_PIN U4 [get_ports {columns[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {columns[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {columns[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {columns[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {columns[3]}] 

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