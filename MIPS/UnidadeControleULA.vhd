library ieee;
use ieee.std_logic_1164.all;

entity UnidadeControleULA is
  port ( opcode : in std_logic_vector(5 downto 0);
			tipoR : in std_logic;
			funct : in std_logic_vector(5 downto 0);
         operacao : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of UnidadeControleULA is

  signal saidaDecoderOpcode,saidaDecoderFunct : std_logic_vector(2 downto 0);

  begin
  
  
 decoderOpcode: entity work.decoderOpcode 
										port map(
										opcode=>opcode,
										saida=>saidaDecoderOpcode
										);
										
										
 decoderFunct: entity work.decoderFunct 
										port map(
										funct=>funct,
										saida=>saidaDecoderFunct
										);
										
										
  MUX :  entity work.muxGenerico2x1  generic map (larguraDados => 3)
	  port map( 
				  entradaA_MUX => saidaDecoderOpcode,
				  entradaB_MUX =>  saidaDecoderFunct,
				  seletor_MUX => tipoR,
				  saida_MUX => operacao);
  
			  
end architecture;