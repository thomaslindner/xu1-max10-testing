module async_trap_and_reset (async_sig, outclk, out_sync_sig, auto_reset, reset);
/* this module traps an asyncronous signal async_sig and syncronizes it via 2 flip-flops to outclk. The resulting
   signal is named out_sync_sig. auto_reset tells the module whether to do an auto-reset of out_sync_sig after 2 clocks.
   reset is an asynchronous reset signal. The reset signal is active LOW. */


input async_sig, outclk, auto_reset, reset;
output out_sync_sig;

(* keep = 1, preserve = 1 *) reg async_trap=0;
wire sync1, sync2;

reg actual_auto_reset_signal;


wire actual_async_sig_reset;

wire auto_reset_signal =  auto_reset && sync2;

assign actual_async_sig_reset = actual_auto_reset_signal || (!reset);


assign out_sync_sig = sync2;

always @ (posedge async_sig or posedge actual_async_sig_reset)
begin
	 if (actual_async_sig_reset)
	 	async_trap <= 1'b0;
	 else
	 	async_trap <= 1'b1;
end

//always @ (posedge outclk or negedge reset)
//begin
//	 if (~reset)
//	 begin
//	 	  sync1 <= 1'b0;
//		  sync2 <= 1'b0;
//	 end else
//	 begin
//	 	  sync1 <= async_trap;
//		  sync2 <= sync1;
//	 end
//end
//
//reg [1:0] sync_srl16_inferred ;
//  
//   always @(posedge outclk)
//     begin
//         sync_srl16_inferred <= sync_srl16_inferred << 1;
//         sync_srl16_inferred[0] <= async_trap;
//      end
//
//   assign sync2 = sync_srl16_inferred[1];
//		

//special coding for SRL16 inference in Xilinx devices
wire clock_enable = 1'b1;
reg [1:0] sync_srl16_inferred=0;
   always @(posedge outclk)
      if (clock_enable)
         sync_srl16_inferred[1:0] <= {sync_srl16_inferred[0], async_trap};

assign sync2 = sync_srl16_inferred[1];

always @ (negedge outclk or negedge reset)
begin
	if (~reset)
		 actual_auto_reset_signal <= 1'b0;
	else
		 actual_auto_reset_signal <= auto_reset_signal;
end

endmodule

