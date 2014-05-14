proc ps7_pll_init_data_3_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000110 0x003FFFF0 0x000FA220
    mask_write 0XF8000100 0x0007F000 0x00028000
    mask_write 0XF8000100 0x00000010 0x00000010
    mask_write 0XF8000100 0x00000001 0x00000001
    mask_write 0XF8000100 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000001
    mask_write 0XF8000100 0x00000010 0x00000000
    mask_write 0XF8000120 0x1F003F30 0x1F000200
    mask_write 0XF8000114 0x003FFFF0 0x0012C220
    mask_write 0XF8000104 0x0007F000 0x00020000
    mask_write 0XF8000104 0x00000010 0x00000010
    mask_write 0XF8000104 0x00000001 0x00000001
    mask_write 0XF8000104 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000002
    mask_write 0XF8000104 0x00000010 0x00000000
    mask_write 0XF8000124 0xFFF00003 0x0C200003
    mask_write 0XF8000118 0x003FFFF0 0x00113220
    mask_write 0XF8000108 0x0007F000 0x00024000
    mask_write 0XF8000108 0x00000010 0x00000010
    mask_write 0XF8000108 0x00000001 0x00000001
    mask_write 0XF8000108 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000004
    mask_write 0XF8000108 0x00000010 0x00000000
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_clock_init_data_3_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000128 0x03F03F01 0x00302301
    mask_write 0XF8000154 0x00003F33 0x00001802
    mask_write 0XF8000168 0x00003F31 0x00000601
    mask_write 0XF8000170 0x03F03F30 0x00100C00
    mask_write 0XF8000180 0x03F03F30 0x00100800
    mask_write 0XF8000190 0x03F03F30 0x00101800
    mask_write 0XF80001A0 0x03F03F30 0x00101800
    mask_write 0XF80001C4 0x00000001 0x00000001
    mask_write 0XF800012C 0x01FFCCCD 0x016C000D
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_mio_init_data_3_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000B40 0x00000FFF 0x00000600
    mask_write 0XF8000B44 0x00000FFF 0x00000600
    mask_write 0XF8000B48 0x00000FFF 0x00000672
    mask_write 0XF8000B4C 0x00000FFF 0x00000672
    mask_write 0XF8000B50 0x00000FFF 0x00000674
    mask_write 0XF8000B54 0x00000FFF 0x00000674
    mask_write 0XF8000B58 0x00000FFF 0x00000600
    mask_write 0XF8000B5C 0xFFFFFFFF 0x0018C61C
    mask_write 0XF8000B60 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B64 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B68 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B6C 0x00007FFF 0x00000E60
    mask_write 0XF8000B70 0x00000001 0x00000001
    mask_write 0XF8000B70 0x00000021 0x00000020
    mask_write 0XF8000B70 0x07FEFFFF 0x00000823
    mask_write 0XF80007C0 0x00003FFF 0x000002E0
    mask_write 0XF80007C4 0x00003FFF 0x000002E1
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_peripherals_init_data_3_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000B48 0x00000180 0x00000180
    mask_write 0XF8000B4C 0x00000180 0x00000180
    mask_write 0XF8000B50 0x00000180 0x00000180
    mask_write 0XF8000B54 0x00000180 0x00000180
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
    mask_write 0XE0001034 0x000000FF 0x00000006
    mask_write 0XE0001018 0x0000FFFF 0x0000003E
    mask_write 0XE0001000 0x000001FF 0x00000017
    mask_write 0XE0001004 0x000003FF 0x00000020
    mask_write 0XE000D000 0x00080000 0x00080000
    mask_write 0XF8007000 0x20000000 0x00000000
    mask_delay 0XF8F00200 1
    mask_delay 0XF8F00200 1
    mask_delay 0XF8F00200 1
}
proc ps7_post_config_3_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000900 0x0000000F 0x0000000F
    mask_write 0XF8000240 0xFFFFFFFF 0x00000000
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_pll_init_data_2_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000110 0x003FFFF0 0x000FA220
    mask_write 0XF8000100 0x0007F000 0x00028000
    mask_write 0XF8000100 0x00000010 0x00000010
    mask_write 0XF8000100 0x00000001 0x00000001
    mask_write 0XF8000100 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000001
    mask_write 0XF8000100 0x00000010 0x00000000
    mask_write 0XF8000120 0x1F003F30 0x1F000200
    mask_write 0XF8000114 0x003FFFF0 0x0012C220
    mask_write 0XF8000104 0x0007F000 0x00020000
    mask_write 0XF8000104 0x00000010 0x00000010
    mask_write 0XF8000104 0x00000001 0x00000001
    mask_write 0XF8000104 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000002
    mask_write 0XF8000104 0x00000010 0x00000000
    mask_write 0XF8000124 0xFFF00003 0x0C200003
    mask_write 0XF8000118 0x003FFFF0 0x00113220
    mask_write 0XF8000108 0x0007F000 0x00024000
    mask_write 0XF8000108 0x00000010 0x00000010
    mask_write 0XF8000108 0x00000001 0x00000001
    mask_write 0XF8000108 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000004
    mask_write 0XF8000108 0x00000010 0x00000000
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_clock_init_data_2_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000128 0x03F03F01 0x00302301
    mask_write 0XF8000154 0x00003F33 0x00001802
    mask_write 0XF8000168 0x00003F31 0x00000601
    mask_write 0XF8000170 0x03F03F30 0x00100C00
    mask_write 0XF8000180 0x03F03F30 0x00100800
    mask_write 0XF8000190 0x03F03F30 0x00101800
    mask_write 0XF80001A0 0x03F03F30 0x00101800
    mask_write 0XF80001C4 0x00000001 0x00000001
    mask_write 0XF800012C 0x01FFCCCD 0x016C000D
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_mio_init_data_2_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000B40 0x00000FFF 0x00000600
    mask_write 0XF8000B44 0x00000FFF 0x00000600
    mask_write 0XF8000B48 0x00000FFF 0x00000672
    mask_write 0XF8000B4C 0x00000FFF 0x00000672
    mask_write 0XF8000B50 0x00000FFF 0x00000674
    mask_write 0XF8000B54 0x00000FFF 0x00000674
    mask_write 0XF8000B58 0x00000FFF 0x00000600
    mask_write 0XF8000B5C 0xFFFFFFFF 0x0018C61C
    mask_write 0XF8000B60 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B64 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B68 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B6C 0x00007FFF 0x00000E60
    mask_write 0XF8000B70 0x00000021 0x00000021
    mask_write 0XF8000B70 0x00000021 0x00000020
    mask_write 0XF8000B70 0x07FFFFFF 0x00000823
    mask_write 0XF80007C0 0x00003FFF 0x000002E0
    mask_write 0XF80007C4 0x00003FFF 0x000002E1
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_peripherals_init_data_2_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000B48 0x00000180 0x00000180
    mask_write 0XF8000B4C 0x00000180 0x00000180
    mask_write 0XF8000B50 0x00000180 0x00000180
    mask_write 0XF8000B54 0x00000180 0x00000180
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
    mask_write 0XE0001034 0x000000FF 0x00000006
    mask_write 0XE0001018 0x0000FFFF 0x0000003E
    mask_write 0XE0001000 0x000001FF 0x00000017
    mask_write 0XE0001004 0x00000FFF 0x00000020
    mask_write 0XE000D000 0x00080000 0x00080000
    mask_write 0XF8007000 0x20000000 0x00000000
    mask_delay 0XF8F00200 1
    mask_delay 0XF8F00200 1
    mask_delay 0XF8F00200 1
}
proc ps7_post_config_2_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000900 0x0000000F 0x0000000F
    mask_write 0XF8000240 0xFFFFFFFF 0x00000000
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_pll_init_data_1_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000110 0x003FFFF0 0x000FA220
    mask_write 0XF8000100 0x0007F000 0x00028000
    mask_write 0XF8000100 0x00000010 0x00000010
    mask_write 0XF8000100 0x00000001 0x00000001
    mask_write 0XF8000100 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000001
    mask_write 0XF8000100 0x00000010 0x00000000
    mask_write 0XF8000120 0x1F003F30 0x1F000200
    mask_write 0XF8000114 0x003FFFF0 0x0012C220
    mask_write 0XF8000104 0x0007F000 0x00020000
    mask_write 0XF8000104 0x00000010 0x00000010
    mask_write 0XF8000104 0x00000001 0x00000001
    mask_write 0XF8000104 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000002
    mask_write 0XF8000104 0x00000010 0x00000000
    mask_write 0XF8000124 0xFFF00003 0x0C200003
    mask_write 0XF8000118 0x003FFFF0 0x00113220
    mask_write 0XF8000108 0x0007F000 0x00024000
    mask_write 0XF8000108 0x00000010 0x00000010
    mask_write 0XF8000108 0x00000001 0x00000001
    mask_write 0XF8000108 0x00000001 0x00000000
    mask_poll 0XF800010C 0x00000004
    mask_write 0XF8000108 0x00000010 0x00000000
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_clock_init_data_1_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000128 0x03F03F01 0x00302301
    mask_write 0XF8000154 0x00003F33 0x00001802
    mask_write 0XF8000168 0x00003F31 0x00000601
    mask_write 0XF8000170 0x03F03F30 0x00100C00
    mask_write 0XF8000180 0x03F03F30 0x00100800
    mask_write 0XF8000190 0x03F03F30 0x00101800
    mask_write 0XF80001A0 0x03F03F30 0x00101800
    mask_write 0XF80001C4 0x00000001 0x00000001
    mask_write 0XF800012C 0x01FFCCCD 0x016C000D
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_mio_init_data_1_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000B40 0x00000FFF 0x00000600
    mask_write 0XF8000B44 0x00000FFF 0x00000600
    mask_write 0XF8000B48 0x00000FFF 0x00000672
    mask_write 0XF8000B4C 0x00000FFF 0x00000672
    mask_write 0XF8000B50 0x00000FFF 0x00000674
    mask_write 0XF8000B54 0x00000FFF 0x00000674
    mask_write 0XF8000B58 0x00000FFF 0x00000600
    mask_write 0XF8000B5C 0xFFFFFFFF 0x0018C61C
    mask_write 0XF8000B60 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B64 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B68 0xFFFFFFFF 0x00F9861C
    mask_write 0XF8000B6C 0x000073FF 0x00000260
    mask_write 0XF8000B70 0x00000021 0x00000021
    mask_write 0XF8000B70 0x00000021 0x00000020
    mask_write 0XF8000B70 0x07FFFFFF 0x00000823
    mask_write 0XF80007C0 0x00003FFF 0x000002E0
    mask_write 0XF80007C4 0x00003FFF 0x000002E1
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
proc ps7_peripherals_init_data_1_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000B48 0x00000180 0x00000180
    mask_write 0XF8000B4C 0x00000180 0x00000180
    mask_write 0XF8000B50 0x00000180 0x00000180
    mask_write 0XF8000B54 0x00000180 0x00000180
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
    mask_write 0XE0001034 0x000000FF 0x00000006
    mask_write 0XE0001018 0x0000FFFF 0x0000003E
    mask_write 0XE0001000 0x000001FF 0x00000017
    mask_write 0XE0001004 0x00000FFF 0x00000020
    mask_write 0XE000D000 0x00080000 0x00080000
    mask_write 0XF8007000 0x20000000 0x00000000
    mask_delay 0XF8F00200 1
    mask_delay 0XF8F00200 1
    mask_delay 0XF8F00200 1
}
proc ps7_post_config_1_0 {} {
    mask_write 0XF8000008 0x0000FFFF 0x0000DF0D
    mask_write 0XF8000900 0x0000000F 0x0000000F
    mask_write 0XF8000240 0xFFFFFFFF 0x00000000
    mask_write 0XF8000004 0x0000FFFF 0x0000767B
}
set PCW_SILICON_VER_1_0 "0x0"
set PCW_SILICON_VER_2_0 "0x1"
set PCW_SILICON_VER_3_0 "0x2"
set APU_FREQ  666666667



proc mask_poll { addr mask } {
    set count 1
    set curval "0x[string range [mrd $addr] end-8 end]"
    set maskedval [expr {$curval & $mask}]
    while { $maskedval == 0 } {
        set curval "0x[string range [mrd $addr] end-8 end]"
        set maskedval [expr {$curval & $mask}]
        set count [ expr { $count + 1 } ]
        if { $count == 100000000 } {
          puts "Timeout Reached. Mask poll failed at ADDRESS: $addr MASK: $mask"
          break
        }
    }
}



proc mask_delay { addr val } {
    set delay  [ get_number_of_cycles_for_delay $val ]
    perf_reset_and_start_timer
    set curval "0x[string range [mrd $addr] end-8 end]"
    set maskedval [expr {$curval < $delay}]
    while { $maskedval == 1 } {
        set curval "0x[string range [mrd $addr] end-8 end]"
        set maskedval [expr {$curval < $delay}]
    }
    perf_reset_clock 
}

proc ps_version { } {
    set si_ver "0x[string range [mrd 0xF8007080] end-8 end]"
    set mask_sil_ver "0x[expr {$si_ver >> 28}]"
    return $mask_sil_ver;
}

proc ps7_post_config {} {
    variable PCW_SILICON_VER_1_0
    variable PCW_SILICON_VER_2_0
    variable PCW_SILICON_VER_3_0
    set sil_ver [ps_version]

    if { $sil_ver == $PCW_SILICON_VER_1_0} {
        ps7_post_config_1_0   
    } elseif { $sil_ver == $PCW_SILICON_VER_2_0 } {
        ps7_post_config_2_0   
    } else {
        ps7_post_config_3_0   
    }
}

proc ps7_init {} {
    variable PCW_SILICON_VER_1_0
    variable PCW_SILICON_VER_2_0
    variable PCW_SILICON_VER_3_0
    set sil_ver [ps_version]

    if { $sil_ver == $PCW_SILICON_VER_1_0} {
            ps7_mio_init_data_1_0
            ps7_pll_init_data_1_0
            ps7_clock_init_data_1_0
            ps7_peripherals_init_data_1_0
            #puts "PCW Silicon Version : 1.0"
    } elseif { $sil_ver == $PCW_SILICON_VER_2_0 } {
            ps7_mio_init_data_2_0
            ps7_pll_init_data_2_0
            ps7_clock_init_data_2_0
            ps7_peripherals_init_data_2_0
            #puts "PCW Silicon Version : 2.0"
    } else {
            ps7_mio_init_data_3_0
            ps7_pll_init_data_3_0
            ps7_clock_init_data_3_0
            ps7_peripherals_init_data_3_0
            #puts "PCW Silicon Version : 3.0"
    }
}


# For delay calculation using global timer 

# start timer 
 proc perf_start_clock { } {

    #writing SCU_GLOBAL_TIMER_CONTROL register

    mask_write 0xF8F00208 0x00000109 0x00000009
}

# stop timer and reset timer count regs 
 proc perf_reset_clock { } {
	perf_disable_clock
    mask_write 0xF8F00200 0xFFFFFFFF 0x00000000
    mask_write 0xF8F00204 0xFFFFFFFF 0x00000000
}

# Compute mask for given delay in miliseconds
proc get_number_of_cycles_for_delay { delay } {

  # GTC is always clocked at 1/2 of the CPU frequency (CPU_3x2x)
  variable APU_FREQ
  return [ expr ($delay * $APU_FREQ /(2 * 1000))]
}


# stop timer 
proc perf_disable_clock {} {
    mask_write 0xF8F00208 0xFFFFFFFF 0x00000000 
}

proc perf_reset_and_start_timer {} {
  	    perf_reset_clock 
	    perf_start_clock 
}


