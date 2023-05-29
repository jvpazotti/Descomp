library ieee;
use ieee.std_logic_1164.all;

entity aula13 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
          larguraEnderecos : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  

    CLOCK_50 : in std_logic;
	 Write_Rd : in std_logic; 
	 Sel_ULA : in std_logic_vector(1 downto 0);
	 
	 Instru_opcode : out std_logic_vector(5 downto 0); 
	 Funct : out std_logic_vector(5 downto 0);
	 ULAA_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 RS_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 RT_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 Rs_End : out std_logic_vector(4 downto 0);
	 Rt_End : out std_logic_vector(4 downto 0);
	 Rd_End : out std_logic_vector(4 downto 0);
	 PC_OUT : out std_logic_vector(larguraEnderecos-1 downto 0)
);
  
end entity;

architecture arquitetura of aula13 is

  signal CLK : std_logic;
  signal PC_constante : std_logic_vector(larguraDados-1 downto 0);
  signal saida_pc : std_logic_vector(larguraDados-1 downto 0);
  signal ROM_OUT : std_logic_vector(larguraDados-1 downto 0);
  
  signal Rs_ULA_A : std_logic_vector(larguraDados-1 downto 0);
  signal Rt_ULA_B : std_logic_vector(larguraDados-1 downto 0);
  
  signal ULA_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal desativado_equal,desativado_jgt : std_logic;
  

begin


	CLK <= CLOCK_50;


	Somador :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => saida_pc, saida => PC_constante);
	
	
	PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (
				 DIN => PC_constante,
				 DOUT => saida_pc,
				 ENABLE => '1',
				 CLK => CLK,
				 RST => '0');
				 
	ROM1 : entity work.ROMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6) 
				 port map (
						 Endereco => saida_pc,
						 Dado => ROM_OUT);
						 
	BANCO_REG: entity work.bancoReg    generic map (larguraDados => larguraDados)
			  port map (   clk         => CLK,
								enderecoA   => ROM_OUT(25 downto 21), --rs
								enderecoB   => ROM_OUT(20 downto 16), --rt
								enderecoC   => ROM_OUT(15 downto 11), --rd
								dadoEscritaC=> ULA_OUT,
								escreveC    => Write_Rd,
								saidaA      => Rs_ULA_A,
								saidaB      => Rt_ULA_B
							);	
							
	ULA1 : entity work.ULASomaSub generic map(larguraDados => larguraDados)
				 port map (
						 entradaA => Rs_ULA_A,
						 entradaB => Rt_ULA_B,
						 saida => ULA_OUT,
						 seletor => Sel_ULA,
						 flag_equal => desativado_equal,
						 flag_jgt => desativado_jgt);	
						 
	Instru_opcode <= ROM_OUT(31 downto 26);
	Funct <= ROM_OUT(5 downto 0);
	ULAA_OUT <= ULA_OUT;
	RS_OUT <= Rs_ULA_A;
	RT_OUT <= Rt_ULA_B;
	PC_OUT <= saida_pc;
	Rs_End <= ROM_OUT(25 downto 21);
	Rt_End <= ROM_OUT(20 downto 16);
	Rd_End <= ROM_OUT(15 downto 11);
	
end architecture;