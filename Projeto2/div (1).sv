module div (input logic Clk, Reset, iniciar, sinal, input logic[31:0] Dvdendo, Divsor, output logic[31:0] quociente, resto, output logic dividindo);
	
	enum logic [1:0] {N_DIV, DIVI, END_DIV} estado;
	logic [63:0] Resto, Divisor;
	logic [31:0] Quociente;
	logic [5:0] cont;
	
	always_ff @ (posedge Clk, posedge Reset)begin
		if(Reset) begin
			estado <= N_DIV;
			Quociente <= 32'd0;
			Resto <= 64'd0;
			Divisor <= 64'd0;
			cont <= 6'd0;			
		end
		else begin
			if(iniciar)	begin				
				if (cont < 33) begin
					if (cont == 0) begin
						Divisor = (Divsor << 32);
						Resto = {32'd0, Dvdendo};
					end
					else begin
						Divisor = Divisor;
						Resto = Resto;
					end
					estado <= DIVI;
					if( Resto < Divisor) begin
						Resto = Resto;
						Quociente <= (Quociente << 1) + 32'd0;
					end
					else begin
						Resto = Resto - Divisor;
						Quociente <= (Quociente << 1) + 32'd1;
					end
						
					Divisor = (Divisor >>> 1);
					cont <= cont + 6'd1;					
				end
				else begin
					estado <= END_DIV;
				end
			end
			else begin
				estado <= N_DIV;
				Quociente <= 32'd0;
				Resto <= 64'd0;
				Divisor <= 64'd0;
				cont <= 6'd0;
			end
		end
	end
	always_comb begin
		case(estado)
			N_DIV: begin
				dividindo = 1;
				quociente = 32'd0;
				resto = 32'd0;
			end
			DIVI:begin
				dividindo = 1;
				quociente = 32'd0;
				resto = 32'd0;
			end
			END_DIV:begin
				dividindo = 0;
				if(sinal == 1) begin
					quociente = ~(Quociente) + 32'd1;
					resto = ~(Resto[31:0]) + 32'd1;
				end
				else begin					
					quociente = Quociente;
					resto = Resto[31:0];
				end
			end
		endcase
	end
endmodule: div