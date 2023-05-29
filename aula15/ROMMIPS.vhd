library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) );
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);

--  signal memROM: blocoMemoria;
--  attribute ram_init_file : string;
--  attribute ram_init_file of memROM:
--  signal is "ROMcontent.mif";

--	--INTRUCAO
--	constant LW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
--   constant SW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
--   constant BEQ : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";
--	constant ADD : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100000";
--	constant SUB : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100111";
--   constant J : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
--   -- TMPS
--   constant T0 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01000";
--   constant T1 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01001";
--   constant T2 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01010";
--   constant T3 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01011";
--   constant T4 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01100";
--   constant T5 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01101";
--   constant T6 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01110";
--	-- EXTRAS
--   constant SHAMT : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
--   constant OPCODE_R : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
--   constant IM1 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000001";
--   constant IM2 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000010";
--   constant IM3 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000001000";
--   constant IM4 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
--   constant IM2_N : STD_LOGIC_VECTOR(15 DOWNTO 0) := "1111111111111101";
--   constant ADDRESS : STD_LOGIC_VECTOR(25 DOWNTO 0) := "00000000000000000000000000";
	
	function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));

	begin
		  --R
					 -- 6 bits   5 bits   5 bits    5 bits     5 bits      6 bits
					   -- opcode     Rs         Rt       Rd      shamt      funct
		  --I
					-- 6 bit    5 bit      5 bit            16 bits
						-- opcode     Rs         Rt             imediato
			 tmp(0)  := "00010001001010100000000000000011";   -- BEQ R(9), R(10), 3
			 tmp(1)  := "10101101001010010000000000000000";   -- SW R(9), 0(10)
			 tmp(2)  := "10001101001010100000000000000000";   -- LW R(10), 0(10)
			 tmp(3)  := "00010001001010101111111111111100";	  -- BEQ R(9), R(10), -4
			 tmp(4)  := "00001000000000000000000000001010";	  -- JMP 40
			 tmp(10) := "00000001001010100111000000100000";   -- ADD R(14), R(9), R(10)
			 tmp(11) := "00000001110010010111100000100010";   -- SUB R(15), R(14), R(9)
			 
			 
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;