wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/JengDeChang/ICC_91_0128/build/mac.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/mac_sim"
wvGetSignalSetScope -win $_nWave1 "/mac_sim/u_mac"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/mac_sim/u_mac/clk} \
{/mac_sim/u_mac/instr_stage2\[2:0\]} \
{/mac_sim/u_mac/instr_t\[2:0\]} \
{/mac_sim/u_mac/instruction\[2:0\]} \
{/mac_sim/u_mac/mulc_temp\[15:0\]} \
{/mac_sim/u_mac/mulp_temp\[15:0\]} \
{/mac_sim/u_mac/mult8_temp1\[15:0\]} \
{/mac_sim/u_mac/mult8_temp2\[15:0\]} \
{/mac_sim/u_mac/mult16_temp\[31:0\]} \
{/mac_sim/u_mac/multiplicand\[15:0\]} \
{/mac_sim/u_mac/multiplier\[15:0\]} \
{/mac_sim/u_mac/protect\[7:0\]} \
{/mac_sim/u_mac/protect_stage2\[7:0\]} \
{/mac_sim/u_mac/reset_n} \
{/mac_sim/u_mac/result\[31:0\]} \
{/mac_sim/u_mac/result_stage2\[31:0\]} \
{/mac_sim/u_mac/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/mac_sim/u_mac/clk} \
{/mac_sim/u_mac/instr_stage2\[2:0\]} \
{/mac_sim/u_mac/instr_t\[2:0\]} \
{/mac_sim/u_mac/instruction\[2:0\]} \
{/mac_sim/u_mac/mulc_temp\[15:0\]} \
{/mac_sim/u_mac/mulp_temp\[15:0\]} \
{/mac_sim/u_mac/mult8_temp1\[15:0\]} \
{/mac_sim/u_mac/mult8_temp2\[15:0\]} \
{/mac_sim/u_mac/mult16_temp\[31:0\]} \
{/mac_sim/u_mac/multiplicand\[15:0\]} \
{/mac_sim/u_mac/multiplier\[15:0\]} \
{/mac_sim/u_mac/protect\[7:0\]} \
{/mac_sim/u_mac/protect_stage2\[7:0\]} \
{/mac_sim/u_mac/reset_n} \
{/mac_sim/u_mac/result\[31:0\]} \
{/mac_sim/u_mac/result_stage2\[31:0\]} \
{/mac_sim/u_mac/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 7322.331017 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 3139.761133 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 8342.470013 -snap {("G2" 0)}
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 6868.935907 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 70231.469917 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 2924.398456 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2709.035779 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 521.404376 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1439.529472 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9419.283398 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 192.692921 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2085.617503 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 3321.119176 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 4227.909395 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 5202.708880 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 5905.471300 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 6000.000000
wvSetCursor -win $_nWave1 30014.101467
wvSetCursor -win $_nWave1 30002.766590 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 30002.766590 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 30059.440978 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 54259.396169 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 53964.689348 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 54021.363737 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 53749.326671 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 54372.744947 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 53828.670815 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvExit
