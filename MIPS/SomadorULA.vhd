library ieee;
use ieee.std_logic_1164.all;

entity SomadorULA is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entradaA, entradaB : in std_logic;
	 Cin : in std_logic;
    Soma : out std_logic;
    Cout : out std_logic
  );
end entity;

architecture comportamento of SomadorULA is
  begin
  
Soma <= Cin xor (entradaA xor entradaB);
Cout <= (entradaA and entradaB) or (Cin and (entradaA xor entradaB));
    
end architecture;