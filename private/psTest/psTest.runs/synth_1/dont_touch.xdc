# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# Block Designs: bd/pstest/pstest.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==pstest || ORIG_REF_NAME==pstest}]

# IP: bd/pstest/ip/pstest_processing_system7_0_0/pstest_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==pstest_processing_system7_0_0 || ORIG_REF_NAME==pstest_processing_system7_0_0}]

# XDC: bd/pstest/ip/pstest_processing_system7_0_0/pstest_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==pstest_processing_system7_0_0 || ORIG_REF_NAME==pstest_processing_system7_0_0}] {/inst }]/inst ]]

# XDC: bd/pstest/pstest_ooc.xdc
