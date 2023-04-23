library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 Palavra_Controle : out std_logic_vector(11 downto 0);
	 EntradaB_ULA : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_ZERO : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_1 : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_Saida : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (3 downto 0);
  signal Endereco : std_logic_vector(larguraEnderecos-1 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic_vector(1 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal Comando_Opcode : std_logic_vector (3 downto 0);
  signal Saida_Decodificador : std_logic_vector (11 downto 0);
  signal Instrucao : std_logic_vector (12 downto 0);
  signal habFlag : std_logic;
  signal saida_hab_flag : std_logic;
  signal saida_logica_desvio : std_logic_vector(1 downto 0);
  signal saida_reg_retorno : std_logic_vector(8 downto 0);
  signal saida_mux_4x1 : std_logic_vector(8 downto 0);
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => MUX_ZERO,
                 entradaB_MUX =>  Instrucao(7 downto 0),
                 seletor_MUX => Saida_Decodificador(6),
                 saida_MUX => MUX_Saida);
					  
MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => larguraDados+1)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Instrucao(8 downto 0),
					  entradaC_MUX => saida_reg_retorno,
					  entradaD_MUX =>"000000000",
                 seletor_MUX => saida_logica_desvio,
                 saida_MUX => saida_mux_4x1);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, 
						 DOUT => REG1_ULA_A, 
						 ENABLE => Saida_Decodificador(5), 
						 CLK => CLK, 
						 RST => '0');
						 
REG_Retorno: entity work.registradorGenerico generic map (larguraDados => larguraDados+1)
				 port map (
							 DIN => proxPC,
							 DOUT => saida_reg_retorno,
							 ENABLE => Saida_Decodificador(11),
							 CLK => CLK,
							 RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => saida_mux_4x1, 
			 DOUT => Endereco, 
			 ENABLE => '1', 
			 CLK => CLK, 
			 RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, 
		  saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, 
			 entradaB => MUX_Saida, 
			 saida => Saida_ULA, 
			 seletor => Saida_Decodificador(4 downto 3),
			 flag_equal => habFlag);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (
			 Endereco => Endereco, 
			 Dado => Instrucao);
			 
Decodificador : entity work.decoderInstru
						port map(opcode=>Instrucao(12 downto 9),
						saida=>Saida_Decodificador);

RAM1 : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 8)
          port map (addr => Instrucao(7 downto 0), 
			 we => Saida_Decodificador(0), 
			 re => Saida_Decodificador(1), 
			 habilita  => Instrucao(8), 
			 dado_in => REG1_ULA_A, 
			 dado_out => MUX_ZERO, 
			 clk => CLK);
			 
HAB_FLAG: entity work.flipflopGenerico
						port map(DIN=>habFlag,
									DOUT=>saida_hab_flag,
									ENABLE=>Saida_Decodificador(2),
									CLK => CLK,
									RST => '0');			
									

Logica_Desvio : entity work.logicaDesvio 
							port map(FLAG_EQ=>saida_hab_flag,
										JEQ=>Saida_Decodificador(7),
										JSR=>Saida_Decodificador(8),
										RET=>Saida_Decodificador(9),
										JMP=>Saida_Decodificador(10),
										Sel_MUX_PC=>saida_logica_desvio);
										

										

			 
PC_OUT <= Endereco;
LEDR(7 downto 0) <=  REG1_ULA_A;
LEDR(9 downto 8) <=  Saida_Decodificador(4 downto 3);
Palavra_Controle <=  Saida_Decodificador;
EntradaB_ULA <= MUX_Saida;

end architecture;