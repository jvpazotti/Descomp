library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity MIPS is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
          larguraEnderecos : natural := 32;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  

    CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(0 downto 0);
	 SW : in std_logic_vector(0 downto 0);
	 

	 LEDR  : out std_logic_vector(7 downto 0);
	 HEX0,HEX1,HEX2,HEX3,HEX4,HEX5  : out std_logic_vector(6 downto 0)
	
);  
end entity;

architecture arquitetura of MIPS is

  signal CLK : std_logic;
  signal PC_constante : std_logic_vector(larguraDados-1 downto 0);
  signal saida_pc, saida_somador : std_logic_vector(larguraDados-1 downto 0);
  signal ROM_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal Rs_ULA_A : std_logic_vector(larguraDados-1 downto 0);
  signal Rt_MUX : std_logic_vector(larguraDados-1 downto 0);
  
  signal ULA_OUT , Saida_Extensor, Saida_Extensor_shiftada, Saida_MUX_BEQ,
  Saida_MUX_RtIm, Saida_Ram,Saida_MUX_ULAmem,Saida_MUX_ULABEQJMP, Saida_MUX_HEX_LED,
  saidaExtensorLUI,Saida_MUX_PROX_PC: std_logic_vector(larguraDados-1 downto 0);
  
  signal flag_equal,desativado_jgt,Saida_MUX_Flag_equal : std_logic;
  
  signal ULActrl : std_logic_vector(2 downto 0);
  
  signal MUX_OUT: std_logic_vector(4 downto 0);
  
  signal SaidaDecoder : std_logic_vector (13 downto 0); 
  
  signal saidaDecodHex0,saidaDecodHex1,saidaDecodHex2,
  saidaDecodHex3,saidaDecodHex4,saidaDecodHex5 : std_logic_vector(6 downto 0);
  

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

	Somador :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => saida_pc, saida => PC_constante);
		  
	
		  
	Somador2 : entity work.somador  generic map (larguraDados => larguraDados)
        port map( entradaA => PC_constante, entradaB =>  Saida_Extensor_shiftada, saida => saida_somador);
	
	
	PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (
				 DIN => Saida_MUX_PROX_PC,
				 DOUT => saida_pc,
				 ENABLE => '1',
				 CLK => CLK,
				 RST => '0');
				 
	ROM : entity work.ROMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6) 
				 port map (
						 Endereco => saida_pc,
						 Dado => ROM_OUT);
						 
						 
	RAM : entity work.RAMMIPS generic map (dataWidth=> larguraDados, addrWidth=> larguraEnderecos, memoryAddrWidth => 6)
									port map (
									clk=>CLK,
									Endereco=>ULA_OUT,
									Dado_in=>Rt_MUX,
									Dado_out=>Saida_Ram,
									we=>SaidaDecoder(0),
									re=>SaidaDecoder(1),
									habilita=>'1'
									);
						 
	BANCO_REG: entity work.bancoReg    generic map (larguraDados => larguraDados)
			  port map (   clk         => CLK,
								enderecoA   => ROM_OUT(25 downto 21), --rs
								enderecoB   => ROM_OUT(20 downto 16), --rt
								enderecoC   => MUX_OUT, --rd
								dadoEscritaC=> Saida_MUX_ULAmem,
								escreveC    => SaidaDecoder(8),
								saidaA      => Rs_ULA_A,
								saidaB      => Rt_MUX
							);	
							
	ULA1 : entity work.ULAMIPS generic map(larguraDados => larguraDados)
				 port map (
						 entradaA => Rs_ULA_A,
						 entradaB => Saida_MUX_RtIm,
						 saida => ULA_OUT,
						 selecao => ULActrl,
						 flag => flag_equal
						 );	
						 
	
	MUX_RtRd :  entity work.muxGenerico4x1  generic map (larguraDados => 5)
	  port map( 
				  entradaA_MUX => ROM_OUT(20 downto 16),
				  entradaB_MUX =>  ROM_OUT(15 downto 11),
				  entradaC_MUX => "11111",
				  entradaD_MUX => "00000",
				  seletor_MUX => SaidaDecoder(11 downto 10),
				  saida_MUX => MUX_OUT);
	
	MUX_BEQ :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => PC_constante,
				  entradaB_MUX =>  saida_somador,
				  seletor_MUX => Saida_MUX_Flag_equal and (SaidaDecoder(3) or SaidaDecoder(2)),
				  saida_MUX => Saida_MUX_BEQ);
				  
	MUX_FLAG_EQUAL :  entity work.muxGenerico2x1_1bit 
	  port map( 
				  entradaA_MUX => not(flag_equal),
				  entradaB_MUX =>  flag_equal,
				  seletor_MUX => SaidaDecoder(3),
				  saida_MUX => Saida_MUX_Flag_equal);
				  
	MUX_RtIm :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Rt_MUX,
				  entradaB_MUX =>  Saida_Extensor,
				  seletor_MUX => SaidaDecoder(7),
				  saida_MUX => Saida_MUX_RtIm);
				  
	MUX_ULAmem :  entity work.muxGenerico4x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => ULA_OUT,
				  entradaB_MUX =>  Saida_Ram,
				  entradaC_MUX => PC_constante,
				  entradaD_MUX => saidaExtensorLUI,
				  seletor_MUX => SaidaDecoder(5 downto 4),
				  saida_MUX => Saida_MUX_ULAmem);
				 
				  
	MUX_BEQJMP :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Saida_MUX_BEQ,
				  entradaB_MUX =>  PC_constante(31 downto 28) & ROM_OUT(25 downto 0) & "00",
				  seletor_MUX => SaidaDecoder(12),
				  saida_MUX => Saida_MUX_ULABEQJMP);
				  
   MUX_HEX_LED : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	port map( 
				  entradaA_MUX => saida_pc,
				  entradaB_MUX =>  ULA_OUT,
				  seletor_MUX => SW(0),
				  saida_MUX => Saida_MUX_HEX_LED);
				  
	MUX_JR :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_MUX_ULABEQJMP,
                 entradaB_MUX =>  Rs_ULA_A,
                 seletor_MUX => SaidaDecoder(13),
                 saida_MUX => Saida_MUX_PROX_PC);
				  
				  
	UnidadeControleULA: entity work.UnidadeControleULA
				port map (opcode => ROM_OUT(31 downto 26),
							 tipoR => SaidaDecoder(6),
							 funct => ROM_OUT(5 downto 0),
							 operacao => ULActrl);
	
	Decoder : entity work.decoderInstru
		  port map( 
				  opcode => ROM_OUT(31 downto 26),
				  funct => ROM_OUT(5 downto 0),
				  saida => SaidaDecoder);
				  
	EstendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => ROM_OUT(15 downto 0),controle_MUX=>SaidaDecoder(9), estendeSinal_OUT =>  Saida_Extensor);
	
	EstensorSinalLUI: entity work.estensorLUI   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => ROM_OUT(15 downto 0), estendeSinal_OUT =>  saidaExtensorLUI);
	
			 
	display_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUX_HEX_LED(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saidaDecodHex0);
					  
	display_HEX1 :  entity work.conversorHex7Seg
			  port map(dadoHex => Saida_MUX_HEX_LED(7 downto 4),
						  apaga =>  '0',
						  negativo => '0',
						  overFlow =>  '0',
						  saida7seg => saidaDecodHex1);
						  
	display_HEX2 :  entity work.conversorHex7Seg
			  port map(dadoHex => Saida_MUX_HEX_LED(11 downto 8),
						  apaga =>  '0',
						  negativo => '0',
						  overFlow =>  '0',
						  saida7seg => saidaDecodHex2);
	display_HEX3 :  entity work.conversorHex7Seg
			  port map(dadoHex => Saida_MUX_HEX_LED(15 downto 12),
						  apaga =>  '0',
						  negativo => '0',
						  overFlow =>  '0',
						  saida7seg => saidaDecodHex3);
						  
	display_HEX4 :  entity work.conversorHex7Seg
			  port map(dadoHex => Saida_MUX_HEX_LED(19 downto 16),
						  apaga =>  '0',
						  negativo => '0',
						  overFlow =>  '0',
						  saida7seg => saidaDecodHex4);
						  
	display_HEX5 :  entity work.conversorHex7Seg
			  port map(dadoHex => Saida_MUX_HEX_LED(23 downto 20),
						  apaga =>  '0',
						  negativo => '0',
						  overFlow =>  '0',
						  saida7seg => saidaDecodHex5);

						 
	Saida_Extensor_shiftada<=std_logic_vector(shift_left(unsigned(Saida_Extensor), 2)); 
	
	HEX0 <= saidaDecodHex0;
	HEX1 <= saidaDecodHex1;
	HEX2 <= saidaDecodHex2;
	HEX3 <= saidaDecodHex3;
	HEX4 <= saidaDecodHex4;
	HEX5 <= saidaDecodHex5;
	
	LEDR(3 downto 0) <= Saida_MUX_HEX_LED(27 downto 24);
	LEDR(7 downto 4) <= Saida_MUX_HEX_LED(31 downto 28);
	
end architecture;