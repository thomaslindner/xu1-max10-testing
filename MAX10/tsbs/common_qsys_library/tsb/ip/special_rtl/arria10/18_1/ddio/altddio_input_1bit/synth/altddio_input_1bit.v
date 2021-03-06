// altddio_input_1bit.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module altddio_input_1bit (
		input  wire       ck,     //     ck.export
		output wire [1:0] dout,   //   dout.export
		input  wire [0:0] pad_in  // pad_in.export
	);

	altddio_input_1bit_altera_gpio_181_nysxhoa gpio_0 (
		.ck     (ck),     //     ck.export
		.dout   (dout),   //   dout.export
		.pad_in (pad_in)  // pad_in.export
	);

endmodule
