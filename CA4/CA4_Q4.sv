`timescale 1ns/1ns


module CA4_Q4_8bit_shift_register(input sin, clk, output [7:0] PO);
	wire [8:0] Q;
	assign Q[8] = sin;
	assign PO[0] = Q[0];
	genvar i;
	generate
	for (i=0;i<8;i=i+1) begin: I0
		CA4_Q3_D_latch J0 (~Q[i+1],clk,Q[i]);
		assign PO[i]=Q[i];


	end
	endgenerate


endmodule