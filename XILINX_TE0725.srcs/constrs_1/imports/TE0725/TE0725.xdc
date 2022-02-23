#------------------------------------------------------
# Clock signal on board
#------------------------------------------------------
set_property PACKAGE_PIN P17            [get_ports CLK_100MHz]
#    set_property DIRECTION IN           [get_ports CLK_100MHz]
    set_property IOSTANDARD LVCMOS33    [get_ports CLK_100MHz]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK_100MHz]
    
#------------------------------------------------------
# LEDs on board
#------------------------------------------------------
set_property PACKAGE_PIN M16            [get_ports LED_GREEN]
#    set_property DIRECTION OUT          [get_ports LED_GREEN]
    set_property IOSTANDARD LVCMOS33    [get_ports LED_GREEN]
    set_property DRIVE 12               [get_ports LED_GREEN]
    set_property SLEW SLOW              [get_ports LED_GREEN]
    
#------------------------------------------------------
# Reset on board
#------------------------------------------------------
set_property PACKAGE_PIN V10            [get_ports rst]
#    set_property DIRECTION IN           [get_ports rst]
    set_property IOSTANDARD LVCMOS33    [get_ports rst]


#------------------------------------------------------
# Hyperram on board
#------------------------------------------------------
#set_property PACKAGE_PIN A13 [get_ports HB_CLK0_0]
#set_property PACKAGE_PIN A14 [get_ports HB_CLK0n_0]
#set_property PACKAGE_PIN E17 [get_ports {HB_dq_0[0]}]
#set_property PACKAGE_PIN B17 [get_ports {HB_dq_0[1]}]
#set_property PACKAGE_PIN F18 [get_ports {HB_dq_0[2]}]
#set_property PACKAGE_PIN F16 [get_ports {HB_dq_0[3]}]
#set_property PACKAGE_PIN G17 [get_ports {HB_dq_0[4]}]
#set_property PACKAGE_PIN D18 [get_ports {HB_dq_0[5]}]
#set_property PACKAGE_PIN B18 [get_ports {HB_dq_0[6]}]
#set_property PACKAGE_PIN A16 [get_ports {HB_dq_0[7]}]
#set_property PACKAGE_PIN E18 [get_ports HB_RWDS_0]
#set_property PACKAGE_PIN D17 [get_ports HB_CS1n_0]
#set_property PACKAGE_PIN J17 [get_ports HB_RSTn_0]
#set_property PACKAGE_PIN A18 [get_ports HB_CS0n_0 ]
#set_property PACKAGE_PIN J18 [get_ports HB_INTn_0 ]
#set_property PACKAGE_PIN C17 [get_ports HB_RSTOn_0]

#------------------------------------------------------
# UART for communication with PC
#------------------------------------------------------
set_property PACKAGE_PIN M18            [get_ports TXD]
#    set_property DIRECTION OUT          [get_ports TXD]
    set_property IOSTANDARD LVCMOS33    [get_ports TXD]
    set_property PULLUP true            [get_ports TXD]
    
#set_property PACKAGE_PIN L18            [get_ports RXD]
##    set_property DIRECTION IN           [get_ports RXD]
#    set_property IOSTANDARD LVCMOS33    [get_ports RXD]
#    set_property PULLUP true            [get_ports RXD] 
    

#------------------------------------------------------
# Buzzer on SIMES_GD_DAB_v2
#------------------------------------------------------
#set_property PACKAGE_PIN T8             [get_ports BUZZER]
#    set_property DIRECTION OUT          [get_ports BUZZER]
#    set_property IOSTANDARD LVCMOS33    [get_ports BUZZER]
#    set_property DRIVE 12               [get_ports BUZZER]
#    set_property SLEW SLOW              [get_ports BUZZER]


#------------------------------------------------------
# LEDs on SIMES_GD_DAB_v2
#------------------------------------------------------
set_property PACKAGE_PIN E3             [get_ports {LED[0]}]
#    set_property DIRECTION OUT          [get_ports {LED[0]}]
    set_property IOSTANDARD LVCMOS33    [get_ports {LED[0]}]
    set_property DRIVE 12               [get_ports {LED[0]}]
    set_property SLEW SLOW              [get_ports {LED[0]}]
    set_property PULLUP true            [get_ports {LED[0]}]
    
set_property PACKAGE_PIN J2             [get_ports {LED[1]}]
#    set_property DIRECTION OUT          [get_ports {LED[1]}]
    set_property IOSTANDARD LVCMOS33    [get_ports {LED[1]}]
    set_property DRIVE 12               [get_ports {LED[1]}]
    set_property SLEW SLOW              [get_ports {LED[1]}]
    set_property PULLUP true            [get_ports {LED[1]}]
    
set_property PACKAGE_PIN H1             [get_ports {LED[2]}]
#    set_property DIRECTION OUT          [get_ports {LED[2]}]
    set_property IOSTANDARD LVCMOS33    [get_ports {LED[2]}]
    set_property DRIVE 12               [get_ports {LED[2]}]
    set_property SLEW SLOW              [get_ports {LED[2]}]
    set_property PULLUP true            [get_ports {LED[2]}]
    
set_property PACKAGE_PIN F1             [get_ports {LED[3]}]
#    set_property DIRECTION OUT          [get_ports {LED[3]}]
    set_property IOSTANDARD LVCMOS33    [get_ports {LED[3]}]
    set_property DRIVE 12               [get_ports {LED[3]}]
    set_property SLEW SLOW              [get_ports {LED[3]}]
    set_property PULLUP true            [get_ports {LED[3]}]
    
set_property PACKAGE_PIN E2             [get_ports {LED[4]}]
#    set_property DIRECTION OUT          [get_ports {LED[4]}]
    set_property IOSTANDARD LVCMOS33    [get_ports {LED[4]}]
    set_property DRIVE 12               [get_ports {LED[4]}]
    set_property SLEW SLOW              [get_ports {LED[4]}]
    set_property PULLUP true            [get_ports {LED[4]}]




#------------------------------------------------------
# ADS7254 prim
#------------------------------------------------------
set_property PACKAGE_PIN C6             [get_ports SDOA_SAR_PRIM]
#    set_property DIRECTION IN           [get_ports SDOA_SAR_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports SDOA_SAR_PRIM]
    
set_property PACKAGE_PIN C4             [get_ports SDOB_SAR_PRIM]
#    set_property DIRECTION IN           [get_ports SDOB_SAR_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports SDOB_SAR_PRIM]

set_property PACKAGE_PIN E6             [get_ports SCLK_SAR_PRIM]
#    set_property DIRECTION OUT          [get_ports SCLK_SAR_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports SCLK_SAR_PRIM]
    set_property DRIVE 12               [get_ports SCLK_SAR_PRIM]
    set_property SLEW SLOW              [get_ports SCLK_SAR_PRIM]
    
set_property PACKAGE_PIN E7             [get_ports CS_SAR_PRIM]
#    set_property DIRECTION OUT          [get_ports CS_SAR_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports CS_SAR_PRIM]
    set_property DRIVE 12               [get_ports CS_SAR_PRIM]
    set_property SLEW SLOW              [get_ports CS_SAR_PRIM]
    
set_property PACKAGE_PIN F6             [get_ports SDI_SAR_PRIM]
#    set_property DIRECTION OUT          [get_ports SDI_SAR_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports SDI_SAR_PRIM]
    set_property DRIVE 12               [get_ports SDI_SAR_PRIM]
    set_property SLEW SLOW              [get_ports SDI_SAR_PRIM]


#------------------------------------------------------
# ADS7254 sec
#------------------------------------------------------
set_property PACKAGE_PIN R3             [get_ports SDOA_SAR_SEC]
#    set_property DIRECTION IN           [get_ports SDOA_SAR_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports SDOA_SAR_SEC]
    
set_property PACKAGE_PIN T4             [get_ports SDOB_SAR_SEC]
#    set_property DIRECTION IN           [get_ports SDOB_SAR_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports SDOB_SAR_SEC]
    
set_property PACKAGE_PIN P3             [get_ports SCLK_SAR_SEC]
#    set_property DIRECTION OUT          [get_ports SCLK_SAR_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports SCLK_SAR_SEC]
    set_property DRIVE 12               [get_ports SCLK_SAR_SEC]
    set_property SLEW FAST              [get_ports SCLK_SAR_SEC]
    
set_property PACKAGE_PIN M4             [get_ports CS_SAR_SEC]
#    set_property DIRECTION OUT          [get_ports CS_SAR_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports CS_SAR_SEC]
    set_property DRIVE 12               [get_ports CS_SAR_SEC]
    set_property SLEW SLOW              [get_ports CS_SAR_SEC]
    
set_property PACKAGE_PIN R1             [get_ports SDI_SAR_SEC]
#    set_property DIRECTION OUT          [get_ports SDI_SAR_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports SDI_SAR_SEC]
    set_property DRIVE 12               [get_ports SDI_SAR_SEC]
    set_property SLEW SLOW              [get_ports SDI_SAR_SEC]
    
#------------------------------------------------------
# Traznsystory roz³adowuj¹ce
#------------------------------------------------------
set_property PACKAGE_PIN U9             [get_ports DISCH_PRIM]
#    set_property DIRECTION OUT          [get_ports DISCH_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports DISCH_PRIM]
    set_property DRIVE 12               [get_ports DISCH_PRIM]
    set_property SLEW SLOW              [get_ports DISCH_PRIM]
    set_property PULLDOWN true          [get_ports DISCH_PRIM]
set_property PACKAGE_PIN L1             [get_ports DISCH_SEC]
#    set_property DIRECTION OUT          [get_ports DISCH_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports DISCH_SEC]
    set_property DRIVE 12               [get_ports DISCH_SEC]
    set_property SLEW SLOW              [get_ports DISCH_SEC]
    set_property PULLDOWN true          [get_ports DISCH_SEC]


#------------------------------------------------------
# Styczniki
#------------------------------------------------------
# stycznik g³owny, strona prim
set_property PACKAGE_PIN U7             [get_ports sOUT1]    
    #set_property DIRECTION OUT [get_ports sOUT1]
    set_property IOSTANDARD LVCMOS33    [get_ports sOUT1]
    #set_property DRIVE 12 [get_ports OUT1}]
    #set_property SLEW SLOW [get_ports OUT1}]
    #set_property PULLDOWN true [get_ports OUT1]

# stycznik pomocniczy, strona prim 
set_property PACKAGE_PIN M6             [get_ports sOUT2] 
#    set_property DIRECTION OUT [get_ports sOUT2]
    set_property IOSTANDARD LVCMOS33    [get_ports sOUT2]
    #set_property DRIVE 12 [get_ports OUT2]
    #set_property SLEW SLOW [get_ports OUT2]
    #set_property PULLDOWN true [get_ports OUT2]   

# stycznik g³owny, strona sec 
set_property PACKAGE_PIN N2             [get_ports sOUT3]  
    #set_property DIRECTION OUT [get_ports sOUT3]
    set_property IOSTANDARD LVCMOS33    [get_ports sOUT3]
    #set_property DRIVE 12 [get_ports OUT3]
    #set_property SLEW SLOW [get_ports OUT3]
    #set_property PULLDOWN true [get_ports OUT3]  

# stycznik pomocniczy, strona sec 
set_property PACKAGE_PIN P2             [get_ports sOUT4]  
    #set_property DIRECTION OUT [get_ports sOUT4]
    set_property IOSTANDARD LVCMOS33    [get_ports sOUT4]
    #set_property DRIVE 12 [get_ports OUT4]
    #set_property SLEW SLOW [get_ports OUT4]
    #set_property PULLDOWN true [get_ports OUT4]  

# wentylator radiattora
set_property PACKAGE_PIN V9             [get_ports sOUT5]   
    #set_property DIRECTION OUT [get_ports sOUT5]
    set_property IOSTANDARD LVCMOS33    [get_ports sOUT5]
    #set_property DRIVE 12 [get_ports {OUT5}]
    #set_property SLEW SLOW [get_ports {OUT5}]
    #set_property PULLDOWN true [get_ports {OUT5}] 

set_property PACKAGE_PIN N6             [get_ports sOUT6]
#    set_property DIRECTION OUT          [get_ports sOUT6]
    set_property IOSTANDARD LVCMOS33    [get_ports sOUT6]
#    set_property DRIVE 12               [get_ports sOUT6]
#    set_property SLEW SLOW              [get_ports sOUT6]


#set_property DRIVE 12 [get_ports {OUT6}]
#set_property SLEW SLOW [get_ports {OUT6}]
#set_property PULLDOWN true [get_ports {OUT6}]
#set_property PACKAGE_PIN U6 [get_ports sOUT7]
#set_property DIRECTION OUT [get_ports {OUT7}]
#set_property IOSTANDARD LVCMOS33 [get_ports {OUT7}]
#set_property DRIVE 12s [get_ports {OUT7}]
#set_property SLEW SLOW [get_ports {OUT7}]
#set_property PULLDOWN true [get_ports {OUT7}]
#set_property PACKAGE_PIN V6 [get_ports sOUT8]
#set_property DIRECTION OUT [get_ports {OUT8}]
#set_property IOSTANDARD LVCMOS33 [get_ports {OUT8}]
#set_property DRIVE 12 [get_ports {OUT8}]
#set_property SLEW SLOW [get_ports {OUT8}]
#set_property PULLDOWN true [get_ports {OUT8}]


#------------------------------------------------------
# Driver sec
#------------------------------------------------------
set_property PACKAGE_PIN G2             [get_ports T2_SEC]
#    set_property DIRECTION IN           [get_ports T2_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports T2_SEC]
    
set_property PACKAGE_PIN F3             [get_ports PWM2_L_SEC]
#    set_property DIRECTION OUT          [get_ports PWM2_L_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM2_L_SEC]
    set_property DRIVE 12               [get_ports PWM2_L_SEC]
    set_property SLEW SLOW              [get_ports PWM2_L_SEC]
    set_property PULLDOWN true          [get_ports PWM2_L_SEC]

set_property PACKAGE_PIN D3             [get_ports PWM2_H_SEC]
#    set_property DIRECTION OUT          [get_ports PWM2_H_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM2_H_SEC]
    set_property DRIVE 12               [get_ports PWM2_H_SEC]
    set_property SLEW SLOW              [get_ports PWM2_H_SEC]
    set_property PULLDOWN true          [get_ports PWM2_H_SEC]

set_property PACKAGE_PIN E1             [get_ports PWM1_L_SEC]
#    set_property DIRECTION OUT          [get_ports PWM1_L_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM1_L_SEC]
    set_property DRIVE 12               [get_ports PWM1_L_SEC]
    set_property SLEW SLOW              [get_ports PWM1_L_SEC]
    set_property PULLDOWN true          [get_ports PWM1_L_SEC]
    
set_property PACKAGE_PIN D2             [get_ports PWM1_H_SEC]
#    set_property DIRECTION OUT          [get_ports PWM1_H_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM1_H_SEC]
    set_property DRIVE 12               [get_ports PWM1_H_SEC]
    set_property SLEW SLOW              [get_ports PWM1_H_SEC]
    set_property PULLDOWN true          [get_ports PWM1_H_SEC]
    
set_property PACKAGE_PIN C2             [get_ports T1_SEC]
#    set_property DIRECTION IN           [get_ports T1_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports T1_SEC]
    
set_property PACKAGE_PIN J3             [get_ports RDY_SEC]
#    set_property DIRECTION IN           [get_ports RDY_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports RDY_SEC]

set_property PACKAGE_PIN G1             [get_ports FLT_SEC]
#    set_property DIRECTION IN           [get_ports FLT_SEC]
    set_property IOSTANDARD LVCMOS33    [get_ports FLT_SEC]

#------------------------------------------------------
# Driver prim
#------------------------------------------------------
set_property PACKAGE_PIN A3             [get_ports T2_PRIM]
#    set_property DIRECTION IN           [get_ports T2_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports T2_PRIM]
    
set_property PACKAGE_PIN A1             [get_ports PWM2_L_PRIM]
#    set_property DIRECTION OUT          [get_ports PWM2_L_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM2_L_PRIM]
    set_property DRIVE 12               [get_ports PWM2_L_PRIM]
    set_property SLEW SLOW              [get_ports PWM2_L_PRIM]
    set_property PULLDOWN true          [get_ports PWM2_L_PRIM]

set_property PACKAGE_PIN B3             [get_ports PWM2_H_PRIM]
#    set_property DIRECTION OUT          [get_ports PWM2_H_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM2_H_PRIM]
    set_property DRIVE 12               [get_ports PWM2_H_PRIM]
    set_property SLEW SLOW              [get_ports PWM2_H_PRIM]
    set_property PULLDOWN true          [get_ports PWM2_H_PRIM]

set_property PACKAGE_PIN E5             [get_ports T1_PRIM]
#    set_property DIRECTION IN           [get_ports T1_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports T1_PRIM]
    
set_property PACKAGE_PIN B4             [get_ports PWM1_L_PRIM]
#    set_property DIRECTION OUT          [get_ports PWM1_L_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM1_L_PRIM]
    set_property DRIVE 12               [get_ports PWM1_L_PRIM]
    set_property SLEW SLOW              [get_ports PWM1_L_PRIM]
    set_property PULLDOWN true          [get_ports PWM1_L_PRIM]
    
set_property PACKAGE_PIN C5             [get_ports PWM1_H_PRIM]
#    set_property DIRECTION OUT          [get_ports PWM1_H_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports PWM1_H_PRIM]
    set_property DRIVE 12               [get_ports PWM1_H_PRIM]
    set_property SLEW SLOW              [get_ports PWM1_H_PRIM]
    set_property PULLDOWN true          [get_ports PWM1_H_PRIM]

set_property PACKAGE_PIN D7             [get_ports RDY_PRIM]
#    set_property DIRECTION IN           [get_ports RDY_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports RDY_PRIM]
    
set_property PACKAGE_PIN G6             [get_ports FLT_PRIM]
#    set_property DIRECTION IN           [get_ports FLT_PRIM]
    set_property IOSTANDARD LVCMOS33    [get_ports FLT_PRIM]



#------------------------------------------------------
# Zabezpieczenia driverow
#------------------------------------------------------
set_property PACKAGE_PIN D4             [get_ports EN_GD_SIG]
#    set_property DIRECTION IN           [get_ports EN_GD_SIG]
    set_property IOSTANDARD LVCMOS33    [get_ports EN_GD_SIG]
    set_property PULLDOWN true          [get_ports EN_GD_SIG]

set_property PACKAGE_PIN A5             [get_ports RST_FLT]
#    set_property DIRECTION OUT          [get_ports RST_FLT]
    set_property IOSTANDARD LVCMOS33    [get_ports RST_FLT]
    set_property DRIVE 12               [get_ports RST_FLT]
    set_property SLEW SLOW              [get_ports RST_FLT]
    
set_property PACKAGE_PIN B6             [get_ports EN_GD]
#    set_property DIRECTION OUT          [get_ports EN_GD]
    set_property IOSTANDARD LVCMOS33    [get_ports EN_GD]
    set_property DRIVE 12               [get_ports EN_GD]
    set_property SLEW SLOW              [get_ports EN_GD]


#------------------------------------------------------
# Pomiary segma delta
#------------------------------------------------------
set_property PACKAGE_PIN C7             [get_ports DOUT_AC]
#    set_property DIRECTION IN           [get_ports DOUT_AC]
    set_property IOSTANDARD LVCMOS33    [get_ports DOUT_AC]
    set_property SLEW FAST              [get_ports DOUT_AC]

set_property PACKAGE_PIN D8             [get_ports CLKIN_AC]
#    set_property DIRECTION OUT          [get_ports CLKIN_AC]
    set_property IOSTANDARD LVCMOS33    [get_ports CLKIN_AC]
    set_property DRIVE 12               [get_ports CLKIN_AC]
    set_property SLEW FAST              [get_ports CLKIN_AC]


# RS485
set_property PACKAGE_PIN N4             [get_ports RX_1]
    #set_property DIRECTION IN           [get_ports RX_1]
    set_property IOSTANDARD LVCMOS33    [get_ports RX_1]
    set_property DRIVE 12               [get_ports RX_1]
    set_property SLEW FAST              [get_ports RX_1]
    
set_property PACKAGE_PIN P4             [get_ports TX_1]
    #set_property DIRECTION OUT          [get_ports TX_1]
    set_property IOSTANDARD LVCMOS33    [get_ports TX_1]
    set_property DRIVE 12               [get_ports TX_1]
    set_property SLEW FAST              [get_ports TX_1]

set_property PACKAGE_PIN T1             [get_ports RX_2]
    #set_property DIRECTION IN          [get_ports RX_2]
    set_property IOSTANDARD LVCMOS33    [get_ports RX_2]
    set_property DRIVE 12               [get_ports RX_2]
    set_property SLEW FAST              [get_ports RX_2]
    
set_property PACKAGE_PIN M1             [get_ports TX_2]
    #set_property DIRECTION OUT         [get_ports TX_2]
    set_property IOSTANDARD LVCMOS33    [get_ports TX_2]
    set_property DRIVE 12               [get_ports TX_2]
    set_property SLEW FAST              [get_ports TX_2]
    
set_property PACKAGE_PIN R2             [get_ports RX_EN_2]
#    set_property DIRECTION OUT          [get_ports RX_EN_2]
    set_property IOSTANDARD LVCMOS33    [get_ports RX_EN_2]
    set_property DRIVE 12               [get_ports RX_EN_2]
    set_property SLEW FAST              [get_ports RX_EN_2]

set_property PACKAGE_PIN N1             [get_ports TX_EN_2]
#    set_property DIRECTION OUT          [get_ports TX_EN_2]
    set_property IOSTANDARD LVCMOS33    [get_ports TX_EN_2]
    set_property DRIVE 12               [get_ports TX_EN_2]
    set_property SLEW FAST              [get_ports TX_EN_2]



#------------------------------------------------------
# FIBER_LVDS
#------------------------------------------------------
#set_property PACKAGE_PIN C11            [get_ports RD_P]
##    set_property DIRECTION IN           [get_ports rst]
##    set_property IOSTANDARD BLVDS_25    [get_ports RD_P]

#set_property PACKAGE_PIN C10            [get_ports RD_N]
##    set_property DIRECTION IN           [get_ports rst]
##    set_property IOSTANDARD BLVDS_25    [get_ports RD_N]  
    
#set_property PACKAGE_PIN A10            [get_ports TD_P]
##    set_property DIRECTION OUT           [get_ports rst]
##    set_property IOSTANDARD BLVDS_25    [get_ports TD_P]
 
#set_property PACKAGE_PIN A9             [get_ports TD_N]
##    set_property DIRECTION OUT           [get_ports rst]
##    set_property IOSTANDARD BLVDS_25    [get_ports TD_N]

 
#------------------------------------------------------
# termistor 4pomiary TH1...TH4
#------------------------------------------------------
#set_property PACKAGE_PIN T6 [get_ports NTC_CS]
#set_property PACKAGE_PIN V4 [get_ports NTC_sSCLK]
#set_property PACKAGE_PIN R6 [get_ports NTC_SDI]
#set_property PACKAGE_PIN U4 [get_ports NTC_SDO]
#set_property DIRECTION OUT [get_ports NTC_CS]
#set_property IOSTANDARD LVCMOS33 [get_ports NTC_CS]
#set_property DRIVE 12 [get_ports NTC_CS]
#set_property SLEW SLOW [get_ports NTC_CS]
#set_property DIRECTION OUT [get_ports NTC_SCLK]
#set_property IOSTANDARD LVCMOS33 [get_ports NTC_SCLK]
#set_property DRIVE 12 [get_ports NTC_SCLK]
#set_property SLEW SLOW [get_ports NTC_SCLK]
#set_property DIRECTION OUT [get_ports NTC_SDI]
#set_property IOSTANDARD LVCMOS33 [get_ports NTC_SDI]
#set_property DRIVE 12 [get_ports NTC_SDI]
#set_property SLEW SLOW [get_ports NTC_SDI]
#set_property DIRECTION IN [get_ports NTC_SDO]
#set_property IOSTANDARD LVCMOS33 [get_ports NTC_SDO]




current_instance -quiet



#
# FPGA Pin Voltage assignment
#
#set_property IOSTANDARD LVCMOS18 [get_ports HB_CLK0_0]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_CLK0n_0]
#set_property IOSTANDARD LVCMOS18 [get_ports {HB_dq_0[*]}]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_CS1n_0]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_RSTn_0]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_RWDS_0]
 
#set_property IOSTANDARD LVCMOS18 [get_ports HB_CS0n_0]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_INTn_0]
#set_property IOSTANDARD LVCMOS18 [get_ports HB_RSTOn_0]
 
#set_property PULLUP true [get_ports HB_RSTOn_0]
#set_property PULLUP true [get_ports HB_INTn_0]


#
#Hyperbus Clock - change according to clk pin on PLL
#
#create_generated_clock -name clk_0   -source [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKIN1] -master_clock sys_clock [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]
#create_generated_clock -name clk_90  -source [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKIN1] -master_clock sys_clock [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]
#create_generated_clock -name clk_180 -source [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKIN1] -master_clock sys_clock [get_pins msys_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT2]
 

#
#100Mhz clock freqeuncy - change accordingly
#
#set hbus_freq_ns   10
 
#set dqs_in_min_dly -0.5
#set dqs_in_max_dly  0.5
 
#set HB_dq_ports    [get_ports HB_dq_0[*]]
 
#
#Create RDS clock and RDS virtual clock
#
#create_clock -period $hbus_freq_ns -name rwds_clk      [get_ports HB_RWDS_0]
#create_clock -period $hbus_freq_ns -name virt_rwds_clk
 
#
#Input Delay Constraint -  HB_RWDS-HB_DQ
#
#set_input_delay -clock [get_clocks virt_rwds_clk]             -max ${dqs_in_max_dly} ${HB_dq_ports}
#set_input_delay -clock [get_clocks virt_rwds_clk] -clock_fall -max ${dqs_in_max_dly} ${HB_dq_ports} -add_delay
 
#set_input_delay -clock [get_clocks virt_rwds_clk]             -min ${dqs_in_min_dly} ${HB_dq_ports} -add_delay
#set_input_delay -clock [get_clocks virt_rwds_clk] -clock_fall -min ${dqs_in_min_dly} ${HB_dq_ports} -add_delay
 
#set_multicycle_path -setup -end -rise_from [get_clocks virt_rwds_clk] -rise_to [get_clocks rwds_clk] 0
#set_multicycle_path -setup -end -fall_from [get_clocks virt_rwds_clk] -fall_to [get_clocks rwds_clk] 0
 
#set_false_path  -fall_from [get_clocks virt_rwds_clk] -rise_to [get_clocks rwds_clk] -setup
#set_false_path  -rise_from [get_clocks virt_rwds_clk] -fall_to [get_clocks rwds_clk] -setup
#set_false_path  -fall_from [get_clocks virt_rwds_clk] -fall_to [get_clocks rwds_clk] -hold
#set_false_path  -rise_from [get_clocks virt_rwds_clk] -rise_to [get_clocks rwds_clk] -hold
 
#set_false_path -from [get_clocks clk_0] -to [get_clocks rwds_clk]
#set_false_path -from [get_clocks rwds_clk] -to [get_clocks clk_0]
 
#
#Output Delay Constraint -  HB_CLK0-HB_DQ
#
#create_generated_clock -name HB_CLK0_0 -source [get_pins */*/*/U_IO/U_CLK0/dq_idx_[0].ODDR_inst/C] -multiply_by 1 -invert [get_ports HB_CLK0_0]
 
#set_output_delay -clock [get_clocks HB_CLK0_0] -min -1.000 ${HB_dq_ports}
#set_output_delay -clock [get_clocks HB_CLK0_0] -max  1.000 ${HB_dq_ports}
#set_output_delay -clock [get_clocks HB_CLK0_0] -min -1.000 ${HB_dq_ports} -clock_fall -add_delay
#set_output_delay -clock [get_clocks HB_CLK0_0] -max  1.000 ${HB_dq_ports} -clock_fall -add_delay
 
 
#set_false_path -from [get_pins */*/*/U_HBC/*/dq_io_tri_reg/C] -to ${HB_dq_ports}
 
#set_false_path -from * -to [get_pins */*/inst/*/i_iavs0_270_rstn_1_reg/CLR]
#set_false_path -from * -to [get_pins */*/inst/*/i_iavs0_270_rstn_2_reg/CLR]
#set_false_path -from * -to [get_pins */*/inst/*/i_iavs0_270_rstn_3_reg/CLR]



#
## Configuration options, can be used for all designs
#
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.M1PIN PULLNONE [current_design]
set_property BITSTREAM.CONFIG.M2PIN PULLNONE [current_design]
set_property BITSTREAM.CONFIG.M0PIN PULLNONE [current_design]

set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]

