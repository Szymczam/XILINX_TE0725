`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2022 20:44:50
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//=======================================================
//  PARAMETER declarations
//=======================================================



//=======================================================
//  PORT declarations
//=======================================================
module main(
    //////////// CLOCK //////////
    input           CLK_100MHz,
    
    //////////// BUTTONS //////////  
    input           rst,
    
    //////////// ADCs //////////  
    input           SDOA_SAR_PRIM,   
    input           SDOB_SAR_PRIM,   
    output          SCLK_SAR_PRIM,   
    output          CS_SAR_PRIM,   
    output          SDI_SAR_PRIM,   
    
    input           SDOA_SAR_SEC,   
    input           SDOB_SAR_SEC,   
    output          SCLK_SAR_SEC,   
    output          CS_SAR_SEC,   
    output          SDI_SAR_SEC, 
              
    input           DOUT_AC,
    output          CLKIN_AC,
    
    //////////// Connectors //////////
    output          DISCH_PRIM,    
    output          DISCH_SEC,
    output          sOUT1,
    output          sOUT2,
    output          sOUT3,
    output          sOUT4,
    output          sOUT5,//wentylator tranzystorów
    output          sOUT6,//wentylator transformatora
    
    //////////// Drivers //////////
    input           T1_SEC,
    input           T2_SEC,
    input           RDY_SEC,
    input           FLT_SEC,
    output          PWM2_L_SEC,
    output          PWM2_H_SEC,
    output          PWM1_L_SEC,
    output          PWM1_H_SEC,  
    
    input           T1_PRIM,
    input           T2_PRIM,
    input           RDY_PRIM,
    input           FLT_PRIM,
    output          PWM2_L_PRIM,
    output          PWM2_H_PRIM,
    output          PWM1_L_PRIM,
    output          PWM1_H_PRIM,  
    
    input           EN_GD_SIG,
    output          RST_FLT,
    output          EN_GD,  
    
    //////////// LEDS //////////
    output  [4:0]   LED,
    output          LED_GREEN,
    
    
    //////////// FIBER //////////
//    input           RD_N,
//    input           RD_P,
//    output          TD_N,
//    output          TD_P,
    
    //////////// UART on debbuger////////// 
    output          TXD,    
    
    
    
    //////////// UART ////////// 
    input           RX_1,
    output          TX_1,    
    input           RX_2,
    output          TX_2,  
    output          RX_EN_2,
    output          TX_EN_2  
);


//=======================================================
//  REG/WIRE declarations
//=======================================================
//	Clocks
wire 			clk_10MHz;	
wire 			clk_1Hz;

// Buttons
wire 		    n_rst;

	
//=======================================================	
//  Structural coding
//=======================================================
assign n_rst = !rst;


clk_div    clk_div_0	(CLK_100MHz, rst, clk_1Hz);
           defparam 	clk_div_0.div_by	= 100_000_000;
           
           
           
assign LED_GREEN        = clk_1Hz;


endmodule
