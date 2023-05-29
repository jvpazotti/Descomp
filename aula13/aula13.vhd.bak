library ieee;
use ieee.std_logic_1164.all;

entity aula13 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
          larguraEnderecos : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  
	 -- input ports

    CLOCK_50 : in std_logic;
	 Ctrl_write : in std_logic; 
	 Sel_ULA : in std_logic_vector(1 downto 0);
	 
	 -- output ports
	 
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
  signal PC : std_logic_vector(larguraDados-1 downto 0);
  signal ROM_OUT : std_logic_vector(larguraDados-1 downto 0);
  
  alias ROM_IN : std_logic_vector(larguraDados-1 downto 0) is PC(larguraDados-1 downto 0);
  alias RsAddr : std_logic_vector(4 downto 0) is ROM_OUT(25 downto 21);
  alias RtAddr : std_logic_vector(4 downto 0) is ROM_OUT(20 downto 16);
  alias RdAddr : std_logic_vector(4 downto 0) is ROM_OUT(15 downto 11);
  
  
  signal Rs_ULA_A : std_logic_vector(larguraDados-1 downto 0);
  signal Rt_ULA_B : std_logic_vector(larguraDados-1 downto 0);
  
  signal ULA_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal inutilizado : std_logic;
  

begin


	CLK <= CLOCK_50;


	Somador :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => PC, saida => PC_constante);
	
	
	PC_REG : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (
				 DIN => PC_constante,
				 DOUT => PC,
				 ENABLE => '1',
				 CLK => CLK,
				 RST => '0');
				 
	
		-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
	ROM1 : entity work.memoriaROM generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6) -- POR QUE 4?
				 port map (
						 clk => CLK,
						 Endereco => ROM_IN,
						 Dado => ROM_OUT);
						 
	BANCO_REG: entity work.bancoReg    generic map (larguraDados => larguraDados)
			  port map (   clk         => CLK,
								enderecoA   => RsAddr,
								enderecoB   => RtAddr,
								enderecoC   => RdAddr,
								dadoEscritaC=> ULA_OUT,
								escreveC    => Ctrl_write,
								saidaA      => Rs_ULA_A,
								saidaB      => Rt_ULA_B
							);	
							
	ULA1 : entity work.ULASomaSub generic map(larguraDados => larguraDados)
				 port map (
						 entradaA => Rs_ULA_A,
						 entradaB => Rt_ULA_B,
						 saida => ULA_OUT,
						 seletor => Sel_ULA,
						 flagEqual => inutilizado);	
						 
	Instru_opcode <= ROM_OUT(31 downto 26);
	Funct <= ROM_OUT(5 downto 0);
	ULAA_OUT <= ULA_OUT;
	RS_OUT <= Rs_ULA_A;
	RT_OUT <= Rt_ULA_B;
	PC_OUT <= PC;
	Rs_End <= RsAddr;
	Rt_End <= RtAddr;
	Rd_End <= RdAddr;
	
end architecture;