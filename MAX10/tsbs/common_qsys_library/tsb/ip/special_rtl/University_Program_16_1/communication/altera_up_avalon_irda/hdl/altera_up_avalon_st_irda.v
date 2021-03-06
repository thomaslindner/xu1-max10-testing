// (C) 2001-2017 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// THIS FILE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THIS FILE OR THE USE OR OTHER DEALINGS
// IN THIS FILE.

/******************************************************************************
 *                                                                            *
 * This module reads and writes data to the IrDA connector on Altera's        *
 *  DE-series Development and Education Boards.                               *
 *                                                                            *
 ******************************************************************************/

module altera_up_avalon_st_irda (
	// Inputs
	clk,
	reset,
	
	from_uart_ready,

	to_uart_data,
	to_uart_error,
	to_uart_valid,

	IRDA_RXD,

	// Bidirectionals

	// Outputs
	from_uart_data,
	from_uart_error,
	from_uart_valid,

	to_uart_ready,

	IRDA_TXD
);

/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/

parameter CW							= 9;			// Baud counter width
parameter BAUD_TICK_COUNT			= 433;
parameter BAUD_3_16_TICK_COUNT	= 81;
parameter CAPTURE_IN_TICK_COUNT	= 60;
parameter HALF_BAUD_TICK_COUNT	= 216;

parameter TDW							= 11;			// Total data width
parameter DW							= 8;			// Data width	
parameter ODD_PARITY					= 1'b1;

/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/
// Inputs
input						clk;
input						reset;

input						from_uart_ready;

input			[(DW-1):0]	to_uart_data;
input						to_uart_error;
input						to_uart_valid;

input						IRDA_RXD;

// Bidirectionals

// Outputs
output		[(DW-1):0]	from_uart_data;
output					from_uart_error;
output					from_uart_valid;

output					to_uart_ready;

output					IRDA_TXD;

/*****************************************************************************
 *                           Constant Declarations                           *
 *****************************************************************************/

/*****************************************************************************
 *                 Internal Wires and Registers Declarations                 *
 *****************************************************************************/

// Internal Wires
`ifdef USE_PARITY
wire			[DW: 0]	read_data;
`else
wire		[(DW-1):0]	read_data;
`endif

wire						write_data_parity;
wire			[ 7: 0]	write_space;

// Internal Registers

// State Machine Registers

/*****************************************************************************
 *                         Finite State Machine(s)                           *
 *****************************************************************************/


/*****************************************************************************
 *                             Sequential Logic                              *
 *****************************************************************************/

// Output Registers

// Internal Registers

/*****************************************************************************
 *                            Combinational Logic                            *
 *****************************************************************************/

// Output Assignments
`ifdef USE_PARITY
assign from_uart_data	= read_data[(DW - 1):0];
assign from_uart_error	= ((^(read_data[DW:0])) ^ ODD_PARITY);
`else
assign from_uart_data	= read_data;
assign from_uart_error	= 1'b0;
`endif

assign to_uart_ready		= (|(write_space));

// Internal Assignments
assign write_data_parity = (^(to_uart_data)) ^ ODD_PARITY;

/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/

altera_up_irda_in_deserializer IrDA_In_Deserializer (
	// Inputs
	.clk						(clk),
	.reset					(reset),
	
	.serial_data_in		(IRDA_RXD),

	.receive_data_en		(from_uart_ready),

	// Bidirectionals

	// Outputs
	.fifo_read_available	(),

	.received_data_valid	(from_uart_valid),
	.received_data			(read_data)
);
defparam 
	IrDA_In_Deserializer.CW								= CW,
	IrDA_In_Deserializer.BAUD_TICK_COUNT			= BAUD_TICK_COUNT,
	IrDA_In_Deserializer.BAUD_3_16_TICK_COUNT		= BAUD_3_16_TICK_COUNT,
	IrDA_In_Deserializer.CAPTURE_IN_TICK_COUNT	= CAPTURE_IN_TICK_COUNT,
	IrDA_In_Deserializer.HALF_BAUD_TICK_COUNT		= HALF_BAUD_TICK_COUNT,
	IrDA_In_Deserializer.TDW							= TDW,
`ifdef USE_PARITY
	IrDA_In_Deserializer.DW								= (DW + 1);
`else
	IrDA_In_Deserializer.DW								= DW;
`endif

altera_up_irda_out_serializer IrDA_Out_Serializer (
	// Inputs
	.clk						(clk),
	.reset					(reset),
	
`ifdef USE_PARITY
	.transmit_data			({write_data_parity, to_uart_data}),
`else
	.transmit_data			(to_uart_data),
`endif
	.transmit_data_en		(to_uart_valid & to_uart_ready),

	// Bidirectionals

	// Outputs
	.fifo_write_space		(write_space),

	.serial_data_out		(IRDA_TXD)
);
defparam 
	IrDA_Out_Serializer.CW								= CW,
	IrDA_Out_Serializer.BAUD_TICK_COUNT				= BAUD_TICK_COUNT,
	IrDA_Out_Serializer.BAUD_3_16_TICK_COUNT		= BAUD_3_16_TICK_COUNT,
	IrDA_Out_Serializer.CAPTURE_IN_TICK_COUNT		= CAPTURE_IN_TICK_COUNT,
	IrDA_Out_Serializer.HALF_BAUD_TICK_COUNT		= HALF_BAUD_TICK_COUNT,
	IrDA_Out_Serializer.TDW								= TDW,
`ifdef USE_PARITY
	IrDA_Out_Serializer.DW								= (DW + 1);
`else
	IrDA_Out_Serializer.DW								= DW;
`endif

endmodule

