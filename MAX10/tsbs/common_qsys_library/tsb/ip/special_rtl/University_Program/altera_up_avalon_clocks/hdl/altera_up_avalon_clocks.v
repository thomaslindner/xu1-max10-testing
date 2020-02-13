/******************************************************************************
 * License Agreement                                                          *
 *                                                                            *
 * Copyright (c) 1991-2013 Altera Corporation, San Jose, California, USA.     *
 * All rights reserved.                                                       *
 *                                                                            *
 * Any megafunction design, and related net list (encrypted or decrypted),    *
 *  support information, device programming or simulation file, and any other *
 *  associated documentation or information provided by Altera or a partner   *
 *  under Altera's Megafunction Partnership Program may be used only to       *
 *  program PLD devices (but not masked PLD devices) from Altera.  Any other  *
 *  use of such megafunction design, net list, support information, device    *
 *  programming or simulation file, or any other related documentation or     *
 *  information is prohibited for any other purpose, including, but not       *
 *  limited to modification, reverse engineering, de-compiling, or use with   *
 *  any other silicon devices, unless such use is explicitly licensed under   *
 *  a separate agreement with Altera or a megafunction partner.  Title to     *
 *  the intellectual property, including patents, copyrights, trademarks,     *
 *  trade secrets, or maskworks, embodied in any such megafunction design,    *
 *  net list, support information, device programming or simulation file, or  *
 *  any other related documentation or information provided by Altera or a    *
 *  megafunction partner, remains with Altera, the megafunction partner, or   *
 *  their respective licensors.  No other licenses, including any licenses    *
 *  needed under any third party's intellectual property, are provided herein.*
 *  Copying or modifying any file, or portion thereof, to which this notice   *
 *  is attached violates this copyright.                                      *
 *                                                                            *
 * THIS FILE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR    *
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,   *
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL    *
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER *
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING    *
 * FROM, OUT OF OR IN CONNECTION WITH THIS FILE OR THE USE OR OTHER DEALINGS  *
 * IN THIS FILE.                                                              *
 *                                                                            *
 * This agreement shall be governed in all respects by the laws of the State  *
 *  of California and by the laws of the United States of America.            *
 *                                                                            *
 ******************************************************************************/

/******************************************************************************
 *                                                                            *
 *   This module generates the clocks needed for the I/O devices on           *
 * Altera's DE-series boards.                                                 *
 *                                                                            *
 ******************************************************************************/

module altera_up_avalon_clocks (
	// inputs
	CLOCK_50,
`ifdef USE_AUDIO_CLK
	CLOCK_27,
`endif
	reset,

	address,
	
	// bidirectional

	// outputs
	sys_clk,
`ifdef USE_SDRAM_CLK
	SDRAM_CLK,
`endif
`ifdef USE_VGA_CLK
`ifdef USE_TPAD
	VGA_CLK_40,
`elsif USE_VEEK_MT
	VGA_CLK_33,
`endif
	VGA_CLK,
`endif
`ifdef USE_AUDIO_CLK
	AUD_CLK,
`endif

	readdata
);

/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/

parameter SYS_CLK_MULT	= 1;
parameter SYS_CLK_DIV	= 1;

`ifdef USE_AUDIO_CLK
parameter AUD_CLK_MULT	= 14;
parameter AUD_CLK_DIV	= 31;
`endif

/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/
// Inputs
input						CLOCK_50;
`ifdef USE_AUDIO_CLK
input						CLOCK_27;
`endif
input						reset;

input						address;

// Bidirectionals

// Outputs
output					sys_clk;
`ifdef USE_SDRAM_CLK
output					SDRAM_CLK;
`endif
`ifdef USE_VGA_CLK
`ifdef USE_TPAD
output					VGA_CLK_40;
`elsif USE_VEEK_MT
output					VGA_CLK_33;
`endif
output					VGA_CLK;
`endif
`ifdef USE_AUDIO_CLK
output					AUD_CLK;
`endif

output reg	[ 7: 0]	readdata;

/*****************************************************************************
 *                           Constant Declarations                           *
 *****************************************************************************/


/*****************************************************************************
 *                 Internal Wires and Registers Declarations                 *
 *****************************************************************************/
// Internal Wires
wire						clk_locked;
wire						audio_clk_locked;

wire						video_in_clk;
`ifndef USE_SDRAM_CLK
wire						SDRAM_CLK;
`endif
`ifndef USE_VGA_CLK
`ifdef USE_TPAD
wire						VGA_CLK_40;
`elsif USE_VEEK_MT
wire						VGA_CLK_33;
`endif
wire						VGA_CLK;
`endif

// Internal Registers

// State Machine Registers

/*****************************************************************************
 *                         Finite State Machine(s)                           *
 *****************************************************************************/


/*****************************************************************************
 *                             Sequential Logic                              *
 *****************************************************************************/

// Output Registers
always @(posedge CLOCK_50)
begin
	if (reset)
		readdata <= 8'h00;
	else if (address)
		readdata <= 8'h00;
	else
		readdata <= {6'h00, audio_clk_locked, clk_locked};
end

/*****************************************************************************
 *                            Combinational Logic                            *
 *****************************************************************************/


/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/

altpll DE_Clock_Generator_System (
	.inclk			({1'b0, CLOCK_50}),
`ifdef USE_TPAD
	.clk				({VGA_CLK_40, VGA_CLK, SDRAM_CLK, sys_clk}),
`elsif USE_VEEK_MT
	.clk				({VGA_CLK_33, VGA_CLK, SDRAM_CLK, sys_clk}),
`else
	.clk				({VGA_CLK, SDRAM_CLK, sys_clk}),
`endif
	.locked			(clk_locked),
	.activeclock	(),
	.areset			(1'b0),
	.clkbad			(),
	.clkena			({6{1'b1}}),
	.clkloss			(),
	.clkswitch		(1'b0),
	.enable0			(),
	.enable1			(),
	.extclk			(),
	.extclkena		({4{1'b1}}),
	.fbin				(1'b1),
	.pfdena			(1'b1),
	.pllena			(1'b1),
	.scanaclr		(1'b0),
	.scanclk			(1'b0),
	.scandata		(1'b0),
	.scandataout	(),
	.scandone		(),
	.scanread		(1'b0),
	.scanwrite		(1'b0),
	.sclkout0		(),
	.sclkout1		()
);
defparam
	DE_Clock_Generator_System.clk0_divide_by				= SYS_CLK_DIV,
	DE_Clock_Generator_System.clk0_duty_cycle				= 50,
	DE_Clock_Generator_System.clk0_multiply_by			= SYS_CLK_MULT,
	DE_Clock_Generator_System.clk0_phase_shift			= "0",
	DE_Clock_Generator_System.clk1_divide_by				= SYS_CLK_DIV,
	DE_Clock_Generator_System.clk1_duty_cycle				= 50,
	DE_Clock_Generator_System.clk1_multiply_by			= SYS_CLK_MULT,
	DE_Clock_Generator_System.clk1_phase_shift			= "-3000",
	DE_Clock_Generator_System.clk2_divide_by				= 2,
	DE_Clock_Generator_System.clk2_duty_cycle				= 50,
	DE_Clock_Generator_System.clk2_multiply_by			= 1,
	DE_Clock_Generator_System.clk2_phase_shift			= "20000",
`ifdef USE_TPAD
	DE_Clock_Generator_System.clk3_divide_by				= 5,
	DE_Clock_Generator_System.clk3_duty_cycle				= 50,
	DE_Clock_Generator_System.clk3_multiply_by			= 4,
	DE_Clock_Generator_System.clk3_phase_shift			= "0",
`elsif USE_VEEK_MT
	DE_Clock_Generator_System.clk3_divide_by				= 3,
	DE_Clock_Generator_System.clk3_duty_cycle				= 50,
	DE_Clock_Generator_System.clk3_multiply_by			= 2,
	DE_Clock_Generator_System.clk3_phase_shift			= "0",
`endif
	DE_Clock_Generator_System.compensate_clock			= "CLK0",
	DE_Clock_Generator_System.gate_lock_signal			= "NO",
	DE_Clock_Generator_System.inclk0_input_frequency	= 20000,
`ifdef USE_CYCLONE_III
	DE_Clock_Generator_System.intended_device_family	= "Cyclone III",
`elsif USE_CYCLONE_IV
	DE_Clock_Generator_System.intended_device_family	= "Cyclone IV",
`else
	DE_Clock_Generator_System.intended_device_family	= "Cyclone II",
`endif
	DE_Clock_Generator_System.invalid_lock_multiplier	= 5,
	DE_Clock_Generator_System.lpm_type						= "altpll",
	DE_Clock_Generator_System.operation_mode				= "NORMAL",
	DE_Clock_Generator_System.pll_type						= "FAST",
	DE_Clock_Generator_System.port_activeclock			= "PORT_UNUSED",
	DE_Clock_Generator_System.port_areset					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkbad0					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkbad1					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkloss					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkswitch				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_fbin						= "PORT_UNUSED",
	DE_Clock_Generator_System.port_inclk0					= "PORT_USED",
	DE_Clock_Generator_System.port_inclk1					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_locked					= "PORT_USED",
	DE_Clock_Generator_System.port_pfdena					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_pllena					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_scanaclr				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_scanclk					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_scandata				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_scandataout			= "PORT_UNUSED",
	DE_Clock_Generator_System.port_scandone				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_scanread				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_scanwrite				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clk0						= "PORT_USED",
	DE_Clock_Generator_System.port_clk1						= "PORT_USED",
	DE_Clock_Generator_System.port_clk2						= "PORT_USED",
	DE_Clock_Generator_System.port_clk3						= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clk4						= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clk5						= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkena0					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkena1					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkena2					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkena3					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkena4					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_clkena5					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_enable0					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_enable1					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclk0					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclk1					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclk2					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclk3					= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclkena0				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclkena1				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclkena2				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_extclkena3				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_sclkout0				= "PORT_UNUSED",
	DE_Clock_Generator_System.port_sclkout1				= "PORT_UNUSED",
	DE_Clock_Generator_System.valid_lock_multiplier		= 1;

`ifdef USE_AUDIO_CLK
altpll DE_Clock_Generator_Audio (
	.inclk			({1'b0, CLOCK_27}),
	.clk				({AUD_CLK, video_in_clk}),
	.locked			(audio_clk_locked),
	.activeclock	(),
	.areset			(1'b0),
	.clkbad			(),
	.clkena			({6{1'b1}}),
	.clkloss			(),
	.clkswitch		(1'b0),
	.enable0			(),
	.enable1			(),
	.extclk			(),
	.extclkena		({4{1'b1}}),
	.fbin				(1'b1),
	.pfdena			(1'b1),
	.pllena			(1'b1),
	.scanaclr		(1'b0),
	.scanclk			(1'b0),
	.scandata		(1'b0),
	.scandataout	(),
	.scandone		(),
	.scanread		(1'b0),
	.scanwrite		(1'b0),
	.sclkout0		(),
	.sclkout1		()
);
defparam
	DE_Clock_Generator_Audio.clk0_divide_by				= 1,
	DE_Clock_Generator_Audio.clk0_duty_cycle				= 50,
	DE_Clock_Generator_Audio.clk0_multiply_by				= 1,
	DE_Clock_Generator_Audio.clk0_phase_shift				= "0",
	DE_Clock_Generator_Audio.clk1_divide_by				= AUD_CLK_DIV,
	DE_Clock_Generator_Audio.clk1_duty_cycle				= 50,
	DE_Clock_Generator_Audio.clk1_multiply_by				= AUD_CLK_MULT,
	DE_Clock_Generator_Audio.clk1_phase_shift				= "0",
	DE_Clock_Generator_Audio.compensate_clock				= "CLK0",
	DE_Clock_Generator_Audio.gate_lock_signal				= "NO",
	DE_Clock_Generator_Audio.inclk0_input_frequency		= 37037,
`ifdef USE_CYCLONE_III
	DE_Clock_Generator_Audio.intended_device_family		= "Cyclone III",
`elsif USE_CYCLONE_IV
	DE_Clock_Generator_Audio.intended_device_family		= "Cyclone IV",
`else
	DE_Clock_Generator_Audio.intended_device_family		= "Cyclone II",
`endif
	DE_Clock_Generator_Audio.invalid_lock_multiplier	= 5,
	DE_Clock_Generator_Audio.lpm_type						= "altpll",
	DE_Clock_Generator_Audio.operation_mode				= "NORMAL",
	DE_Clock_Generator_Audio.pll_type						= "FAST",
	DE_Clock_Generator_Audio.port_activeclock				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_areset					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkbad0					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkbad1					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkloss					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkswitch				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_fbin						= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_inclk0					= "PORT_USED",
	DE_Clock_Generator_Audio.port_inclk1					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_locked					= "PORT_USED",
	DE_Clock_Generator_Audio.port_pfdena					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_pllena					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_scanaclr					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_scanclk					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_scandata					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_scandataout				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_scandone					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_scanread					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_scanwrite				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clk0						= "PORT_USED",
	DE_Clock_Generator_Audio.port_clk1						= "PORT_USED",
	DE_Clock_Generator_Audio.port_clk2						= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clk3						= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clk4						= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clk5						= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkena0					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkena1					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkena2					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkena3					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkena4					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_clkena5					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_enable0					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_enable1					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclk0					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclk1					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclk2					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclk3					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclkena0				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclkena1				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclkena2				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_extclkena3				= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_sclkout0					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.port_sclkout1					= "PORT_UNUSED",
	DE_Clock_Generator_Audio.valid_lock_multiplier		= 1;
`endif

endmodule

