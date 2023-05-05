LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is
   port(clk      :   in std_logic;
      habilitaLeitura : in std_logic;
      limpaLeitura : in std_logic;
      leituraUmSegundo :   out std_logic;
		chave_sw : in std_logic
   );
end entity;

architecture interface of divisorGenerico_e_Interface is
  signal sinalUmSegundo : std_logic;
  signal saidaclk_reg1seg : std_logic;
  signal saidaclk_regRapido : std_logic;
  signal saidaMux : std_logic;
begin

baseTempo: entity work.divisorGenerico
           generic map (divisor => 25000000/1)   -- divide por 10.
           port map (clk => clk, saida_clk => saidaclk_reg1seg);
			  
baseTempoRapida: entity work.divisorGenerico
           generic map (divisor => 25000000/1800)   -- divide por 10.
           port map (clk => clk, saida_clk => saidaclk_regRapido);
			  
mux: entity work.muxGenerico2x1_bit
			port map (
			entradaA_MUX => saidaclk_reg1seg,
			entradaB_MUX => saidaclk_regRapido,
			seletor_MUX => chave_sw,
			saida_MUX => saidaMux
			);

registraUmSegundo: entity work.flipflopGenerico
   port map (DIN => '1', DOUT => sinalUmSegundo,
         ENABLE => '1', CLK => saidaMux,
         RST => limpaLeitura);
			


-- Faz o tristate de saida:
leituraUmSegundo <= sinalUmSegundo when habilitaLeitura = '1' else 'Z';

end architecture interface;