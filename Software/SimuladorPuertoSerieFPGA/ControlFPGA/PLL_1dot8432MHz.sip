set_global_assignment -entity "PLL_1dot8432MHz" -library "lib_PLL_1dot8432MHz" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "PLL_1dot8432MHz" -library "lib_PLL_1dot8432MHz" -name IP_TOOL_VERSION "13.0sp1"
set_global_assignment -entity "PLL_1dot8432MHz" -library "lib_PLL_1dot8432MHz" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_PLL_1dot8432MHz" -name SPD_FILE [file join $::quartus(sip_path) "PLL_1dot8432MHz.spd"]

set_global_assignment -library "lib_PLL_1dot8432MHz" -name MISC_FILE [file join $::quartus(sip_path) "PLL_1dot8432MHz_sim/PLL_1dot8432MHz.vho"]
