// scalar_product.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module scalar_product (
		input  wire [31:0] a0,     //     a0.a0
		input  wire [31:0] a1,     //     a1.a1
		input  wire        areset, // areset.reset
		input  wire [31:0] b0,     //     b0.b0
		input  wire [31:0] b1,     //     b1.b1
		input  wire        clk,    //    clk.clk
		output wire [31:0] q       //      q.q
	);

	scalar_product_altera_fp_functions_181_nd36kqi fp_functions_0 (
		.clk    (clk),    //    clk.clk
		.areset (areset), // areset.reset
		.a0     (a0),     //     a0.a0
		.b0     (b0),     //     b0.b0
		.a1     (a1),     //     a1.a1
		.b1     (b1),     //     b1.b1
		.q      (q)       //      q.q
	);

endmodule
