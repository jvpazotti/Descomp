library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULAMIPS is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in std_logic_vector((larguraDados-1) downto 0);
      selecao:  in std_logic_vector(2 downto 0);
		flag: out std_logic;
      saida:    out std_logic_vector((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULAMIPS is

  signal C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,
  C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31 :  std_logic;

  signal r0,r1,r2,r3,r4,r5,
  r6,r7,r8,r9,r10,r11,
  r12,r13,r14,r15,r16,r17,
  r18,r19,r20,r21,r22,r23,
  r24,r25,r26,r27,r28,r29,
  r30,r31 :  std_logic;
	
  signal saidaOverflow: std_logic;
  
  
	
	
begin
	 

ULABIT_0 : entity work.ULA1bit generic map (larguraDados => larguraDados)
				port map(entradaA => entradaA(0),
							entradaB =>entradaB(0),
							selecao => selecao(1 downto 0),
							inverteB => selecao(2),
							Cin => selecao(2),
							SLT => saidaOverflow,
							Resultado => r0,
							Cout => C0);
							
ULABIT_1 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(1),
                                                 entradaB =>entradaB(1),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C0,
                                                 SLT => '0',
                                                 Resultado => r1,
                                                 Cout => C1);
    


ULABIT_2 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(2),
                                                 entradaB =>entradaB(2),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C1,
                                                 SLT => '0',
                                                 Resultado => r2,
                                                 Cout => C2);

ULABIT_3 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(3),
                                                 entradaB =>entradaB(3),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C2,
                                                 SLT => '0',
                                                 Resultado => r3,
                                                 Cout => C3);


ULABIT_4 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(4),
                                                 entradaB =>entradaB(4),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C3,
                                                 SLT => '0',
                                                 Resultado => r4,
                                                 Cout => C4);

ULABIT_5 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(5),
                                                 entradaB =>entradaB(5),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C4,
                                                 SLT => '0',
                                                 Resultado => r5,
                                                 Cout => C5);

ULABIT_6 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(6),
                                                 entradaB =>entradaB(6),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C5,
                                                 SLT => '0',
                                                 Resultado => r6,
                                                 Cout => C6);

ULABIT_7 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(7),
                                                 entradaB =>entradaB(7),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C6,
                                                 SLT => '0',
                                                 Resultado => r7,
                                                 Cout => C7);

ULABIT_8 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(8),
                                                 entradaB =>entradaB(8),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C7,
                                                 SLT => '0',
                                                 Resultado => r8,
                                                 Cout => C8);

ULABIT_9 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(9),
                                                 entradaB =>entradaB(9),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C8,
                                                 SLT => '0',
                                                 Resultado => r9,
                                                 Cout => C9);

ULABIT_10 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(10),
                                                 entradaB =>entradaB(10),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C9,
                                                 SLT => '0',
                                                 Resultado => r10,
                                                 Cout => C10);

ULABIT_11 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(11),
                                                 entradaB =>entradaB(11),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C10,
                                                 SLT => '0',
                                                 Resultado => r11,
                                                 Cout => C11);

ULABIT_12 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(12),
                                                 entradaB =>entradaB(12),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C11,
                                                 SLT => '0',
                                                 Resultado => r12,
                                                 Cout => C12);

ULABIT_13 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(13),
                                                 entradaB =>entradaB(13),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C12,
                                                 SLT => '0',
                                                 Resultado => r13,
                                                 Cout => C13);


ULABIT_14 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(14),
                                                 entradaB =>entradaB(14),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C13,
                                                 SLT => '0',
                                                 Resultado => r14,
                                                 Cout => C14);

ULABIT_15 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(15),
                                                 entradaB =>entradaB(15),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C14,
                                                 SLT => '0',
                                                 Resultado => r15,
                                                 Cout => C15);

ULABIT_16 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(16),
                                                 entradaB =>entradaB(16),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C15,
                                                 SLT => '0',
                                                 Resultado => r16,
                                                 Cout => C16);

ULABIT_17 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(17),
                                                 entradaB =>entradaB(17),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C16,
                                                 SLT => '0',
                                                 Resultado => r17,
                                                 Cout => C17);

ULABIT_18 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(18),
                                                 entradaB =>entradaB(18),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C17,
                                                 SLT => '0',
                                                 Resultado => r18,
                                                 Cout => C18);
																 
ULABIT_19 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(19),
                                                 entradaB =>entradaB(19),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C18,
                                                 SLT => '0',
                                                 Resultado => r19,
                                                 Cout => C19);
																 
ULABIT_20 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(20),
                                                 entradaB =>entradaB(20),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C19,
                                                 SLT => '0',
                                                 Resultado => r20,
                                                 Cout => C20);

ULA1BIT_21 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(21),
                                                 entradaB =>entradaB(21),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C20,
                                                 SLT => '0',
                                                 Resultado => r21,
                                                 Cout => C21);


ULABIT_22 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(22),
                                                 entradaB =>entradaB(22),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C21,
                                                 SLT => '0',
                                                 Resultado => r22,
                                                 Cout => C22);

ULA1BIT_23 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(23),
                                                 entradaB =>entradaB(23),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C22,
                                                 SLT => '0',
                                                 Resultado => r23,
                                                 Cout => C23);

ULABIT_24 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(24),
                                                 entradaB =>entradaB(24),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C23,
                                                 SLT => '0',
                                                 Resultado => r24,
                                                 Cout => C24);

ULA1BIT_25 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(25),
                                                 entradaB =>entradaB(25),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C24,
                                                 SLT => '0',
                                                 Resultado => r25,
                                                 Cout => C25);

ULABIT_26 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(26),
                                                 entradaB =>entradaB(26),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C25,
                                                 SLT => '0',
                                                 Resultado => r26,
                                                 Cout => C26);

ULABIT_27 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(27),
                                                 entradaB =>entradaB(27),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C26,
                                                 SLT => '0',
                                                 Resultado => r27,
                                                 Cout => C27);

ULABIT_28 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(28),
                                                 entradaB =>entradaB(28),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C27,
                                                 SLT => '0',
                                                 Resultado => r28,
                                                 Cout => C28);

ULABIT_29 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(29),
                                                 entradaB =>entradaB(29),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C28,
                                                 SLT => '0',
                                                 Resultado => r29,
                                                 Cout => C29);

ULABIT_30 : entity work.ULA1bit generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(30),
                                                 entradaB =>entradaB(30),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C29,
                                                 SLT => '0',
                                                 Resultado => r30,
                                                 Cout => C30);


ULABIT_31 : entity work.ULA_bit_final generic map (larguraDados => larguraDados)
                                port map(entradaA => entradaA(31),
                                                 entradaB =>entradaB(31),
                                                 selecao => selecao(1 downto 0),
                                                 inverteB => selecao(2),
                                                 Cin => C30,
                                                 SLT => '0',
                                                 Resultado => r31,
                                                 Overflow => saidaOverflow);
      

saida <= r31 & r30 & r29 & r28 & r27 & r26 & r25 & r24 & r23 & r22 & r21 & r20 & r19 & r18 & r17 & r16 & r15 & r14 & r13 & r12 & r11 & r10 & r9 & r8 & r7 & r6 & r5 & r4 & r3 & r2 & r1 & r0;
flag<= not(r31 or r30 or r29 or r28 or r27 or r26 or r25 or r24 or r23 or r22 or r21 or r20 or r19 or r18 or r17 or r16 or r15 or r14 or r13 or r12 or r11 or r10 or r9 or r8 or r7 or r6 or r5 or r4 or r3 or r2 or r1 or r0);

end architecture;	