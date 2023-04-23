library ieee;
use ieee.std_logic_1164.all;

entity Aula7 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Aula7 is

-- Faltam alguns sinais:
  signal Instrucao : std_logic_vector (12 downto 0);
  
  signal CPU_ROM : std_logic_vector(8 downto 0);
  
  signal rd : std_logic;
  
  signal wr : std_logic;
  
  signal rom_address : std_logic_vector(8 downto 0);
  
  signal data_address : std_logic_vector(8 downto 0);
  
  signal dadoOut_dadoEscrito : std_logic_vector(7 downto 0);
  
  signal dadoLido_DadoIN : std_logic_vector(7 downto 0);
  
  signal saida_decoder : std_logic_vector(7 downto 0);
  
  signal saida_decoder_2 : std_logic_vector(7 downto 0);
  
  signal habilita_ff1 : std_logic;
  
  signal dataOut_ff1 : std_logic_vector(8 downto 0);
  
  signal CLK : std_logic;
  
  signal pc_visu: std_logic_vector(6 downto 0);
  
  
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;



-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (
			 Endereco => CPU_ROM, 
			 Dado => Instrucao);
			 


RAM1 : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 6)
          port map (addr => data_address(5 downto 0), 
			 we => wr, 
			 re => rd, 
			 habilita  => saida_decoder(0), 
			 dado_in => dadoOut_dadoEscrito, 
			 dado_out => dadoLido_DadoIN , 
			 clk => CLK);
			 
CPU : entity work.CPU generic map (larguraDados=>8,larguraEnderecos=>9)
				port map(Rd => rd,
							Wr => wr,
							Rom_address => CPU_ROM,
							Instruction_IN => Instrucao,
							Data_Address => data_address,
							Data_OUT => dadoOut_dadoEscrito,
							Data_IN => dadoLido_DadoIN,
							Clock => CLK
							);
							
Decoder3x8: entity work.decoder3x8 
					port map (entrada=>data_address(8 downto 6),
								 saida => saida_decoder
								);
								
Decoder3x8_2: entity work.decoder3x8 
					port map (entrada=>data_address(2 downto 0),
								 saida => saida_decoder_2
								);
			 
FF1 : entity work.flipflopGenerico
					port map(DIN=>dadoOut_dadoEscrito(0),
								DOUT=>LEDR(9),
								ENABLE=>(wr and saida_decoder(4) and saida_decoder_2(2)),
								CLK => CLK,
								RST => '0'
									);
									
FF2 : entity work.flipflopGenerico
					port map(DIN=>dadoOut_dadoEscrito(0),
								DOUT=>LEDR(8),
								ENABLE=>(wr and saida_decoder(4) and saida_decoder_2(1)),
								CLK => CLK,
								RST => '0'
									);

Reg : entity work.registradorGenerico generic map (larguraDados=>8)
					port map(DIN=>dadoOut_dadoEscrito(7 downto 0),
								DOUT=>LEDR(7 downto 0),
								ENABLE=>(wr and saida_decoder(4) and saida_decoder_2(0)),
								CLK => CLK,
								RST => '0'
									);
display :  entity work.conversorHex7Seg
        port map(dadoHex => CPU_ROM(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
					  

end architecture;