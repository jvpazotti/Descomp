library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is
  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI	 : std_logic_vector(3 downto 0) := "0100";
  constant STA	 : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";
  constant JSR : std_logic_vector(3 downto 0) := "1001";
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant GT : std_logic_vector(3 downto 0) := "1011";
  constant JGT : std_logic_vector(3 downto 0) := "1100";
  
  constant R0:    std_logic_vector (1 DOWNTO 0)	:= "00";
  constant R1:    std_logic_vector (1 DOWNTO 0)	:= "01";
  constant R2:    std_logic_vector (1 DOWNTO 0)	:= "10";
  constant R3:    std_logic_vector (1 DOWNTO 0)	:= "11";


  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
tmp(0) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(1) := R0 & LDI  & '0' & x"00";	-- LDI R0, $0	#Início do Setup
tmp(2) := R0 & STA  & '1' & x"20";	-- STA R0, @288	#Zerando hexas
tmp(3) := R0 & STA  & '1' & x"21";	-- STA R0, @289
tmp(4) := R0 & STA  & '1' & x"22";	-- STA R0, @290
tmp(5) := R0 & STA  & '1' & x"23";	-- STA R0, @291
tmp(6) := R0 & STA  & '1' & x"24";	-- STA R0, @292
tmp(7) := R0 & STA  & '1' & x"25";	-- STA R0, @293
tmp(8) := R0 & STA  & '1' & x"00";	-- STA R0, @256	#Zerando leds
tmp(9) := R0 & STA  & '1' & x"01";	-- STA R0, @257
tmp(10) := R0 & STA  & '1' & x"02";	-- STA R0, @258
tmp(11) := R0 & STA  & '0' & x"00";	-- STA R0, @0	#Armazenando 0 em unidade, dezena, centena, etc
tmp(12) := R0 & STA  & '0' & x"01";	-- STA R0, @1
tmp(13) := R0 & STA  & '0' & x"02";	-- STA R0, @2
tmp(14) := R0 & STA  & '0' & x"03";	-- STA R0, @3
tmp(15) := R0 & STA  & '0' & x"04";	-- STA R0, @4
tmp(16) := R0 & STA  & '0' & x"05";	-- STA R0, @5
tmp(17) := R0 & STA  & '0' & x"06";	-- STA R0, @6	#Constante de comparacao (0)
tmp(18) := R0 & STA  & '0' & x"0F";	-- STA R0, @15	#Flag que para contagem
tmp(19) := R0 & STA  & '1' & x"FE";	-- STA R0, @510
tmp(20) := R0 & STA  & '1' & x"FF";	-- STA R0, @511
tmp(21) := R0 & STA  & '1' & x"FD";	-- STA R0, @509
tmp(22) := R0 & LDI  & '0' & x"01";	-- LDI R0, $1
tmp(23) := R0 & STA  & '0' & x"07";	-- STA R0, @7	#Constante de Incremento (1)
tmp(24) := R0 & LDI  & '0' & x"0A";	-- LDI R0, $10
tmp(25) := R0 & STA  & '0' & x"08";	-- STA R0, @8	#Constante de limite no display (10)
tmp(26) := R0 & LDI  & '0' & x"00";	-- LDI R0, $0
tmp(27) := R0 & STA  & '0' & x"09";	-- STA R0, @9	#Limite de contagem em unidade, dezena, centena, etc
tmp(28) := R0 & STA  & '0' & x"0A";	-- STA R0, @10
tmp(29) := R0 & STA  & '0' & x"0B";	-- STA R0, @11
tmp(30) := R0 & STA  & '0' & x"0C";	-- STA R0, @12
tmp(31) := R0 & STA  & '0' & x"0D";	-- STA R0, @13
tmp(32) := R0 & STA  & '0' & x"0E";	-- STA R0, @14
tmp(33) := R0 & LDI  & '0' & x"09";	-- LDI R0, $9
tmp(34) := R0 & STA  & '0' & x"10";	-- STA R0, @16	#Constante de limite de valor
tmp(35) := R0 & LDI  & '0' & x"05";	-- LDI R0, $5
tmp(36) := R0 & STA  & '0' & x"11";	-- STA R0, @17	#Constante de limite de valor de minutos e segundos
tmp(37) := R0 & LDI  & '0' & x"03";	-- LDI R0, $3
tmp(38) := R0 & STA  & '0' & x"12";	-- STA R0, @18	#Constante de limite de valor de horas1
tmp(39) := R0 & LDI  & '0' & x"02";	-- LDI R0, $2
tmp(40) := R0 & STA  & '0' & x"13";	-- STA R0, @19	#Constante de limite de valor de horas2
tmp(41) := R0 & LDI  & '0' & x"06";	-- LDI R0, $6
tmp(42) := R0 & STA  & '0' & x"14";	-- STA R0, @20
tmp(43) := R0 & LDI  & '0' & x"04";	-- LDI R0, $4
tmp(44) := R0 & STA  & '0' & x"15";	-- STA R0, @21
tmp(45) := R0 & LDI  & '0' & x"00";	-- LDI R0, $0
tmp(46) := R0 & STA  & '0' & x"16";	-- STA R0, @22
tmp(47) := R0 & NOP  & '0' & x"00";	-- NOP	#Loop principal
tmp(48) := R0 & NOP  & '0' & x"00";	-- NOP	# Incrementa ate chegar no limite de contagem
tmp(49) := R2 & LDA  & '1' & x"60";	-- LDA R2, @352	# Le o valor de KEY0
tmp(50) := R2 & CEQ  & '0' & x"06";	-- CEQ R2, @6	# Compara o valor de KEY0 com 0
tmp(51) := R0 & JEQ  & '0' & x"99";	-- JEQ @PULA1	# Se for igual a 0, nao incrementa e atualiza os displays
tmp(52) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(53) := R2 & STA  & '1' & x"FF";	-- STA R2, @511	#Limpa a leitura de KEY1
tmp(54) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(55) := R2 & LDA  & '0' & x"00";	-- LDA R2, @0	#Carrega o valor da unidade no acumulador
tmp(56) := R2 & SOMA  & '0' & x"07";	-- SOMA R2, @7	#Incrementa 1 na unidade
tmp(57) := R2 & CEQ  & '0' & x"08";	-- CEQ R2, @8	#Compara unidade com 10
tmp(58) := R0 & JEQ  & '0' & x"3D";	-- JEQ @UNIDADEPASSOU	#Se for igual a 10, incrementa a dezena
tmp(59) := R2 & STA  & '0' & x"00";	-- STA R2, @0	#Se for diferente de 10, armazena o valor da unidade
tmp(60) := R0 & JMP  & '0' & x"2F";	-- JMP @INICIOLOOP	#Retorna para o LOOP principal
tmp(61) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(62) := R2 & LDA  & '0' & x"06";	-- LDA R2, @6	#Carrega 0 no acumulador
tmp(63) := R2 & STA  & '0' & x"00";	-- STA R2, @0	#Zera a unidade
tmp(64) := R2 & LDA  & '0' & x"01";	-- LDA R2, @1	#Carrega o valor da dezena no acumulador
tmp(65) := R2 & SOMA  & '0' & x"07";	-- SOMA R2, @7	#Incrementa 1 na dezena 
tmp(66) := R2 & CEQ  & '0' & x"11";	-- CEQ R2, @17	#Compara dezena com 6
tmp(67) := R2 & JEQ  & '0' & x"46";	-- JEQ R2, @DEZENAPASSOU	#Se for igual a 6, incrementa a centena
tmp(68) := R2 & STA  & '0' & x"01";	-- STA R2, @1	#Se for diferente de 6, armazena o valor da dezena
tmp(69) := R0 & JMP  & '0' & x"2F";	-- JMP @INICIOLOOP	#Retorna para o LOOP principal
tmp(70) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(71) := R2 & LDA  & '0' & x"06";	-- LDA R2, @6	#Carrega 0 no acumulador
tmp(72) := R2 & STA  & '0' & x"01";	-- STA R2, @1	#Zera a dezena
tmp(73) := R2 & LDA  & '0' & x"02";	-- LDA R2, @2	#Carrega o valor da centena no acumulador
tmp(74) := R2 & SOMA  & '0' & x"07";	-- SOMA R2, @7	#Incrementa 1 na centena
tmp(75) := R2 & CEQ  & '0' & x"08";	-- CEQ R2, @8	#Compara centena com 10
tmp(76) := R0 & JEQ  & '0' & x"4F";	-- JEQ @CENTENAPASSOU	#Se for igual a 10, incrementa a unidade de milhar
tmp(77) := R2 & STA  & '0' & x"02";	-- STA R2, @2	#Se for diferente de 10, armazena o valor da centena
tmp(78) := R0 & JMP  & '0' & x"2F";	-- JMP @INICIOLOOP	#Retorna para o LOOP principal
tmp(79) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(80) := R2 & LDA  & '0' & x"06";	-- LDA R2, @6	#Carrega 0 no acumulador
tmp(81) := R2 & STA  & '0' & x"02";	-- STA R2, @2	#Zera a centena
tmp(82) := R2 & LDA  & '0' & x"03";	-- LDA R2, @3	#Carrega o valor da unidade de milhar no acumulador
tmp(83) := R2 & SOMA  & '0' & x"07";	-- SOMA R2, @7	#Incrementa 1 na unidade de milhar
tmp(84) := R2 & CEQ  & '0' & x"14";	-- CEQ R2, @20	#Compara unidade de milhar com 6
tmp(85) := R0 & JEQ  & '0' & x"58";	-- JEQ @UNIDADEMILHARPASSOU	#Se for igual a 6, incrementa a dezena de milhar
tmp(86) := R2 & STA  & '0' & x"03";	-- STA R2, @3	#Se for diferente de 6, armazena o valor da unidade de milhar
tmp(87) := R0 & JMP  & '0' & x"2F";	-- JMP @INICIOLOOP	#Retorna para o LOOP principal
tmp(88) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(89) := R2 & LDA  & '0' & x"06";	-- LDA R2, @6	#Carrega 0 no acumulador
tmp(90) := R2 & STA  & '0' & x"03";	-- STA R2, @3	#Zera a unidade de milhar
tmp(91) := R2 & LDA  & '0' & x"16";	-- LDA R2, @22	#Carrega a flag de hora certa
tmp(92) := R2 & CEQ  & '0' & x"07";	-- CEQ R2, @7	#Compara a flag com 1
tmp(93) := R0 & JEQ  & '0' & x"64";	-- JEQ @HORACERTADEZENAMILHAR	#Se for igual a 1, incrementa a dezena de milhar
tmp(94) := R2 & LDA  & '0' & x"04";	-- LDA R2, @4	#Carrega o valor da dezena de milhar no acumulador
tmp(95) := R2 & SOMA  & '0' & x"07";	-- SOMA R2, @7	#Incrementa 1 na dezena de milhar
tmp(96) := R2 & CEQ  & '0' & x"08";	-- CEQ R2, @8	#Compara dezena de milhar com 10
tmp(97) := R0 & JEQ  & '0' & x"6B";	-- JEQ @DEZENAMILHARPASSOU	#Se for igual a 10, incrementa a centena de milhar
tmp(98) := R2 & STA  & '0' & x"04";	-- STA R2, @4	#Se for diferente de 10, armazena o valor da dezena de milhar
tmp(99) := R0 & JMP  & '0' & x"2F";	-- JMP @INICIOLOOP	#Retorna para o LOOP principal
tmp(100) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(101) := R2 & LDA  & '0' & x"04";	-- LDA R2, @4	#Carrega o valor da dezena de milhar no acumulador
tmp(102) := R2 & SOMA  & '0' & x"07";	-- SOMA R2, @7	#Incrementa 1 na dezena de milhar
tmp(103) := R2 & CEQ  & '0' & x"15";	-- CEQ R2, @21	#Compara dezena de milhar com 3
tmp(104) := R0 & JEQ  & '0' & x"6B";	-- JEQ @DEZENAMILHARPASSOU	#Se for igual a 3, incrementa a centena de milhar
tmp(105) := R2 & STA  & '0' & x"04";	-- STA R2, @4	#Se for diferente de 3, armazena o valor da dezena de milhar
tmp(106) := R0 & JMP  & '0' & x"2F";	-- JMP @INICIOLOOP	#Retorna para o LOOP principal
tmp(107) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(108) := R2 & LDA  & '0' & x"16";	-- LDA R2, @22	#Flag de centena de milhar em 2
tmp(109) := R2 & CEQ  & '0' & x"07";	-- CEQ R2, @7	# 0-> primeira vez que passa por aqui, 1-> segunda vez que passa por aqui
tmp(110) := R0 & JEQ  & '0' & x"77";	-- JEQ @CENTENAMILHARPASSOU
tmp(111) := R2 & LDA  & '0' & x"06";	-- LDA R2, @6	#Carrega 0 no acumulador
tmp(112) := R2 & STA  & '0' & x"04";	-- STA R2, @4	#Zera a dezena de milhar
tmp(113) := R2 & LDA  & '0' & x"05";	-- LDA R2, @5	#Carrega o valor da centena de milhar no acumulador
tmp(114) := R2 & SOMA  & '0' & x"07";	-- SOMA R2, @7	#Incrementa 1 na centena de milhar
tmp(115) := R2 & CEQ  & '0' & x"13";	-- CEQ R2, @19	#Compara centena de milhar com 2
tmp(116) := R0 & JEQ  & '0' & x"88";	-- JEQ @CONTINUACONT	#Se for igual a 2, continua a contagem ate o valor da dezena de milhar bater 3
tmp(117) := R2 & STA  & '0' & x"05";	-- STA R2, @5	#Se for diferente de 2, armazena o valor da centena de milhar
tmp(118) := R0 & JMP  & '0' & x"2F";	-- JMP @INICIOLOOP	#Retorna para o LOOP principal
tmp(119) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(120) := R0 & JSR  & '0' & x"9C";	-- JSR @ZERADISPLAY
tmp(121) := R0 & JMP  & '0' & x"00";	-- JMP @RESTART	#Retorna para o LOOP principal
tmp(122) := R0 & NOP  & '0' & x"00";	-- NOP	#Atualiza os valores dos HEX
tmp(123) := R3 & LDA  & '0' & x"00";	-- LDA R3, @0	#Le o valor das unidades
tmp(124) := R3 & STA  & '1' & x"20";	-- STA R3, @288	#Armazena o valor das unidades no HEX0
tmp(125) := R3 & LDA  & '0' & x"01";	-- LDA R3, @1	#Le o valor das dezenas
tmp(126) := R3 & STA  & '1' & x"21";	-- STA R3, @289	#Armazena o valor das dezenas no HEX1
tmp(127) := R3 & LDA  & '0' & x"02";	-- LDA R3, @2	#Le o valor das centenas
tmp(128) := R3 & STA  & '1' & x"22";	-- STA R3, @290	#Armazena o valor das centenas no HEX2
tmp(129) := R3 & LDA  & '0' & x"03";	-- LDA R3, @3	#Le o valor das unidades de milhar
tmp(130) := R3 & STA  & '1' & x"23";	-- STA R3, @291	#Armazena o valor das unidades de milhar no HEX3
tmp(131) := R3 & LDA  & '0' & x"04";	-- LDA R3, @4	#Le o valor das dezenas de milhar
tmp(132) := R3 & STA  & '1' & x"24";	-- STA R3, @292	#Armazena o valor das dezenas de milhar no HEX4
tmp(133) := R3 & LDA  & '0' & x"05";	-- LDA R3, @5	#Le o valor das centenas de milhar
tmp(134) := R3 & STA  & '1' & x"25";	-- STA R3, @293	#Armazena o valor das centenas de milhar no HEX5
tmp(135) := R0 & RET  & '0' & x"00";	-- RET	#Retorna para o LOOP principal
tmp(136) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(137) := R2 & STA  & '0' & x"05";	-- STA R2, @5
tmp(138) := R3 & LDA  & '0' & x"00";	-- LDA R3, @0	#Le o valor das unidades
tmp(139) := R3 & STA  & '1' & x"20";	-- STA R3, @288	#Armazena o valor das unidades no HEX0
tmp(140) := R3 & LDA  & '0' & x"01";	-- LDA R3, @1	#Le o valor das dezenas
tmp(141) := R3 & STA  & '1' & x"21";	-- STA R3, @289	#Armazena o valor das dezenas no HEX1
tmp(142) := R3 & LDA  & '0' & x"02";	-- LDA R3, @2	#Le o valor das centenas
tmp(143) := R3 & STA  & '1' & x"22";	-- STA R3, @290	#Armazena o valor das centenas no HEX2
tmp(144) := R3 & LDA  & '0' & x"03";	-- LDA R3, @3	#Le o valor das unidades de milhar
tmp(145) := R3 & STA  & '1' & x"23";	-- STA R3, @291	#Armazena o valor das unidades de milhar no HEX3
tmp(146) := R3 & LDA  & '0' & x"04";	-- LDA R3, @4	#Le o valor das dezenas de milhar
tmp(147) := R3 & STA  & '1' & x"24";	-- STA R3, @292	#Armazena o valor das dezenas de milhar no HEX4
tmp(148) := R3 & LDA  & '0' & x"05";	-- LDA R3, @5	#Le o valor das centenas de milhar
tmp(149) := R3 & STA  & '1' & x"25";	-- STA R3, @293	#Armazena o valor das centenas de milhar no HEX5
tmp(150) := R3 & LDI  & '0' & x"01";	-- LDI R3, $1
tmp(151) := R3 & STA  & '0' & x"16";	-- STA R3, @22
tmp(152) := R0 & JMP  & '0' & x"34";	-- JMP @INCREMENTA
tmp(153) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(154) := R0 & JSR  & '0' & x"7A";	-- JSR @ATUALIZA	# Atualiza os displays
tmp(155) := R0 & JMP  & '0' & x"30";	-- JMP @INCREMENTADOR	# Volta para o loop principal
tmp(156) := R0 & NOP  & '0' & x"00";	-- NOP
tmp(157) := R0 & LDA  & '0' & x"06";	-- LDA R0, @6	#Carrega 0 no acumulador
tmp(158) := R0 & STA  & '1' & x"20";	-- STA R0, @288	# Zera o HEX1
tmp(159) := R0 & STA  & '1' & x"21";	-- STA R0, @289	# Zera o HEX2
tmp(160) := R0 & STA  & '1' & x"22";	-- STA R0, @290	# Zera o HEX3
tmp(161) := R0 & STA  & '1' & x"23";	-- STA R0, @291	# Zera o HEX4
tmp(162) := R0 & STA  & '1' & x"24";	-- STA R0, @292	# Zera o HEX5
tmp(163) := R0 & STA  & '1' & x"25";	-- STA R0, @293	# Zera o HEX6
tmp(164) := R0 & STA  & '1' & x"00";	-- STA R0, @256	# Zera os LEDS(7~0)
tmp(165) := R0 & STA  & '1' & x"02";	-- STA R0, @258	# Zera os LED(9)
tmp(166) := R0 & STA  & '1' & x"01";	-- STA R0, @257	# Zera os LED(8) 
tmp(167) := R0 & RET  & '0' & x"00";	-- RET



        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;