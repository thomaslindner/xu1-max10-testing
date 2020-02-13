module test_parallel_multiple_parallel_output_lfsrs_w_sm
#(
parameter [7:0] counter_bits = 8,
parameter [31:0] NUM_LFSRS = 3,
parameter [31:0] MAX_LFSR_WIDTH = 9,
parameter [31:0] NUM_OUTPUT_BITS = 10,
parameter bit [31:0] LFSR_WIDTHS[NUM_LFSRS] = '{3, 7, 9},
parameter bit [MAX_LFSR_WIDTH-1:0] FEEDBACK_TAPS[NUM_LFSRS] =  '{3'b010, 7'b0100000, 9'b000010000},
parameter bit [MAX_LFSR_WIDTH-1:0] INITIAL_LFSR_VALS[NUM_LFSRS] = '{NUM_LFSRS{1'b1}}
)
(
output  logic   [MAX_LFSR_WIDTH-1:0]  in_vector[NUM_LFSRS],
output  logic   [NUM_OUTPUT_BITS-1:0] out_data[NUM_LFSRS],
input do_not_transpose_output_data,
input clk,
input reset,
input start,
input [counter_bits-1:0] wait_count,
output logic finish,

//debugging
output logic in_vector_clock_enable,
output logic out_data_clock_enable,
output logic  [counter_bits-1:0] counter = 0,
output logic  reset_counter,
output logic  cnt_en,
output logic [15:0] state

);

parallel_multiple_parallel_output_lfsrs_w_sm
#(
.counter_bits                (counter_bits                ),
.NUM_LFSRS                   (NUM_LFSRS                   ),
.MAX_LFSR_WIDTH              (MAX_LFSR_WIDTH              ),
.NUM_OUTPUT_BITS             (NUM_OUTPUT_BITS             ),
.LFSR_WIDTHS                 (LFSR_WIDTHS                 ),
.FEEDBACK_TAPS               (FEEDBACK_TAPS               ),
.INITIAL_LFSR_VALS           (INITIAL_LFSR_VALS           )
)
parallel_multiple_parallel_output_lfsrs_w_sm_inst
(
.*
);

endmodule
