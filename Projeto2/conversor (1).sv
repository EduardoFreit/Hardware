module conversor (input logic [31:0] primeiro, output logic [31:0] saida);
	always_comb begin
		saida [31:24] = primeiro [7:0];
		saida [23:16] = primeiro [15:8];
		saida [15:8] = primeiro [23:16];
		saida [7:0] = primeiro [31:24];
	end
endmodule: conversor