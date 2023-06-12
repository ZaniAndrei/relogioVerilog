module RelogioDigital(
  input clk,
  output  [4:0] horas,
  output  [5:0] minutos,
  output  [5:0] segundos
);

initial begin
  horas = 0;
  segundos = 0;
  minutos = 0;
end

always @(negedge clk) begin
    segundos++;
    if(segundos == 60) begin
      segundos = 0;
      minutos++;
      if(minutos == 60) begin
        minutos = 0;
        horas++;
        if(horas == 24)begin        
          horas = 0;
        end
      end
    end 
end



endmodule
