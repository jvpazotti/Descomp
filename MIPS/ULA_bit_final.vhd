library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_bit_final is
    generic ( larguraDados : natural := 1 );
    port (
      entradaA, entradaB:  in std_logic;
      selecao:  in std_logic_vector(1 downto 0);
		inverteB:  in std_logic;
		Cin : in std_logic;
		SLT: in std_logic;
		Resultado: out std_logic;
		Overflow: out std_logic
    );
end entity;

architecture comportamento of ULA_bit_final is

signal SaidaMux2x1,Soma_Mux4x1,Cout : std_logic;
   
begin

MUX2x1 : entity work.muxGenerico2x1_1bit generic map (larguraDados => larguraDados)
			port map(entradaA_MUX => entradaB,
						entradaB_MUX => not(entradaB),
						seletor_MUX => inverteB,
						saida_MUX => SaidaMux2x1);
						
MUX4X1 : entity work.muxGenerico4x11_bit generic map (larguraDados => larguraDados)
			port map(entradaA_MUX => (entradaA and SaidaMux2x1), -- and
						entradaB_MUX => (entradaA or SaidaMux2x1), -- or
						entradaC_MUX => Soma_Mux4x1,
						entradaD_MUX => SLT,
						seletor_MUX => selecao,
						saida_MUX => Resultado);
						
Somador : entity work.SomadorULA generic map (larguraDados => larguraDados)
			port map(entradaA => entradaA,
						entradaB => SaidaMux2x1,
						Cin => Cin,
						Cout => Cout,
						Soma => Soma_Mux4x1);


Overflow <= Soma_Mux4x1 xor (Cin xor Cout);

      

end architecture;