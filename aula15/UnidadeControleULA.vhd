library ieee;
use ieee.std_logic_1164.all;

entity UnidadeControleULA is
  port ( opcode : in std_logic_vector(5 downto 0);
			tipoR : in std_logic;
			funct : in std_logic_vector(5 downto 0);
         operacao : out std_logic
  );
end entity;

architecture comportamento of UnidadeControleULA is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant funct_add : std_logic_vector(5 downto 0) := "100000";
  constant funct_sub : std_logic_vector(5 downto 0) := "100010";
  

  begin

  
  operacao <= '1' when tipoR = '0' and opcode = LW else 
				  '1' when tipoR = '0' and opcode = SW else 
				  '1' when tipoR = '1' and funct = funct_add else  
				  '0' when tipoR = '1' and funct = funct_sub else
				  '0' when tipoR = '0' and opcode = BEQ else 
				  '0';
  
			  
end architecture;