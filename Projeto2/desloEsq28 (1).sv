module desloEsq28 (input logic [25:0] entrada26, output logic [27:0] saida28);

	always_comb begin 
		saida28 = entrada26 + 28'b0;
		saida28 = saida28 << 2;
	end

endmodule: desloEsq28