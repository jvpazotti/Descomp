library ieee;
use ieee.std_logic_1164.all;

entity estendeSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
		  controle_MUX : in std_logic;
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeSinalGenerico is
	signal saida_mux : std_logic;
begin

	MUX:  entity work.muxGenerico2x1_1bit
        port map( entradaA_MUX => estendeSinal_IN(larguraDadoEntrada-1),
                 entradaB_MUX => '0',
                 seletor_MUX => controle_MUX,
                 saida_MUX => saida_mux);


    estendeSinal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => saida_mux ) & estendeSinal_IN;

end architecture;