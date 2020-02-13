// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/unisims/LDC.v,v 1.12.34.1 2007/03/09 18:13:09 patrickp Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.30)
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Transparent Data Latch with Asynchronous Clear
// /___/   /\     Filename : LDC.v
// \   \  /  \    Timestamp : Thu Mar 25 16:42:52 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    02/04/05 - Rev 0.0.1 Remove input/output bufs; Seperate GSR from clock block.
//    08/09/05 - Add GSR to main block (CR 215196).
//    03/31/06 - Add specify block for 100ps delay. (CR 228298)
// End Revision

`timescale  1 ps / 1 ps


module LDC (Q, CLR, D, G);

    parameter INIT = 1'b0;

    output Q;
    wire Q;

    input  CLR, D, G;

    tri0 GSR = glbl.GSR;


    reg q_out;
    
    initial q_out = INIT;
    
    assign Q = q_out;
    
    always @(CLR or D or G or GSR)
      if (GSR)
           q_out <= INIT;
        else
	    if (CLR)
		q_out <= 0;
	    else if (G)
		q_out <= D;
    
    specify
	if (!CLR && G)
	    (D +=> Q) = (100, 100);
	if (!CLR)
	    (posedge G => (Q +: D)) = (100, 100);
	(posedge CLR => (Q +: 1'b0)) = (0, 0);
    endspecify
endmodule
