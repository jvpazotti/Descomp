library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(14 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant OP_R : std_logic_vector(5 downto 0) := "000000";
  
--  alias habEscritaMEM : std_logic is saida(0);
--  alias habLeituraMEM : std_logic is saida(1);
--  alias habFlagIgual : std_logic is saida(2);
--  alias operacao : std_logic_vector is saida(4 downto 3);
--  alias habilitaA : std_logic is saida(5);
--  alias selMUX : std_logic is saida(6);
--  alias jeq2 : std_logic is saida(7);
--  alias jsr2 : std_logic is saida(8);
--  alias ret2 : std_logic is saida(9);
--  alias jmp2 : std_logic is saida(10);
--  alias habEscritaRet : std_logic is saida(11);
--  alias gt2 : std_logic is saida(12);
--  alias jgt2 : std_logic is saida(13);

  begin
--		habEscritaMEM <= '1' when (opcode = STA) else '0';
--		habLeituraMEM <= '1' when (opcode = LDA) or (opcode = SOMA) or (opcode = SUB) or (opcode = CEQ) or (opcode = GT) else '0';
--		habFlagIgual  <= '1' when (opcode = CEQ) else '0';
--		operacao 	  <= "10" when (opcode = LDA) or (opcode = LDI) else "01" when (opcode = SOMA) else "00";
--		habilitaA     <= '1' when (opcode = LDA) or (opcode = SOMA) or (opcode = SUB) or (opcode = LDI) else '0';
--		selMUX        <= '1' when (opcode = LDI) else '0';
--		jeq2			  <= '1' when (opcode = JEQ) else '0';
--		jsr2			  <= '1' when (opcode = JSR) else '0';
--		ret2			  <= '1' when (opcode = RET) else '0';
--		jmp2			  <= '1' when (opcode = JMP) else '0';
--		habEscritaRet <= '1' when (opcode = JSR) else '0';
--		gt2				  <= '1' when (opcode = GT) else '0';
--		jgt2			  <= '1' when (opcode = JGT) else '0';
  
  
saida <=   "0011" & LW & "01010" when opcode = LW else
			  "0001" & SW & "00001" when opcode = SW else
			  "0000" & BEQ & "00100" when opcode = BEQ else
			  "1000" & JMP & "00000" when opcode = JMP else
			  "0110" & OP_R & "10000" when opcode = OP_R else
			  "000000000000000"; -- NOP para intrucoes indefinidas
end architecture;