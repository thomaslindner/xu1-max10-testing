// arria10_altddio_1bit.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module arria10_altddio_1bit (
		input  wire       ck,       //       ck.export
		input  wire [0:0] datain_h, // datain_h.fragment
		input  wire [0:0] datain_l, // datain_l.fragment
		output wire [0:0] dataout   //  pad_out.export
	);

	arria10_altddio_1bit_altera_gpio_181_q6lqrny gpio_0 (
		.ck       (ck),       //       ck.export
		.datain_h (datain_h), // datain_h.fragment
		.datain_l (datain_l), // datain_l.fragment
		.dataout  (dataout)   //  pad_out.export
	);

endmodule
