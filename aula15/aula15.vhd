library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity aula15 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
          larguraEnderecos : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  

    CLOCK_50 : in std_logic;
	 
	 
	 Instru_opcode : out std_logic_vector(5 downto 0); 
	 Funct : out std_logic_vector(5 downto 0);
	 SAIDA_ULA : out std_logic_vector(larguraDados-1 downto 0);
	 SAIDA_RS : out std_logic_vector(larguraDados-1 downto 0);
	 SAIDA_RT : out std_logic_vector(larguraDados-1 downto 0);
	 RAM_ENTRADA : out std_logic_vector(larguraDados-1 downto 0);
	 RAM_SAIDA : out std_logic_vector(larguraDados-1 downto 0);
	 Rs_End : out std_logic_vector(4 downto 0);
	 Rt_End : out std_logic_vector(4 downto 0);
	 Rd_End : out std_logic_vector(4 downto 0);
	 PC_OUT : out std_logic_vector(larguraEnderecos-1 downto 0)
	 
);
  
end entity;

architecture arquitetura of aula15 is

  signal CLK : std_logic;
  signal PC_constante : std_logic_vector(larguraDados-1 downto 0);
  signal saida_pc, saida_somador : std_logic_vector(larguraDados-1 downto 0);
  signal ROM_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal Rs_ULA_A : std_logic_vector(larguraDados-1 downto 0);
  signal Rt_MUX : std_logic_vector(larguraDados-1 downto 0);
  signal ULA_OUT , Saida_Extensor, Saida_Extensor_shiftada, Saida_MUX_BEQ,
  Saida_MUX_RtIm, Saida_Ram,Saida_MUX_ULAmem,Saida_MUX_ULABEQJMP: std_logic_vector(larguraDados-1 downto 0);
  signal flag_equal,desativado_jgt : std_logic;
  
  signal ULActrl : std_logic;
  
  signal MUX_OUT: std_logic_vector(4 downto 0);
  
  signal SaidaDecoder : std_logic_vector (14 downto 0); 
  

begin


	CLK <= CLOCK_50;


	Somador :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => saida_pc, saida => PC_constante);
		  
	
		  
	Somador2 : entity work.somador  generic map (larguraDados => larguraDados)
        port map( entradaA => PC_constante, entradaB =>  Saida_Extensor_shiftada, saida => saida_somador);
	
	
	PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (
				 DIN => Saida_MUX_ULABEQJMP,
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
								escreveC    => SaidaDecoder(12),
								saidaA      => Rs_ULA_A,
								saidaB      => Rt_MUX
							);	
							
	ULA1 : entity work.ULASomaSub generic map(larguraDados => larguraDados)
				 port map (
						 entradaA => Rs_ULA_A,
						 entradaB => Saida_MUX_RtIm,
						 saida => ULA_OUT,
						 seletor => ULActrl,
						 flag_equal => flag_equal,
						 flag_jgt => desativado_jgt);	
						 
	
						 
	MUX_RtRd :  entity work.muxGenerico2x1  generic map (larguraDados => 5)
	  port map( 
				  entradaA_MUX => ROM_OUT(20 downto 16),
				  entradaB_MUX =>  ROM_OUT(15 downto 11),
				  seletor_MUX => SaidaDecoder(13),
				  saida_MUX => MUX_OUT);
	
	MUX_BEQ :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => PC_constante,
				  entradaB_MUX =>  saida_somador,
				  seletor_MUX => flag_equal and SaidaDecoder(2),
				  saida_MUX => Saida_MUX_BEQ);
				  
	MUX_RtIm :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Rt_MUX,
				  entradaB_MUX =>  Saida_Extensor,
				  seletor_MUX => SaidaDecoder(11),
				  saida_MUX => Saida_MUX_RtIm);
				  
	MUX_ULAmem :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => ULA_OUT,
				  entradaB_MUX =>  Saida_Ram,
				  seletor_MUX => SaidaDecoder(3),
				  saida_MUX => Saida_MUX_ULAmem);
				  
	MUX_BEQJMP :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Saida_MUX_BEQ,
				  entradaB_MUX =>  PC_constante(31 downto 28) & ROM_OUT(25 downto 0) & "00",
				  seletor_MUX => SaidaDecoder(14),
				  saida_MUX => Saida_MUX_ULABEQJMP);
				  
	UnidadeControleULA: entity work.UnidadeControleULA
				port map (opcode => SaidaDecoder(10 downto 5),
							 tipoR => SaidaDecoder(4),
							 funct => ROM_OUT(5 downto 0),
							 operacao => ULActrl);
	
	Decoder : entity work.decoderInstru
		  port map( 
				  opcode => ROM_OUT(31 downto 26),
				  saida => SaidaDecoder);
				  
	EstendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => ROM_OUT(15 downto 0), estendeSinal_OUT =>  Saida_Extensor);

						 
	Saida_Extensor_shiftada<=std_logic_vector(shift_left(unsigned(Saida_Extensor), 2)); 
						 
	Instru_opcode <= ROM_OUT(31 downto 26);
	Funct <= ROM_OUT(5 downto 0);
	SAIDA_ULA <= ULA_OUT;
	SAIDA_RS <= Rs_ULA_A;
	SAIDA_RT <= Rt_MUX;
	RAM_ENTRADA <= Rt_MUX;
	RAM_SAIDA <= Saida_Ram;
	PC_OUT <= saida_pc;
	Rs_End <= ROM_OUT(25 downto 21);
	Rt_End <= ROM_OUT(20 downto 16);
	Rd_End <= ROM_OUT(15 downto 11);
	
end architecture;