library ieee;
use ieee.std_logic_1164.all;

entity decoderOpcode is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of decoderOpcode is
  
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  constant ORI : std_logic_vector(5 downto 0) := "001101";
  constant SLTI : std_logic_vector(5 downto 0) := "001010";
  constant BNE : std_logic_vector(5 downto 0) := "000101";

  begin

  
saida <=   "010" when opcode = LW else
			  "010" when opcode = SW else
			  "110" when opcode = BEQ else
			  "000" when opcode = JMP else
			  "010" when opcode = ADDI else
			  "000" when opcode = ANDI else
			  "001" when opcode = ORI else
			  "111" when opcode = SLTI else
			  "110" when opcode = BNE else
			  "000"; 
end architecture;