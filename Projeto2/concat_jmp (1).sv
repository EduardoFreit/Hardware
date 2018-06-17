module concat_jmp (input logic [27:0] offset, input logic [3:0] pc_3128, output logic [31:0] Conct_out);
	always_comb begin
		Conct_out = pc_3128;
		Conct_out = Conct_out << 24;
		Conct_out = Conct_out + offset;
	end
endmodule: concat_jmp