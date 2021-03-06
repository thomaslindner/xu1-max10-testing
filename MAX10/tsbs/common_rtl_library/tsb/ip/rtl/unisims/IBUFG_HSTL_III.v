// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/unisims/IBUFG_HSTL_III.v,v 1.5.158.1 2007/03/09 18:13:05 patrickp Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Input Clock Buffer with HSTL_III I/O Standard
// /___/   /\     Filename : IBUFG_HSTL_III.v
// \   \  /  \    Timestamp : Thu Mar 25 16:42:27 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
// End Revision

`timescale  100 ps / 10 ps


module IBUFG_HSTL_III (O, I);

    output O;

    input  I;

	buf B1 (O, I);


endmodule

