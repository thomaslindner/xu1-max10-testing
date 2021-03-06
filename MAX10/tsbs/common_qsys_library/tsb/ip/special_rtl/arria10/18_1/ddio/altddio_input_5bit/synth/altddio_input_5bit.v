// altddio_input_5bit.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module altddio_input_5bit (
		input  wire       ck,        //        ck.export
		output wire [4:0] dataout_h, // dataout_h.fragment
		output wire [4:0] dataout_l, // dataout_l.fragment
		input  wire [4:0] datain     //    pad_in.export
	);

	altddio_input_5bit_altera_gpio_181_jjgtasy gpio_0 (
		.ck        (ck),        //        ck.export
		.dataout_h (dataout_h), // dataout_h.fragment
		.dataout_l (dataout_l), // dataout_l.fragment
		.datain    (datain)     //    pad_in.export
	);

endmodule
