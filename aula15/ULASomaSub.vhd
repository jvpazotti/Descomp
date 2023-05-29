library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_equal: out std_logic;
		flag_jgt: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal pass : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		pass <= STD_LOGIC_VECTOR(unsigned(entradaB));
      saida <= soma when (seletor = '1') else 
					subtracao;
		flag_equal <= '1' when (subtracao=x"00") else '0';
		flag_jgt <= '1' when (entradaA>entradaB) else '0';
end architecture;