module desloEsq32 (input logic [31:0] entrada32, output logic [31:0] saida32);

	always_comb begin 
		saida32 = entrada32 << 2;
	end

endmodule: desloEsq32