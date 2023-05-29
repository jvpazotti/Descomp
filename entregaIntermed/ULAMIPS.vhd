library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULAMIPS is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      selecao:  in STD_LOGIC_VECTOR(2 downto 0);
		flag: out std_logic;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULAMIPS is

  signal C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,
  C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31 :      STD_LOGIC;

  signal resultado0,resultado1,resultado2,resultado3,resultado4,resultado5,
  resultado6,resultado7,resultado8,resultado9,resultado10,resultado11,
  resultado12,resultado13,resultado14,resultado15,resultado16,resultado17,
  resultado18,resultado19,resultado20,resultado21,resultado22,resultado23,
  resultado24,resultado25,resultado26,resultado27,resultado28,resultado29,
  resultado30,resultado31 :      STD_LOGIC;
	
  signal saidaOverflow: std_logic;
  
  
	
	
begin
	 

ULABIT_0 : entity work.ULA1bit generic map (larguraDados => larguraDados)
				port map(entradaA => entradaA(0),
							entradaB =>entradaB(0),
							selecao => selecao(1 downto 0),
							inverteB => selecao(2),
							Cin => selecao(2),
							SLT => saidaOverflow,
							Resultado => resultado0,
							Cout => C0);
							
ULABIT_1 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(1),
                                                 entradaB =>entradaB(1),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C0,
                                                 SLT => '0',
                                                 Resultado => resultado1,
                                                 Cout => C1);
    


ULABIT_2 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(2),
                                                 entradaB =>entradaB(2),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C1,
                                                 SLT => '0',
                                                 Resultado => resultado2,
                                                 Cout => C2);

ULABIT_3 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(3),
                                                 entradaB =>entradaB(3),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C2,
                                                 SLT => '0',
                                                 Resultado => resultado3,
                                                 Cout => C3);


ULABIT_4 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(4),
                                                 entradaB =>entradaB(4),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C3,
                                                 SLT => '0',
                                                 Resultado => resultado4,
                                                 Cout => C4);

ULABIT_5 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(5),
                                                 entradaB =>entradaB(5),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C4,
                                                 SLT => '0',
                                                 Resultado => resultado5,
                                                 Cout => C5);

ULABIT_6 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(6),
                                                 entradaB =>entradaB(6),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C5,
                                                 SLT => '0',
                                                 Resultado => resultado6,
                                                 Cout => C6);

ULABIT_7 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(7),
                                                 entradaB =>entradaB(7),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C6,
                                                 SLT => '0',
                                                 Resultado => resultado7,
                                                 Cout => C7);

ULABIT_8 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(8),
                                                 entradaB =>entradaB(8),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C7,
                                                 SLT => '0',
                                                 Resultado => resultado8,
                                                 Cout => C8);

ULABIT_9 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(9),
                                                 entradaB =>entradaB(9),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C8,
                                                 SLT => '0',
                                                 Resultado => resultado9,
                                                 Cout => C9);

ULABIT_10 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(10),
                                                 entradaB =>entradaB(10),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C9,
                                                 SLT => '0',
                                                 Resultado => resultado10,
                                                 Cout => C10);

ULABIT_11 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(11),
                                                 entradaB =>entradaB(11),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C10,
                                                 SLT => '0',
                                                 Resultado => resultado11,
                                                 Cout => C11);

ULABIT_12 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(12),
                                                 entradaB =>entradaB(12),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C11,
                                                 SLT => '0',
                                                 Resultado => resultado12,
                                                 Cout => C12);

ULABIT_13 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(13),
                                                 entradaB =>entradaB(13),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C12,
                                                 SLT => '0',
                                                 Resultado => resultado13,
                                                 Cout => C13);


ULABIT_14 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(14),
                                                 entradaB =>entradaB(14),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C13,
                                                 SLT => '0',
                                                 Resultado => resultado14,
                                                 Cout => C14);

ULABIT_15 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(15),
                                                 entradaB =>entradaB(15),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C14,
                                                 SLT => '0',
                                                 Resultado => resultado15,
                                                 Cout => C15);

ULABIT_16 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(16),
                                                 entradaB =>entradaB(16),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C15,
                                                 SLT => '0',
                                                 Resultado => resultado16,
                                                 Cout => C16);

ULABIT_17 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(17),
                                                 entradaB =>entradaB(17),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C16,
                                                 SLT => '0',
                                                 Resultado => resultado17,
                                                 Cout => C17);

ULABIT_18 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(18),
                                                 entradaB =>entradaB(18),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C17,
                                                 SLT => '0',
                                                 Resultado => resultado18,
                                                 Cout => C18);
																 
ULABIT_19 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(19),
                                                 entradaB =>entradaB(19),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C18,
                                                 SLT => '0',
                                                 Resultado => resultado19,
                                                 Cout => C19);
																 
ULABIT_20 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(20),
                                                 entradaB =>entradaB(20),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C19,
                                                 SLT => '0',
                                                 Resultado => resultado20,
                                                 Cout => C20);

ULA1BIT_21 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(21),
                                                 entradaB =>entradaB(21),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C20,
                                                 SLT => '0',
                                                 Resultado => resultado21,
                                                 Cout => C21);


ULABIT_22 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(22),
                                                 entradaB =>entradaB(22),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C21,
                                                 SLT => '0',
                                                 Resultado => resultado22,
                                                 Cout => C22);

ULA1BIT_23 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(23),
                                                 entradaB =>entradaB(23),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C22,
                                                 SLT => '0',
                                                 Resultado => resultado23,
                                                 Cout => C23);

ULABIT_24 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(24),
                                                 entradaB =>entradaB(24),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C23,
                                                 SLT => '0',
                                                 Resultado => resultado24,
                                                 Cout => C24);

ULA1BIT_25 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(25),
                                                 entradaB =>entradaB(25),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C24,
                                                 SLT => '0',
                                                 Resultado => resultado25,
                                                 Cout => C25);

ULABIT_26 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(26),
                                                 entradaB =>entradaB(26),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C25,
                                                 SLT => '0',
                                                 Resultado => resultado26,
                                                 Cout => C26);

ULABIT_27 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(27),
                                                 entradaB =>entradaB(27),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C26,
                                                 SLT => '0',
                                                 Resultado => resultado27,
                                                 Cout => C27);

ULABIT_28 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(28),
                                                 entradaB =>entradaB(28),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C27,
                                                 SLT => '0',
                                                 Resultado => resultado28,
                                                 Cout => C28);

ULABIT_29 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(29),
                                                 entradaB =>entradaB(29),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C28,
                                                 SLT => '0',
                                                 Resultado => resultado29,
                                                 Cout => C29);

ULABIT_30 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(30),
                                                 entradaB =>entradaB(30),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C29,
                                                 SLT => '0',
                                                 Resultado => resultado30,
                                                 Cout => C30);


ULABIT_31 : entity work.ULA_bit_final generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(31),
                                                 entradaB =>entradaB(31),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C30,
                                                 SLT => '0',
                                                 Resultado => resultado31,
                                                 Overflow => saidaOverflow);
      

saida <= resultado31 & resultado30 & resultado29 & resultado28 & resultado27 & resultado26 & resultado25 & resultado24 & resultado23 & resultado22 & resultado21 & resultado20 & resultado19 & resultado18 & resultado17 & resultado16 & resultado15 & resultado14 & resultado13 & resultado12 & resultado11 & resultado10 & resultado9 & resultado8 & resultado7 & resultado6 & resultado5 & resultado4 & resultado3 & resultado2 & resultado1 & resultado0;
flag<= not(resultado31 or resultado30 or resultado29 or resultado28 or resultado27 or resultado26 or resultado25 or resultado24 or resultado23 or resultado22 or resultado21 or resultado20 or resultado19 or resultado18 or resultado17 or resultado16 or resultado15 or resultado14 or resultado13 or resultado12 or resultado11 or resultado10 or resultado9 or resultado8 or resultado7 or resultado6 or resultado5 or resultado4 or resultado3 or resultado2 or resultado1 or resultado0);

end architecture;	