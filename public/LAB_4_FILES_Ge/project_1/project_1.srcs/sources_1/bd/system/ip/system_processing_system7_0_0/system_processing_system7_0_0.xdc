############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       ps7_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              xc7z020clg484-1
##                    Device Size:        xc7z020
##                    Package:            clg484
##                    Speedgrade:         -1
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################


############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  GPIO / gpio[53] / MIO[53]
set_property iostandard "LVCMOS18" [get_ports "MIO[53]"]
set_property PACKAGE_PIN "C12" [get_ports "MIO[53]"]
set_property slew "slow" [get_ports "MIO[53]"]
set_property drive "8" [get_ports "MIO[53]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[53]"]
#  GPIO / gpio[52] / MIO[52]
set_property iostandard "LVCMOS18" [get_ports "MIO[52]"]
set_property PACKAGE_PIN "D10" [get_ports "MIO[52]"]
set_property slew "slow" [get_ports "MIO[52]"]
set_property drive "8" [get_ports "MIO[52]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[52]"]
#  GPIO / gpio[51] / MIO[51]
set_property iostandard "LVCMOS18" [get_ports "MIO[51]"]
set_property PACKAGE_PIN "C10" [get_ports "MIO[51]"]
set_property slew "slow" [get_ports "MIO[51]"]
set_property drive "8" [get_ports "MIO[51]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[51]"]
#  GPIO / gpio[50] / MIO[50]
set_property iostandard "LVCMOS18" [get_ports "MIO[50]"]
set_property PACKAGE_PIN "D13" [get_ports "MIO[50]"]
set_property slew "slow" [get_ports "MIO[50]"]
set_property drive "8" [get_ports "MIO[50]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[50]"]
#  UART 1 / rx / MIO[49]
set_property iostandard "LVCMOS18" [get_ports "MIO[49]"]
set_property PACKAGE_PIN "C14" [get_ports "MIO[49]"]
set_property slew "slow" [get_ports "MIO[49]"]
set_property drive "8" [get_ports "MIO[49]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[49]"]
#  UART 1 / tx / MIO[48]
set_property iostandard "LVCMOS18" [get_ports "MIO[48]"]
set_property PACKAGE_PIN "D11" [get_ports "MIO[48]"]
set_property slew "slow" [get_ports "MIO[48]"]
set_property drive "8" [get_ports "MIO[48]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[48]"]
#  GPIO / gpio[47] / MIO[47]
set_property iostandard "LVCMOS18" [get_ports "MIO[47]"]
set_property PACKAGE_PIN "B10" [get_ports "MIO[47]"]
set_property slew "slow" [get_ports "MIO[47]"]
set_property drive "8" [get_ports "MIO[47]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[47]"]
#  GPIO / gpio[46] / MIO[46]
set_property iostandard "LVCMOS18" [get_ports "MIO[46]"]
set_property PACKAGE_PIN "D12" [get_ports "MIO[46]"]
set_property slew "slow" [get_ports "MIO[46]"]
set_property drive "8" [get_ports "MIO[46]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[46]"]
#  GPIO / gpio[45] / MIO[45]
set_property iostandard "LVCMOS18" [get_ports "MIO[45]"]
set_property PACKAGE_PIN "B9" [get_ports "MIO[45]"]
set_property slew "fast" [get_ports "MIO[45]"]
set_property drive "8" [get_ports "MIO[45]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[45]"]
#  GPIO / gpio[44] / MIO[44]
set_property iostandard "LVCMOS18" [get_ports "MIO[44]"]
set_property PACKAGE_PIN "E13" [get_ports "MIO[44]"]
set_property slew "fast" [get_ports "MIO[44]"]
set_property drive "8" [get_ports "MIO[44]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[44]"]
#  GPIO / gpio[43] / MIO[43]
set_property iostandard "LVCMOS18" [get_ports "MIO[43]"]
set_property PACKAGE_PIN "B11" [get_ports "MIO[43]"]
set_property slew "fast" [get_ports "MIO[43]"]
set_property drive "8" [get_ports "MIO[43]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[43]"]
#  GPIO / gpio[42] / MIO[42]
set_property iostandard "LVCMOS18" [get_ports "MIO[42]"]
set_property PACKAGE_PIN "D8" [get_ports "MIO[42]"]
set_property slew "fast" [get_ports "MIO[42]"]
set_property drive "8" [get_ports "MIO[42]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[42]"]
#  GPIO / gpio[41] / MIO[41]
set_property iostandard "LVCMOS18" [get_ports "MIO[41]"]
set_property PACKAGE_PIN "C8" [get_ports "MIO[41]"]
set_property slew "fast" [get_ports "MIO[41]"]
set_property drive "8" [get_ports "MIO[41]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[41]"]
#  GPIO / gpio[40] / MIO[40]
set_property iostandard "LVCMOS18" [get_ports "MIO[40]"]
set_property PACKAGE_PIN "E14" [get_ports "MIO[40]"]
set_property slew "fast" [get_ports "MIO[40]"]
set_property drive "8" [get_ports "MIO[40]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[40]"]
#  GPIO / gpio[39] / MIO[39]
set_property iostandard "LVCMOS18" [get_ports "MIO[39]"]
set_property PACKAGE_PIN "C13" [get_ports "MIO[39]"]
set_property slew "fast" [get_ports "MIO[39]"]
set_property drive "8" [get_ports "MIO[39]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[39]"]
#  GPIO / gpio[38] / MIO[38]
set_property iostandard "LVCMOS18" [get_ports "MIO[38]"]
set_property PACKAGE_PIN "F13" [get_ports "MIO[38]"]
set_property slew "fast" [get_ports "MIO[38]"]
set_property drive "8" [get_ports "MIO[38]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[38]"]
#  GPIO / gpio[37] / MIO[37]
set_property iostandard "LVCMOS18" [get_ports "MIO[37]"]
set_property PACKAGE_PIN "B14" [get_ports "MIO[37]"]
set_property slew "fast" [get_ports "MIO[37]"]
set_property drive "8" [get_ports "MIO[37]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[37]"]
#  GPIO / gpio[36] / MIO[36]
set_property iostandard "LVCMOS18" [get_ports "MIO[36]"]
set_property PACKAGE_PIN "A9" [get_ports "MIO[36]"]
set_property slew "fast" [get_ports "MIO[36]"]
set_property drive "8" [get_ports "MIO[36]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[36]"]
#  GPIO / gpio[35] / MIO[35]
set_property iostandard "LVCMOS18" [get_ports "MIO[35]"]
set_property PACKAGE_PIN "F14" [get_ports "MIO[35]"]
set_property slew "fast" [get_ports "MIO[35]"]
set_property drive "8" [get_ports "MIO[35]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[35]"]
#  GPIO / gpio[34] / MIO[34]
set_property iostandard "LVCMOS18" [get_ports "MIO[34]"]
set_property PACKAGE_PIN "B12" [get_ports "MIO[34]"]
set_property slew "fast" [get_ports "MIO[34]"]
set_property drive "8" [get_ports "MIO[34]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[34]"]
#  GPIO / gpio[33] / MIO[33]
set_property iostandard "LVCMOS18" [get_ports "MIO[33]"]
set_property PACKAGE_PIN "G13" [get_ports "MIO[33]"]
set_property slew "fast" [get_ports "MIO[33]"]
set_property drive "8" [get_ports "MIO[33]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[33]"]
#  GPIO / gpio[32] / MIO[32]
set_property iostandard "LVCMOS18" [get_ports "MIO[32]"]
set_property PACKAGE_PIN "C7" [get_ports "MIO[32]"]
set_property slew "fast" [get_ports "MIO[32]"]
set_property drive "8" [get_ports "MIO[32]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[32]"]
#  GPIO / gpio[31] / MIO[31]
set_property iostandard "LVCMOS18" [get_ports "MIO[31]"]
set_property PACKAGE_PIN "F9" [get_ports "MIO[31]"]
set_property slew "fast" [get_ports "MIO[31]"]
set_property drive "8" [get_ports "MIO[31]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[31]"]
#  GPIO / gpio[30] / MIO[30]
set_property iostandard "LVCMOS18" [get_ports "MIO[30]"]
set_property PACKAGE_PIN "A11" [get_ports "MIO[30]"]
set_property slew "fast" [get_ports "MIO[30]"]
set_property drive "8" [get_ports "MIO[30]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[30]"]
#  GPIO / gpio[29] / MIO[29]
set_property iostandard "LVCMOS18" [get_ports "MIO[29]"]
set_property PACKAGE_PIN "E8" [get_ports "MIO[29]"]
set_property slew "fast" [get_ports "MIO[29]"]
set_property drive "8" [get_ports "MIO[29]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[29]"]
#  GPIO / gpio[28] / MIO[28]
set_property iostandard "LVCMOS18" [get_ports "MIO[28]"]
set_property PACKAGE_PIN "A12" [get_ports "MIO[28]"]
set_property slew "fast" [get_ports "MIO[28]"]
set_property drive "8" [get_ports "MIO[28]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[28]"]
#  GPIO / gpio[27] / MIO[27]
set_property iostandard "LVCMOS18" [get_ports "MIO[27]"]
set_property PACKAGE_PIN "D7" [get_ports "MIO[27]"]
set_property slew "fast" [get_ports "MIO[27]"]
set_property drive "8" [get_ports "MIO[27]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[27]"]
#  GPIO / gpio[26] / MIO[26]
set_property iostandard "LVCMOS18" [get_ports "MIO[26]"]
set_property PACKAGE_PIN "A13" [get_ports "MIO[26]"]
set_property slew "fast" [get_ports "MIO[26]"]
set_property drive "8" [get_ports "MIO[26]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[26]"]
#  GPIO / gpio[25] / MIO[25]
set_property iostandard "LVCMOS18" [get_ports "MIO[25]"]
set_property PACKAGE_PIN "F12" [get_ports "MIO[25]"]
set_property slew "fast" [get_ports "MIO[25]"]
set_property drive "8" [get_ports "MIO[25]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[25]"]
#  GPIO / gpio[24] / MIO[24]
set_property iostandard "LVCMOS18" [get_ports "MIO[24]"]
set_property PACKAGE_PIN "B7" [get_ports "MIO[24]"]
set_property slew "fast" [get_ports "MIO[24]"]
set_property drive "8" [get_ports "MIO[24]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[24]"]
#  GPIO / gpio[23] / MIO[23]
set_property iostandard "LVCMOS18" [get_ports "MIO[23]"]
set_property PACKAGE_PIN "E11" [get_ports "MIO[23]"]
set_property slew "fast" [get_ports "MIO[23]"]
set_property drive "8" [get_ports "MIO[23]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[23]"]
#  GPIO / gpio[22] / MIO[22]
set_property iostandard "LVCMOS18" [get_ports "MIO[22]"]
set_property PACKAGE_PIN "A14" [get_ports "MIO[22]"]
set_property slew "fast" [get_ports "MIO[22]"]
set_property drive "8" [get_ports "MIO[22]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[22]"]
#  GPIO / gpio[21] / MIO[21]
set_property iostandard "LVCMOS18" [get_ports "MIO[21]"]
set_property PACKAGE_PIN "F11" [get_ports "MIO[21]"]
set_property slew "fast" [get_ports "MIO[21]"]
set_property drive "8" [get_ports "MIO[21]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[21]"]
#  GPIO / gpio[20] / MIO[20]
set_property iostandard "LVCMOS18" [get_ports "MIO[20]"]
set_property PACKAGE_PIN "A8" [get_ports "MIO[20]"]
set_property slew "fast" [get_ports "MIO[20]"]
set_property drive "8" [get_ports "MIO[20]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[20]"]
#  GPIO / gpio[19] / MIO[19]
set_property iostandard "LVCMOS18" [get_ports "MIO[19]"]
set_property PACKAGE_PIN "E10" [get_ports "MIO[19]"]
set_property slew "fast" [get_ports "MIO[19]"]
set_property drive "8" [get_ports "MIO[19]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[19]"]
#  GPIO / gpio[18] / MIO[18]
set_property iostandard "LVCMOS18" [get_ports "MIO[18]"]
set_property PACKAGE_PIN "A7" [get_ports "MIO[18]"]
set_property slew "fast" [get_ports "MIO[18]"]
set_property drive "8" [get_ports "MIO[18]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[18]"]
#  GPIO / gpio[17] / MIO[17]
set_property iostandard "LVCMOS18" [get_ports "MIO[17]"]
set_property PACKAGE_PIN "E9" [get_ports "MIO[17]"]
set_property slew "fast" [get_ports "MIO[17]"]
set_property drive "8" [get_ports "MIO[17]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[17]"]
#  GPIO / gpio[16] / MIO[16]
set_property iostandard "LVCMOS18" [get_ports "MIO[16]"]
set_property PACKAGE_PIN "D6" [get_ports "MIO[16]"]
set_property slew "fast" [get_ports "MIO[16]"]
set_property drive "8" [get_ports "MIO[16]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[16]"]
#  GPIO / gpio[15] / MIO[15]
set_property iostandard "LVCMOS33" [get_ports "MIO[15]"]
set_property PACKAGE_PIN "E6" [get_ports "MIO[15]"]
set_property slew "slow" [get_ports "MIO[15]"]
set_property drive "8" [get_ports "MIO[15]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[15]"]
#  GPIO / gpio[14] / MIO[14]
set_property iostandard "LVCMOS33" [get_ports "MIO[14]"]
set_property PACKAGE_PIN "B6" [get_ports "MIO[14]"]
set_property slew "slow" [get_ports "MIO[14]"]
set_property drive "8" [get_ports "MIO[14]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[14]"]
#  GPIO / gpio[13] / MIO[13]
set_property iostandard "LVCMOS33" [get_ports "MIO[13]"]
set_property PACKAGE_PIN "A6" [get_ports "MIO[13]"]
set_property slew "slow" [get_ports "MIO[13]"]
set_property drive "8" [get_ports "MIO[13]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[13]"]
#  GPIO / gpio[12] / MIO[12]
set_property iostandard "LVCMOS33" [get_ports "MIO[12]"]
set_property PACKAGE_PIN "C5" [get_ports "MIO[12]"]
set_property slew "slow" [get_ports "MIO[12]"]
set_property drive "8" [get_ports "MIO[12]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[12]"]
#  GPIO / gpio[11] / MIO[11]
set_property iostandard "LVCMOS33" [get_ports "MIO[11]"]
set_property PACKAGE_PIN "B4" [get_ports "MIO[11]"]
set_property slew "slow" [get_ports "MIO[11]"]
set_property drive "8" [get_ports "MIO[11]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[11]"]
#  GPIO / gpio[10] / MIO[10]
set_property iostandard "LVCMOS33" [get_ports "MIO[10]"]
set_property PACKAGE_PIN "G7" [get_ports "MIO[10]"]
set_property slew "slow" [get_ports "MIO[10]"]
set_property drive "8" [get_ports "MIO[10]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[10]"]
#  GPIO / gpio[9] / MIO[9]
set_property iostandard "LVCMOS33" [get_ports "MIO[9]"]
set_property PACKAGE_PIN "C4" [get_ports "MIO[9]"]
set_property slew "slow" [get_ports "MIO[9]"]
set_property drive "8" [get_ports "MIO[9]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[9]"]
#  GPIO / gpio[8] / MIO[8]
set_property iostandard "LVCMOS33" [get_ports "MIO[8]"]
set_property PACKAGE_PIN "E5" [get_ports "MIO[8]"]
set_property slew "fast" [get_ports "MIO[8]"]
set_property drive "8" [get_ports "MIO[8]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[8]"]
#  GPIO / gpio[7] / MIO[7]
set_property iostandard "LVCMOS33" [get_ports "MIO[7]"]
set_property PACKAGE_PIN "D5" [get_ports "MIO[7]"]
set_property slew "slow" [get_ports "MIO[7]"]
set_property drive "8" [get_ports "MIO[7]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[7]"]
#  GPIO / gpio[6] / MIO[6]
set_property iostandard "LVCMOS33" [get_ports "MIO[6]"]
set_property PACKAGE_PIN "A4" [get_ports "MIO[6]"]
set_property slew "fast" [get_ports "MIO[6]"]
set_property drive "8" [get_ports "MIO[6]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[6]"]
#  GPIO / gpio[5] / MIO[5]
set_property iostandard "LVCMOS33" [get_ports "MIO[5]"]
set_property PACKAGE_PIN "A3" [get_ports "MIO[5]"]
set_property slew "fast" [get_ports "MIO[5]"]
set_property drive "8" [get_ports "MIO[5]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[5]"]
#  GPIO / gpio[4] / MIO[4]
set_property iostandard "LVCMOS33" [get_ports "MIO[4]"]
set_property PACKAGE_PIN "E4" [get_ports "MIO[4]"]
set_property slew "fast" [get_ports "MIO[4]"]
set_property drive "8" [get_ports "MIO[4]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[4]"]
#  GPIO / gpio[3] / MIO[3]
set_property iostandard "LVCMOS33" [get_ports "MIO[3]"]
set_property PACKAGE_PIN "F6" [get_ports "MIO[3]"]
set_property slew "fast" [get_ports "MIO[3]"]
set_property drive "8" [get_ports "MIO[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[3]"]
#  GPIO / gpio[2] / MIO[2]
set_property iostandard "LVCMOS33" [get_ports "MIO[2]"]
set_property PACKAGE_PIN "A2" [get_ports "MIO[2]"]
set_property slew "fast" [get_ports "MIO[2]"]
set_property drive "8" [get_ports "MIO[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[2]"]
#  GPIO / gpio[1] / MIO[1]
set_property iostandard "LVCMOS33" [get_ports "MIO[1]"]
set_property PACKAGE_PIN "A1" [get_ports "MIO[1]"]
set_property slew "fast" [get_ports "MIO[1]"]
set_property drive "8" [get_ports "MIO[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[1]"]
#  GPIO / gpio[0] / MIO[0]
set_property iostandard "LVCMOS33" [get_ports "MIO[0]"]
set_property PACKAGE_PIN "G6" [get_ports "MIO[0]"]
set_property slew "slow" [get_ports "MIO[0]"]
set_property drive "8" [get_ports "MIO[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[0]"]
set_property iostandard "LVCMOS33" [get_ports "PS_PORB"]
set_property PACKAGE_PIN "B5" [get_ports "PS_PORB"]
set_property slew "slow" [get_ports "PS_PORB"]
set_property drive "8" [get_ports "PS_PORB"]
set_property iostandard "LVCMOS33" [get_ports "PS_SRSTB"]
set_property PACKAGE_PIN "C9" [get_ports "PS_SRSTB"]
set_property slew "slow" [get_ports "PS_SRSTB"]
set_property drive "8" [get_ports "PS_SRSTB"]
set_property iostandard "LVCMOS33" [get_ports "PS_CLK"]
set_property PACKAGE_PIN "F7" [get_ports "PS_CLK"]
set_property slew "slow" [get_ports "PS_CLK"]
set_property drive "8" [get_ports "PS_CLK"]

