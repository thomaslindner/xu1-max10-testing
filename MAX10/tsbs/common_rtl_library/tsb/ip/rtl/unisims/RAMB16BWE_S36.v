///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.2i
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  16K-Bit Data and 2K-Bit Parity Dual Port Block RAM
// /___/   /\     Filename : RAMB16BWE_S36.v
// \   \  /  \    Timestamp : Wed Jun 8 16:43:35 PST 2005
//  \___\/\___\
//
//  Generated by : VerilogFileWriter (write_verilog)
//
// Revision:
//    06/08/05 - Initial version.
// End Revision
`timescale 1 ps / 1 ps 

module RAMB16BWE_S36 (
	DO,
	DOP,
	ADDR,
	CLK,
	DI,
	DIP,
	EN,
	SSR,
	WE

);

output [31:0] DO;
output [3:0] DOP;

input CLK;
input EN;
input SSR;
input [3:0] WE;
input [31:0] DI;
input [3:0] DIP;
input [8:0] ADDR;

parameter INIT = 36'h0;
parameter INITP_00 = 256'h0;
parameter INITP_01 = 256'h0;
parameter INITP_02 = 256'h0;
parameter INITP_03 = 256'h0;
parameter INITP_04 = 256'h0;
parameter INITP_05 = 256'h0;
parameter INITP_06 = 256'h0;
parameter INITP_07 = 256'h0;
parameter INIT_00 = 256'h0;
parameter INIT_01 = 256'h0;
parameter INIT_02 = 256'h0;
parameter INIT_03 = 256'h0;
parameter INIT_04 = 256'h0;
parameter INIT_05 = 256'h0;
parameter INIT_06 = 256'h0;
parameter INIT_07 = 256'h0;
parameter INIT_08 = 256'h0;
parameter INIT_09 = 256'h0;
parameter INIT_0A = 256'h0;
parameter INIT_0B = 256'h0;
parameter INIT_0C = 256'h0;
parameter INIT_0D = 256'h0;
parameter INIT_0E = 256'h0;
parameter INIT_0F = 256'h0;
parameter INIT_10 = 256'h0;
parameter INIT_11 = 256'h0;
parameter INIT_12 = 256'h0;
parameter INIT_13 = 256'h0;
parameter INIT_14 = 256'h0;
parameter INIT_15 = 256'h0;
parameter INIT_16 = 256'h0;
parameter INIT_17 = 256'h0;
parameter INIT_18 = 256'h0;
parameter INIT_19 = 256'h0;
parameter INIT_1A = 256'h0;
parameter INIT_1B = 256'h0;
parameter INIT_1C = 256'h0;
parameter INIT_1D = 256'h0;
parameter INIT_1E = 256'h0;
parameter INIT_1F = 256'h0;
parameter INIT_20 = 256'h0;
parameter INIT_21 = 256'h0;
parameter INIT_22 = 256'h0;
parameter INIT_23 = 256'h0;
parameter INIT_24 = 256'h0;
parameter INIT_25 = 256'h0;
parameter INIT_26 = 256'h0;
parameter INIT_27 = 256'h0;
parameter INIT_28 = 256'h0;
parameter INIT_29 = 256'h0;
parameter INIT_2A = 256'h0;
parameter INIT_2B = 256'h0;
parameter INIT_2C = 256'h0;
parameter INIT_2D = 256'h0;
parameter INIT_2E = 256'h0;
parameter INIT_2F = 256'h0;
parameter INIT_30 = 256'h0;
parameter INIT_31 = 256'h0;
parameter INIT_32 = 256'h0;
parameter INIT_33 = 256'h0;
parameter INIT_34 = 256'h0;
parameter INIT_35 = 256'h0;
parameter INIT_36 = 256'h0;
parameter INIT_37 = 256'h0;
parameter INIT_38 = 256'h0;
parameter INIT_39 = 256'h0;
parameter INIT_3A = 256'h0;
parameter INIT_3B = 256'h0;
parameter INIT_3C = 256'h0;
parameter INIT_3D = 256'h0;
parameter INIT_3E = 256'h0;
parameter INIT_3F = 256'h0;
parameter SRVAL = 36'h0;
parameter WRITE_MODE = "WRITE_FIRST";



wire [31:0] OPEN_DOA;
wire [31:0] OPEN_DOB;
wire [3:0] OPEN_DOPA;
wire [3:0] OPEN_DOPB;

RAMB16BWE ramb16bwe_1 (
        .ADDRA ({ADDR, 5'b0}),
        .ADDRB (14'b0),
        .CLKA (CLK),
        .CLKB (1'b0),
        .DIA (DI),
        .DIPA (DIP),
        .DIB (32'b0),
        .DIPB (4'b0),

        .DOA (DO),
        .DOB (OPEN_DOB),
        .DOPA (DOP),
        .DOPB (OPEN_DOPB),
        .ENA (EN),
        .ENB (1'b0),
        .SSRA (SSR),
        .SSRB (1'b0),
        .WEA ({WE[3],WE[2],WE[1],WE[0]}),
        .WEB (4'b0)

);


defparam ramb16bwe_1.DATA_WIDTH_A = 36;
defparam ramb16bwe_1.DATA_WIDTH_B = 0;

defparam ramb16bwe_1.INITP_00 = INITP_00;
defparam ramb16bwe_1.INITP_01 = INITP_01;
defparam ramb16bwe_1.INITP_02 = INITP_02;
defparam ramb16bwe_1.INITP_03 = INITP_03;
defparam ramb16bwe_1.INITP_04 = INITP_04;
defparam ramb16bwe_1.INITP_05 = INITP_05;
defparam ramb16bwe_1.INITP_06 = INITP_06;
defparam ramb16bwe_1.INITP_07 = INITP_07;
defparam ramb16bwe_1.INIT_00 = INIT_00;
defparam ramb16bwe_1.INIT_01 = INIT_01;
defparam ramb16bwe_1.INIT_02 = INIT_02;
defparam ramb16bwe_1.INIT_03 = INIT_03;
defparam ramb16bwe_1.INIT_04 = INIT_04;
defparam ramb16bwe_1.INIT_05 = INIT_05;
defparam ramb16bwe_1.INIT_06 = INIT_06;
defparam ramb16bwe_1.INIT_07 = INIT_07;
defparam ramb16bwe_1.INIT_08 = INIT_08;
defparam ramb16bwe_1.INIT_09 = INIT_09;
defparam ramb16bwe_1.INIT_0A = INIT_0A;
defparam ramb16bwe_1.INIT_0B = INIT_0B;
defparam ramb16bwe_1.INIT_0C = INIT_0C;
defparam ramb16bwe_1.INIT_0D = INIT_0D;
defparam ramb16bwe_1.INIT_0E = INIT_0E;
defparam ramb16bwe_1.INIT_0F = INIT_0F;
defparam ramb16bwe_1.INIT_10 = INIT_10;
defparam ramb16bwe_1.INIT_11 = INIT_11;
defparam ramb16bwe_1.INIT_12 = INIT_12;
defparam ramb16bwe_1.INIT_13 = INIT_13;
defparam ramb16bwe_1.INIT_14 = INIT_14;
defparam ramb16bwe_1.INIT_15 = INIT_15;
defparam ramb16bwe_1.INIT_16 = INIT_16;
defparam ramb16bwe_1.INIT_17 = INIT_17;
defparam ramb16bwe_1.INIT_18 = INIT_18;
defparam ramb16bwe_1.INIT_19 = INIT_19;
defparam ramb16bwe_1.INIT_1A = INIT_1A;
defparam ramb16bwe_1.INIT_1B = INIT_1B;
defparam ramb16bwe_1.INIT_1C = INIT_1C;
defparam ramb16bwe_1.INIT_1D = INIT_1D;
defparam ramb16bwe_1.INIT_1E = INIT_1E;
defparam ramb16bwe_1.INIT_1F = INIT_1F;
defparam ramb16bwe_1.INIT_20 = INIT_20;
defparam ramb16bwe_1.INIT_21 = INIT_21;
defparam ramb16bwe_1.INIT_22 = INIT_22;
defparam ramb16bwe_1.INIT_23 = INIT_23;
defparam ramb16bwe_1.INIT_24 = INIT_24;
defparam ramb16bwe_1.INIT_25 = INIT_25;
defparam ramb16bwe_1.INIT_26 = INIT_26;
defparam ramb16bwe_1.INIT_27 = INIT_27;
defparam ramb16bwe_1.INIT_28 = INIT_28;
defparam ramb16bwe_1.INIT_29 = INIT_29;
defparam ramb16bwe_1.INIT_2A = INIT_2A;
defparam ramb16bwe_1.INIT_2B = INIT_2B;
defparam ramb16bwe_1.INIT_2C = INIT_2C;
defparam ramb16bwe_1.INIT_2D = INIT_2D;
defparam ramb16bwe_1.INIT_2E = INIT_2E;
defparam ramb16bwe_1.INIT_2F = INIT_2F;
defparam ramb16bwe_1.INIT_30 = INIT_30;
defparam ramb16bwe_1.INIT_31 = INIT_31;
defparam ramb16bwe_1.INIT_32 = INIT_32;
defparam ramb16bwe_1.INIT_33 = INIT_33;
defparam ramb16bwe_1.INIT_34 = INIT_34;
defparam ramb16bwe_1.INIT_35 = INIT_35;
defparam ramb16bwe_1.INIT_36 = INIT_36;
defparam ramb16bwe_1.INIT_37 = INIT_37;
defparam ramb16bwe_1.INIT_38 = INIT_38;
defparam ramb16bwe_1.INIT_39 = INIT_39;
defparam ramb16bwe_1.INIT_3A = INIT_3A;
defparam ramb16bwe_1.INIT_3B = INIT_3B;
defparam ramb16bwe_1.INIT_3C = INIT_3C;
defparam ramb16bwe_1.INIT_3D = INIT_3D;
defparam ramb16bwe_1.INIT_3E = INIT_3E;
defparam ramb16bwe_1.INIT_3F = INIT_3F;
defparam ramb16bwe_1.INIT_A  = INIT;
defparam ramb16bwe_1.SIM_COLLISION_CHECK = "NONE";
defparam ramb16bwe_1.SRVAL_A = SRVAL;
defparam ramb16bwe_1.WRITE_MODE_A = WRITE_MODE;

endmodule
