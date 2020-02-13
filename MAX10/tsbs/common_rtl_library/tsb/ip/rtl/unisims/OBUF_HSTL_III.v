// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/unisims/OBUF_HSTL_III.v,v 1.5.158.1 2007/03/09 18:13:13 patrickp Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Output Buffer with HSTL_III I/O Standard
// /___/   /\     Filename : OBUF_HSTL_III.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:17 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
// End Revision

`timescale  100 ps / 10 ps


module OBUF_HSTL_III (O, I);

    output O;

    input  I;

    tri0 GTS = glbl.GTS;

    bufif0 B1 (O, I, GTS);


endmodule

