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
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";


  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
tmp(0) := NOP & '0' & x"00";	-- NOP 
tmp(1) := LDI & '0' & x"00";	-- LDI $0    	#Início do Setup
tmp(2) := STA & '1' & x"20";	-- STA @288    	#Zerando hexas
tmp(3) := STA & '1' & x"21";	-- STA @289
tmp(4) := STA & '1' & x"22";	-- STA @290
tmp(5) := STA & '1' & x"23";	-- STA @291
tmp(6) := STA & '1' & x"24";	-- STA @292
tmp(7) := STA & '1' & x"25";	-- STA @293
tmp(8) := STA & '1' & x"00";	-- STA @256    	#Zerando leds
tmp(9) := STA & '1' & x"01";	-- STA @257
tmp(10) := STA & '1' & x"02";	-- STA @258
tmp(11) := STA & '0' & x"00";	-- STA @0    	#Armazenando 0 em unidade, dezena, centena, etc
tmp(12) := STA & '0' & x"01";	-- STA @1
tmp(13) := STA & '0' & x"02";	-- STA @2
tmp(14) := STA & '0' & x"03";	-- STA @3
tmp(15) := STA & '0' & x"04";	-- STA @4
tmp(16) := STA & '0' & x"05";	-- STA @5
tmp(17) := STA & '0' & x"06";	-- STA @6    	#Constante de comparacao (0)
tmp(18) := STA & '0' & x"0F";	-- STA @15   	#Flag que para contagem
tmp(19) := STA & '1' & x"FE";	-- STA @510
tmp(20) := STA & '1' & x"FF";	-- STA @511
tmp(21) := STA & '1' & x"FD";	-- STA @509
tmp(22) := LDI & '0' & x"01";	-- LDI $1
tmp(23) := STA & '0' & x"07";	-- STA @7    	#Constante de Incremento (1)
tmp(24) := LDI & '0' & x"0A";	-- LDI $10
tmp(25) := STA & '0' & x"08";	-- STA @8    	#Constante de limite no display (10)
tmp(26) := LDI & '0' & x"00";	-- LDI $0
tmp(27) := STA & '0' & x"09";	-- STA @9    	#Limite de contagem em unidade, dezena, centena, etc
tmp(28) := STA & '0' & x"0A";	-- STA @10  
tmp(29) := STA & '0' & x"0B";	-- STA @11
tmp(30) := STA & '0' & x"0C";	-- STA @12
tmp(31) := STA & '0' & x"0D";	-- STA @13
tmp(32) := STA & '0' & x"0E";	-- STA @14
tmp(33) := NOP & '0' & x"00";	-- NOP  	#Loop principal
tmp(34) := LDA & '1' & x"61";	-- LDA @353 	# Le o valor de KEY1
tmp(35) := CEQ & '0' & x"06";	-- CEQ @6 	# Compara o valor de KEY1 com 0
tmp(36) := JEQ & '0' & x"21";	-- JEQ @INICIOLOOP 	# Se for igual a 0, fica no aguardo para quando for 1
tmp(37) := JSR & '0' & x"35";	-- JSR @CONFIGLIMITE 	# Se for diferente de 0, entra na sub rotina de configuracao de Limite
tmp(38) := JSR & '0' & x"7C";	-- JSR @ZERADISPLAY 	# Zera os displays depois de configurar os limites
tmp(39) := NOP & '0' & x"00";	-- NOP  	# Incrementa ate chegar no limite de contagem
tmp(40) := LDA & '1' & x"60";	-- LDA @352 	# Le o valor de KEY0
tmp(41) := CEQ & '0' & x"06";	-- CEQ @6   	# Compara o valor de KEY0 com 0
tmp(42) := JEQ & '0' & x"2C";	-- JEQ @PULA1 	# Se for igual a 0, nao incrementa e atualiza os displays
tmp(43) := JSR & '0' & x"88";	-- JSR @INCREMENTA 	# Se for diferente de 0, entra na sub rotina de incremento
tmp(44) := NOP & '0' & x"00";	-- NOP 
tmp(45) := JSR & '0' & x"C5";	-- JSR @ATUALIZA 	# Atualiza os displays
tmp(46) := JSR & '0' & x"D3";	-- JSR @CHECALIMITE 	# Checa pra ver se passou do limite setado
tmp(47) := LDA & '0' & x"0F";	-- LDA @15 	# Le o valor da flag de inibir contagem
tmp(48) := CEQ & '0' & x"06";	-- CEQ @6 	# Compara com 0 a flag (flag com valor 1 -> ativa, flag com valor 0 -> desativada)
tmp(49) := JEQ & '0' & x"27";	-- JEQ @INCREMENTADOR 	#Se a flag for 0, pode continuar incrementando
tmp(50) := JMP & '0' & x"F6";	-- JMP @TRAVA 	# Se for 1, trava a contagem
tmp(51) := NOP & '0' & x"00";	-- NOP   	#Fim do Loop
tmp(52) := JMP & '0' & x"21";	-- JMP @INICIOLOOP 	#Volta para o inicio do LOOP
tmp(53) := NOP & '0' & x"00";	-- NOP  	#Rotina de configuracao de limite
tmp(54) := LDI & '0' & x"01";	-- LDI $1 	# Carrega o valor 1
tmp(55) := STA & '1' & x"00";	-- STA @256 	# Bota no endereco dos LEDS(7-0)
tmp(56) := STA & '1' & x"FE";	-- STA @510 	#Limpa a leitura de KEY1
tmp(57) := NOP & '0' & x"00";	-- NOP 
tmp(58) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(59) := STA & '1' & x"20";	-- STA @288 	# Hex 0
tmp(60) := LDA & '1' & x"61";	-- LDA @353 	# Le KEY1
tmp(61) := CEQ & '0' & x"06";	-- CEQ @6 	#Compara KEY1 com 0
tmp(62) := JEQ & '0' & x"39";	-- JEQ @ESPERAUNIDADE  	#Se for 0, ou seja, nao esta apertado, espera ate apertar
tmp(63) := STA & '1' & x"FE";	-- STA @510 	#Limpa a leitura de KEY1
tmp(64) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(65) := STA & '0' & x"09";	-- STA @9   	#Armazena o valor das chaves no limite das unidades
tmp(66) := NOP & '0' & x"00";	-- NOP 
tmp(67) := LDI & '0' & x"04";	-- LDI $4 	#Carrega o valor 4
tmp(68) := STA & '1' & x"00";	-- STA @256 	# Bota o valor nos LEDS
tmp(69) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(70) := STA & '1' & x"21";	-- STA @289 	# Hex 1
tmp(71) := LDA & '1' & x"61";	-- LDA @353 	#Le o valor de KEY1 novamente
tmp(72) := CEQ & '0' & x"06";	-- CEQ @6 	#Compara com 0 o valor de KEY1 
tmp(73) := JEQ & '0' & x"42";	-- JEQ @ESPERADEZENA 	#Se for igual a 0, ficar em LOOP "esperando" o valor mudar
tmp(74) := STA & '1' & x"FE";	-- STA @510 	#Se for diferente de 0, Limpa a leitura de KEY1
tmp(75) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(76) := STA & '0' & x"0A";	-- STA @10 	#Armazena o valor das chaves no limte das dezenas
tmp(77) := NOP & '0' & x"00";	-- NOP 
tmp(78) := LDI & '0' & x"10";	-- LDI $16 	# Carrega o valor 16 no acumulador
tmp(79) := STA & '1' & x"00";	-- STA @256 	# Bota o valor nos LEDS
tmp(80) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(81) := STA & '1' & x"22";	-- STA @290 	# Hex 2
tmp(82) := LDA & '1' & x"61";	-- LDA @353 	#Le o valor de KEY1 novamente
tmp(83) := CEQ & '0' & x"06";	-- CEQ @6 	#Compara com 0 o valor de KEY1 
tmp(84) := JEQ & '0' & x"4D";	-- JEQ @ESPERACENTENA 	#Se for igual a 0, ficar em LOOP "esperando" o valor mudar
tmp(85) := STA & '1' & x"FE";	-- STA @510 	#Se for diferente de 0, Limpa a leitura de KEY1
tmp(86) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(87) := STA & '0' & x"0B";	-- STA @11 	#Armazena o valor das chaves no limite das centenas
tmp(88) := NOP & '0' & x"00";	-- NOP 
tmp(89) := LDI & '0' & x"20";	-- LDI $32 	# Carrega o valor 32 no acumulador
tmp(90) := STA & '1' & x"00";	-- STA @256 	# Bota o valor nos LEDS
tmp(91) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(92) := STA & '1' & x"23";	-- STA @291 	# Hex 3
tmp(93) := LDA & '1' & x"61";	-- LDA @353 	#Le o valor de KEY1 novamente
tmp(94) := CEQ & '0' & x"06";	-- CEQ @6 	#Compara com 0 o valor de KEY1
tmp(95) := JEQ & '0' & x"58";	-- JEQ @ESPERAUNIDADEMILHAR 	#Se for igual a 0, ficar em LOOP "esperando" o valor mudar
tmp(96) := STA & '1' & x"FE";	-- STA @510 	#Se for diferente de 0, Limpa a leitura de KEY1
tmp(97) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(98) := STA & '0' & x"0C";	-- STA @12 	#Armazena o valor das chaves no limite das unidades de milhar
tmp(99) := NOP & '0' & x"00";	-- NOP 
tmp(100) := LDI & '0' & x"80";	-- LDI $128 	# Carrega o valor 128 no acumulador
tmp(101) := STA & '1' & x"00";	-- STA @256 	# Bota o valor nos LEDS
tmp(102) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(103) := STA & '1' & x"24";	-- STA @292 	# Hex 4
tmp(104) := LDA & '1' & x"61";	-- LDA @353 	#Le o valor de KEY1 novamente
tmp(105) := CEQ & '0' & x"06";	-- CEQ @6 	#Compara com 0 o valor de KEY1 
tmp(106) := JEQ & '0' & x"63";	-- JEQ @ESPERADEZENAMILHAR 	#Se for igual a 0, ficar em LOOP "esperando" o valor mudar
tmp(107) := STA & '1' & x"FE";	-- STA @510 	#Se for diferente de 0, Limpa a leitura de KEY1
tmp(108) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(109) := STA & '0' & x"0D";	-- STA @13 	#Armazena o valor das chaves no limite das dezenas de milhar
tmp(110) := NOP & '0' & x"00";	-- NOP 
tmp(111) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(112) := STA & '1' & x"00";	-- STA @256 	# Zera o valor nos LEDS(7~0)
tmp(113) := LDI & '0' & x"01";	-- LDI $1 	# Carrega o valor 1 no acumulador
tmp(114) := STA & '1' & x"01";	-- STA @257 	# Bota o valor nos LEDS
tmp(115) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(116) := STA & '1' & x"25";	-- STA @293 	# Hex 5
tmp(117) := LDA & '1' & x"61";	-- LDA @353 	#Le o valor de KEY1 novamente
tmp(118) := CEQ & '0' & x"06";	-- CEQ @6 	#Compara com 0 o valor de KEY1
tmp(119) := JEQ & '0' & x"6E";	-- JEQ @ESPERACENTENAMILHAR 	#Se for igual a 0, ficar em LOOP "esperando" o valor mudar
tmp(120) := STA & '1' & x"FE";	-- STA @510 	#Se for diferente de 0, Limpa a leitura de KEY1
tmp(121) := LDA & '1' & x"40";	-- LDA @320 	#Le o valor das chaves SW(7~0)
tmp(122) := STA & '0' & x"0E";	-- STA @14 	#Armazena o valor das chaves no limite das centenas de milhar
tmp(123) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(124) := NOP & '0' & x"00";	-- NOP 
tmp(125) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(126) := STA & '1' & x"20";	-- STA @288 	# Zera o HEX1
tmp(127) := STA & '1' & x"21";	-- STA @289 	# Zera o HEX2
tmp(128) := STA & '1' & x"22";	-- STA @290 	# Zera o HEX3
tmp(129) := STA & '1' & x"23";	-- STA @291 	# Zera o HEX4
tmp(130) := STA & '1' & x"24";	-- STA @292 	# Zera o HEX5
tmp(131) := STA & '1' & x"25";	-- STA @293 	# Zera o HEX6
tmp(132) := STA & '1' & x"00";	-- STA @256 	# Zera os LEDS(7~0)
tmp(133) := STA & '1' & x"02";	-- STA @258 	# Zera os LED(9)
tmp(134) := STA & '1' & x"01";	-- STA @257 	# Zera os LED(8)
tmp(135) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(136) := NOP & '0' & x"00";	-- NOP 
tmp(137) := STA & '1' & x"FF";	-- STA @511 	#Limpa a leitura de KEY1
tmp(138) := NOP & '0' & x"00";	-- NOP 
tmp(139) := LDA & '0' & x"00";	-- LDA @0 	#Carrega o valor da unidade no acumulador
tmp(140) := SOMA & '0' & x"07";	-- SOMA @7     	#Incrementa 1 na unidade
tmp(141) := CEQ & '0' & x"08";	-- CEQ @8      	#Compara unidade com 10
tmp(142) := JEQ & '0' & x"91";	-- JEQ @UNIDADEPASSOU  	#Se for igual a 10, incrementa a dezena
tmp(143) := STA & '0' & x"00";	-- STA @0 	#Se for diferente de 10, armazena o valor da unidade
tmp(144) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(145) := NOP & '0' & x"00";	-- NOP 
tmp(146) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(147) := STA & '0' & x"00";	-- STA @0 	#Zera a unidade
tmp(148) := LDA & '0' & x"01";	-- LDA @1 	#Carrega o valor da dezena no acumulador
tmp(149) := SOMA & '0' & x"07";	-- SOMA @7     	#Incrementa 1 na dezena 
tmp(150) := CEQ & '0' & x"08";	-- CEQ @8      	#Compara dezena com 10
tmp(151) := JEQ & '0' & x"9A";	-- JEQ @DEZENAPASSOU 	#Se for igual a 10, incrementa a centena
tmp(152) := STA & '0' & x"01";	-- STA @1 	#Se for diferente de 10, armazena o valor da dezena
tmp(153) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(154) := NOP & '0' & x"00";	-- NOP 
tmp(155) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(156) := STA & '0' & x"01";	-- STA @1 	#Zera a dezena
tmp(157) := LDA & '0' & x"02";	-- LDA @2 	#Carrega o valor da centena no acumulador
tmp(158) := SOMA & '0' & x"07";	-- SOMA @7     	#Incrementa 1 na centena
tmp(159) := CEQ & '0' & x"08";	-- CEQ @8      	#Compara centena com 10
tmp(160) := JEQ & '0' & x"A3";	-- JEQ @CENTENAPASSOU 	#Se for igual a 10, incrementa a unidade de milhar
tmp(161) := STA & '0' & x"02";	-- STA @2 	#Se for diferente de 10, armazena o valor da centena
tmp(162) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(163) := NOP & '0' & x"00";	-- NOP 
tmp(164) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(165) := STA & '0' & x"02";	-- STA @2 	#Zera a centena
tmp(166) := LDA & '0' & x"03";	-- LDA @3 	#Carrega o valor da unidade de milhar no acumulador
tmp(167) := SOMA & '0' & x"07";	-- SOMA @7 	#Incrementa 1 na unidade de milhar
tmp(168) := CEQ & '0' & x"08";	-- CEQ @8  	#Compara unidade de milhar com 10
tmp(169) := JEQ & '0' & x"AC";	-- JEQ @UNIDADEMILHARPASSOU 	#Se for igual a 10, incrementa a dezena de milhar
tmp(170) := STA & '0' & x"03";	-- STA @3 	#Se for diferente de 10, armazena o valor da unidade de milhar
tmp(171) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(172) := NOP & '0' & x"00";	-- NOP 
tmp(173) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(174) := STA & '0' & x"03";	-- STA @3 	#Zera a unidade de milhar
tmp(175) := LDA & '0' & x"04";	-- LDA @4 	#Carrega o valor da dezena de milhar no acumulador
tmp(176) := SOMA & '0' & x"07";	-- SOMA @7 	#Incrementa 1 na dezena de milhar
tmp(177) := CEQ & '0' & x"08";	-- CEQ @8  	#Compara dezena de milhar com 10
tmp(178) := JEQ & '0' & x"B5";	-- JEQ @DEZENAMILHARPASSOU 	#Se for igual a 10, incrementa a centena de milhar
tmp(179) := STA & '0' & x"04";	-- STA @4 	#Se for diferente de 10, armazena o valor da dezena de milhar
tmp(180) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(181) := NOP & '0' & x"00";	-- NOP 
tmp(182) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(183) := STA & '0' & x"04";	-- STA @4 	#Zera a dezena de milhar
tmp(184) := LDA & '0' & x"05";	-- LDA @5 	#Carrega o valor da centena de milhar no acumulador
tmp(185) := SOMA & '0' & x"07";	-- SOMA @7 	#Incrementa 1 na centena de milhar
tmp(186) := CEQ & '0' & x"08";	-- CEQ @8  	#Compara centena de milhar com 10
tmp(187) := JEQ & '0' & x"BE";	-- JEQ @CENTENAMILHARPASSOU 	#Se for igual a 10, incrementa a unidade de milhao
tmp(188) := STA & '0' & x"05";	-- STA @5 	#Se for diferente de 10, armazena o valor da centena de milhar
tmp(189) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(190) := NOP & '0' & x"00";	-- NOP 
tmp(191) := LDA & '0' & x"06";	-- LDA @6 	#Carrega 0 no acumulador
tmp(192) := STA & '0' & x"05";	-- STA @5 	#Zera a centena de milhar
tmp(193) := LDI & '0' & x"01";	-- LDI $1 	#Carrega 1 no acumulador
tmp(194) := STA & '1' & x"02";	-- STA @258 	#Acende o LED(9)
tmp(195) := STA & '0' & x"0F";	-- STA @15 	#Ativa a flag de inibir incremento
tmp(196) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(197) := NOP & '0' & x"00";	-- NOP  	#Atualiza os valores dos HEX
tmp(198) := LDA & '0' & x"00";	-- LDA @0 	#Le o valor das unidades
tmp(199) := STA & '1' & x"20";	-- STA @288 	#Armazena o valor das unidades no HEX0
tmp(200) := LDA & '0' & x"01";	-- LDA @1 	#Le o valor das dezenas
tmp(201) := STA & '1' & x"21";	-- STA @289 	#Armazena o valor das dezenas no HEX1
tmp(202) := LDA & '0' & x"02";	-- LDA @2 	#Le o valor das centenas
tmp(203) := STA & '1' & x"22";	-- STA @290 	#Armazena o valor das centenas no HEX2
tmp(204) := LDA & '0' & x"03";	-- LDA @3 	#Le o valor das unidades de milhar
tmp(205) := STA & '1' & x"23";	-- STA @291 	#Armazena o valor das unidades de milhar no HEX3
tmp(206) := LDA & '0' & x"04";	-- LDA @4 	#Le o valor das dezenas de milhar
tmp(207) := STA & '1' & x"24";	-- STA @292 	#Armazena o valor das dezenas de milhar no HEX4
tmp(208) := LDA & '0' & x"05";	-- LDA @5 	#Le o valor das centenas de milhar
tmp(209) := STA & '1' & x"25";	-- STA @293 	#Armazena o valor das centenas de milhar no HEX5
tmp(210) := RET & '0' & x"00";	-- RET 	#Retorna para o LOOP principal
tmp(211) := NOP & '0' & x"00";	-- NOP 
tmp(212) := LDA & '0' & x"00";	-- LDA @0 	#Le o valor das unidades
tmp(213) := CEQ & '0' & x"09";	-- CEQ @9 	# Compara com o valor limite das unidades
tmp(214) := JEQ & '0' & x"D8";	-- JEQ @CHECADEZENA 	#Se for igual, checa se ocorre com as dezenas
tmp(215) := RET & '0' & x"00";	-- RET 	#Se for diferente, retorna para o LOOP principal
tmp(216) := NOP & '0' & x"00";	-- NOP 
tmp(217) := LDA & '0' & x"01";	-- LDA @1 	#Le o valor das dezenas
tmp(218) := CEQ & '0' & x"0A";	-- CEQ @10 	#Compara com o valor limite das dezenas
tmp(219) := JEQ & '0' & x"DD";	-- JEQ @CHECACENTENA 	#Se for igual, checa se ocorre com as centenas
tmp(220) := RET & '0' & x"00";	-- RET 	#Se for diferente, retorna para o LOOP principal
tmp(221) := NOP & '0' & x"00";	-- NOP 
tmp(222) := LDA & '0' & x"02";	-- LDA @2 	#Le o valor das centenas
tmp(223) := CEQ & '0' & x"0B";	-- CEQ @11 	#Compara com o valor limite das centenas
tmp(224) := JEQ & '0' & x"E2";	-- JEQ @CHECAUNIDADEMILHAR 	#Se for igual, checa se ocorre com as unidades de milhar
tmp(225) := RET & '0' & x"00";	-- RET 	#Se for diferente, retorna para o LOOP principal
tmp(226) := NOP & '0' & x"00";	-- NOP 
tmp(227) := LDA & '0' & x"03";	-- LDA @3 	# Le o valor das unidades de milhar
tmp(228) := CEQ & '0' & x"0C";	-- CEQ @12 	# Compara com o valor limite das unidades de milhar 
tmp(229) := JEQ & '0' & x"E7";	-- JEQ @CHECADEZENAMILHAR 	#Se for igual, checa se ocorre com as dezenas de milhar
tmp(230) := RET & '0' & x"00";	-- RET 	#Se for diferente, retorna para o LOOP principal
tmp(231) := NOP & '0' & x"00";	-- NOP 
tmp(232) := LDA & '0' & x"04";	-- LDA @4 	# Le o valor das dezenas de milhar
tmp(233) := CEQ & '0' & x"0D";	-- CEQ @13 	# Compara com o valor limite das dezenas de milhar 
tmp(234) := JEQ & '0' & x"EC";	-- JEQ @CHECACENTENAMILHAR 	#Se for igual, checa se ocorre com as centenas de milhar
tmp(235) := RET & '0' & x"00";	-- RET 	#Se for diferente, retorna para o LOOP principal
tmp(236) := NOP & '0' & x"00";	-- NOP 
tmp(237) := LDA & '0' & x"05";	-- LDA @5 	# Le o valor das centenas de milhar
tmp(238) := CEQ & '0' & x"0E";	-- CEQ @14 	# Compara com o valor limite das centenas de milhar 
tmp(239) := JEQ & '0' & x"F1";	-- JEQ @BATEUNOLIMITE 	#Se for igual, indica que o limite foi batido
tmp(240) := RET & '0' & x"00";	-- RET 	#Se for diferente, retorna para o LOOP principal
tmp(241) := NOP & '0' & x"00";	-- NOP 
tmp(242) := LDI & '0' & x"01";	-- LDI $1 	#Atribui o valor 1 no acumulador
tmp(243) := STA & '0' & x"0F";	-- STA @15 	#Ativa a flag de parar contagem
tmp(244) := STA & '1' & x"02";	-- STA @258 	#Ativa o LED de limite atingido 
tmp(245) := RET & '0' & x"00";	-- RET 	#Retorna pro LOOP principal
tmp(246) := NOP & '0' & x"00";	-- NOP  	#Trava a contagem
tmp(247) := LDI & '0' & x"01";	-- LDI $1
tmp(248) := STA56" & '0' & x"00";	-- STA 256
tmp(249) := LDA & '1' & x"64";	-- LDA @356 	#Le o valor do botao FPGA
tmp(250) := CEQ & '0' & x"06";	-- CEQ @6 	#Compara com 0 o botao FPGA
tmp(251) := JEQ & '0' & x"F6";	-- JEQ @TRAVA 	#Se for igual, continua travado
tmp(252) := JMP & '0' & x"00";	-- JMP @RESTART 	#Se for diferente, reinicia a contagem




        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;