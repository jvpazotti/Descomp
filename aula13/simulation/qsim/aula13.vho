-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/11/2023 22:33:15"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	Write_Rd : IN std_logic;
	Sel_ULA : IN std_logic_vector(1 DOWNTO 0);
	Instru_opcode : OUT std_logic_vector(5 DOWNTO 0);
	Funct : OUT std_logic_vector(5 DOWNTO 0);
	ULAA_OUT : OUT std_logic_vector(31 DOWNTO 0);
	RS_OUT : OUT std_logic_vector(31 DOWNTO 0);
	RT_OUT : OUT std_logic_vector(31 DOWNTO 0);
	Rs_End : OUT std_logic_vector(4 DOWNTO 0);
	Rt_End : OUT std_logic_vector(4 DOWNTO 0);
	Rd_End : OUT std_logic_vector(4 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END aula13;

ARCHITECTURE structure OF aula13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_Write_Rd : std_logic;
SIGNAL ww_Sel_ULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Instru_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ULAA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RT_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Rs_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Rt_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Rd_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \Instru_opcode[0]~output_o\ : std_logic;
SIGNAL \Instru_opcode[1]~output_o\ : std_logic;
SIGNAL \Instru_opcode[2]~output_o\ : std_logic;
SIGNAL \Instru_opcode[3]~output_o\ : std_logic;
SIGNAL \Instru_opcode[4]~output_o\ : std_logic;
SIGNAL \Instru_opcode[5]~output_o\ : std_logic;
SIGNAL \Funct[0]~output_o\ : std_logic;
SIGNAL \Funct[1]~output_o\ : std_logic;
SIGNAL \Funct[2]~output_o\ : std_logic;
SIGNAL \Funct[3]~output_o\ : std_logic;
SIGNAL \Funct[4]~output_o\ : std_logic;
SIGNAL \Funct[5]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[0]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[1]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[2]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[3]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[4]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[5]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[6]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[7]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[8]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[9]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[10]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[11]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[12]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[13]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[14]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[15]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[16]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[17]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[18]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[19]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[20]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[21]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[22]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[23]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[24]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[25]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[26]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[27]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[28]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[29]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[30]~output_o\ : std_logic;
SIGNAL \ULAA_OUT[31]~output_o\ : std_logic;
SIGNAL \RS_OUT[0]~output_o\ : std_logic;
SIGNAL \RS_OUT[1]~output_o\ : std_logic;
SIGNAL \RS_OUT[2]~output_o\ : std_logic;
SIGNAL \RS_OUT[3]~output_o\ : std_logic;
SIGNAL \RS_OUT[4]~output_o\ : std_logic;
SIGNAL \RS_OUT[5]~output_o\ : std_logic;
SIGNAL \RS_OUT[6]~output_o\ : std_logic;
SIGNAL \RS_OUT[7]~output_o\ : std_logic;
SIGNAL \RS_OUT[8]~output_o\ : std_logic;
SIGNAL \RS_OUT[9]~output_o\ : std_logic;
SIGNAL \RS_OUT[10]~output_o\ : std_logic;
SIGNAL \RS_OUT[11]~output_o\ : std_logic;
SIGNAL \RS_OUT[12]~output_o\ : std_logic;
SIGNAL \RS_OUT[13]~output_o\ : std_logic;
SIGNAL \RS_OUT[14]~output_o\ : std_logic;
SIGNAL \RS_OUT[15]~output_o\ : std_logic;
SIGNAL \RS_OUT[16]~output_o\ : std_logic;
SIGNAL \RS_OUT[17]~output_o\ : std_logic;
SIGNAL \RS_OUT[18]~output_o\ : std_logic;
SIGNAL \RS_OUT[19]~output_o\ : std_logic;
SIGNAL \RS_OUT[20]~output_o\ : std_logic;
SIGNAL \RS_OUT[21]~output_o\ : std_logic;
SIGNAL \RS_OUT[22]~output_o\ : std_logic;
SIGNAL \RS_OUT[23]~output_o\ : std_logic;
SIGNAL \RS_OUT[24]~output_o\ : std_logic;
SIGNAL \RS_OUT[25]~output_o\ : std_logic;
SIGNAL \RS_OUT[26]~output_o\ : std_logic;
SIGNAL \RS_OUT[27]~output_o\ : std_logic;
SIGNAL \RS_OUT[28]~output_o\ : std_logic;
SIGNAL \RS_OUT[29]~output_o\ : std_logic;
SIGNAL \RS_OUT[30]~output_o\ : std_logic;
SIGNAL \RS_OUT[31]~output_o\ : std_logic;
SIGNAL \RT_OUT[0]~output_o\ : std_logic;
SIGNAL \RT_OUT[1]~output_o\ : std_logic;
SIGNAL \RT_OUT[2]~output_o\ : std_logic;
SIGNAL \RT_OUT[3]~output_o\ : std_logic;
SIGNAL \RT_OUT[4]~output_o\ : std_logic;
SIGNAL \RT_OUT[5]~output_o\ : std_logic;
SIGNAL \RT_OUT[6]~output_o\ : std_logic;
SIGNAL \RT_OUT[7]~output_o\ : std_logic;
SIGNAL \RT_OUT[8]~output_o\ : std_logic;
SIGNAL \RT_OUT[9]~output_o\ : std_logic;
SIGNAL \RT_OUT[10]~output_o\ : std_logic;
SIGNAL \RT_OUT[11]~output_o\ : std_logic;
SIGNAL \RT_OUT[12]~output_o\ : std_logic;
SIGNAL \RT_OUT[13]~output_o\ : std_logic;
SIGNAL \RT_OUT[14]~output_o\ : std_logic;
SIGNAL \RT_OUT[15]~output_o\ : std_logic;
SIGNAL \RT_OUT[16]~output_o\ : std_logic;
SIGNAL \RT_OUT[17]~output_o\ : std_logic;
SIGNAL \RT_OUT[18]~output_o\ : std_logic;
SIGNAL \RT_OUT[19]~output_o\ : std_logic;
SIGNAL \RT_OUT[20]~output_o\ : std_logic;
SIGNAL \RT_OUT[21]~output_o\ : std_logic;
SIGNAL \RT_OUT[22]~output_o\ : std_logic;
SIGNAL \RT_OUT[23]~output_o\ : std_logic;
SIGNAL \RT_OUT[24]~output_o\ : std_logic;
SIGNAL \RT_OUT[25]~output_o\ : std_logic;
SIGNAL \RT_OUT[26]~output_o\ : std_logic;
SIGNAL \RT_OUT[27]~output_o\ : std_logic;
SIGNAL \RT_OUT[28]~output_o\ : std_logic;
SIGNAL \RT_OUT[29]~output_o\ : std_logic;
SIGNAL \RT_OUT[30]~output_o\ : std_logic;
SIGNAL \RT_OUT[31]~output_o\ : std_logic;
SIGNAL \Rs_End[0]~output_o\ : std_logic;
SIGNAL \Rs_End[1]~output_o\ : std_logic;
SIGNAL \Rs_End[2]~output_o\ : std_logic;
SIGNAL \Rs_End[3]~output_o\ : std_logic;
SIGNAL \Rs_End[4]~output_o\ : std_logic;
SIGNAL \Rt_End[0]~output_o\ : std_logic;
SIGNAL \Rt_End[1]~output_o\ : std_logic;
SIGNAL \Rt_End[2]~output_o\ : std_logic;
SIGNAL \Rt_End[3]~output_o\ : std_logic;
SIGNAL \Rt_End[4]~output_o\ : std_logic;
SIGNAL \Rd_End[0]~output_o\ : std_logic;
SIGNAL \Rd_End[1]~output_o\ : std_logic;
SIGNAL \Rd_End[2]~output_o\ : std_logic;
SIGNAL \Rd_End[3]~output_o\ : std_logic;
SIGNAL \Rd_End[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \Somador|Add0~17_sumout\ : std_logic;
SIGNAL \Somador|Add0~18\ : std_logic;
SIGNAL \Somador|Add0~5_sumout\ : std_logic;
SIGNAL \Somador|Add0~6\ : std_logic;
SIGNAL \Somador|Add0~1_sumout\ : std_logic;
SIGNAL \Somador|Add0~2\ : std_logic;
SIGNAL \Somador|Add0~13_sumout\ : std_logic;
SIGNAL \Somador|Add0~14\ : std_logic;
SIGNAL \Somador|Add0~9_sumout\ : std_logic;
SIGNAL \BANCO_REG|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \Sel_ULA[1]~input_o\ : std_logic;
SIGNAL \BANCO_REG|Equal0~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Write_Rd~input_o\ : std_logic;
SIGNAL \BANCO_REG|registrador~1096_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[0]~1_combout\ : std_logic;
SIGNAL \Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~130_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~38_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1062_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~295_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add0~5_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[1]~1_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~39_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[2]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~40_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1064_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~297_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[3]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Add0~13_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[3]~3_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~41_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1065_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[4]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~42_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~299_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[5]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add0~21_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[5]~5_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~43_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[6]~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~44_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1069_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~301_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[7]~8_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|Add0~29_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[7]~7_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~45_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[8]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~46_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1071_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \ULA1|saida[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~303_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[9]~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~34\ : std_logic;
SIGNAL \ULA1|Add0~37_sumout\ : std_logic;
SIGNAL \ULA1|Add0~37_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[9]~9_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~47_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \ULA1|saida[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[10]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~38\ : std_logic;
SIGNAL \ULA1|Add0~41_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~48_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \ULA1|saida[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[11]~12_combout\ : std_logic;
SIGNAL \ULA1|Add0~42\ : std_logic;
SIGNAL \ULA1|Add0~45_sumout\ : std_logic;
SIGNAL \ULA1|Add0~45_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[11]~11_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~49_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \ULA1|saida[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[12]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~46\ : std_logic;
SIGNAL \ULA1|Add0~49_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~50_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1075_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \ULA1|saida[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[13]~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~50\ : std_logic;
SIGNAL \ULA1|Add0~53_sumout\ : std_logic;
SIGNAL \ULA1|Add0~53_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[13]~13_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~51_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1076_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \ULA1|saida[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[14]~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~54\ : std_logic;
SIGNAL \ULA1|Add0~57_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~52_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \ULA1|saida[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~309_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[15]~16_combout\ : std_logic;
SIGNAL \ULA1|Add0~58\ : std_logic;
SIGNAL \ULA1|Add0~61_sumout\ : std_logic;
SIGNAL \ULA1|Add0~61_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[15]~15_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~53_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \ULA1|saida[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[16]~17_combout\ : std_logic;
SIGNAL \ULA1|Add0~62\ : std_logic;
SIGNAL \ULA1|Add0~65_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~54_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1079_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \ULA1|saida[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~311_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[17]~18_combout\ : std_logic;
SIGNAL \ULA1|Add0~66\ : std_logic;
SIGNAL \ULA1|Add0~69_sumout\ : std_logic;
SIGNAL \ULA1|Add0~69_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[17]~17_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~55_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1080_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \ULA1|saida[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[18]~19_combout\ : std_logic;
SIGNAL \ULA1|Add0~70\ : std_logic;
SIGNAL \ULA1|Add0~73_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~56_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1081_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \ULA1|saida[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[19]~20_combout\ : std_logic;
SIGNAL \ULA1|Add0~74\ : std_logic;
SIGNAL \ULA1|Add0~77_sumout\ : std_logic;
SIGNAL \ULA1|Add0~77_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[19]~19_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~57_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \ULA1|saida[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[20]~21_combout\ : std_logic;
SIGNAL \ULA1|Add0~78\ : std_logic;
SIGNAL \ULA1|Add0~81_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~58_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \ULA1|saida[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[21]~22_combout\ : std_logic;
SIGNAL \ULA1|Add0~82\ : std_logic;
SIGNAL \ULA1|Add0~85_sumout\ : std_logic;
SIGNAL \ULA1|Add0~85_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[21]~21_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~59_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1084_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \ULA1|saida[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[22]~23_combout\ : std_logic;
SIGNAL \ULA1|Add0~86\ : std_logic;
SIGNAL \ULA1|Add0~89_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~60_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1085_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \ULA1|saida[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[23]~24_combout\ : std_logic;
SIGNAL \ULA1|Add0~90\ : std_logic;
SIGNAL \ULA1|Add0~93_sumout\ : std_logic;
SIGNAL \ULA1|Add0~93_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[23]~23_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~61_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \ULA1|saida[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[24]~25_combout\ : std_logic;
SIGNAL \ULA1|Add0~94\ : std_logic;
SIGNAL \ULA1|Add0~97_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~62_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \ULA1|saida[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[25]~26_combout\ : std_logic;
SIGNAL \ULA1|Add0~98\ : std_logic;
SIGNAL \ULA1|Add0~101_sumout\ : std_logic;
SIGNAL \ULA1|Add0~101_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[25]~25_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~63_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \ULA1|saida[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[26]~27_combout\ : std_logic;
SIGNAL \ULA1|Add0~102\ : std_logic;
SIGNAL \ULA1|Add0~105_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~64_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \ULA1|saida[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[27]~28_combout\ : std_logic;
SIGNAL \ULA1|Add0~106\ : std_logic;
SIGNAL \ULA1|Add0~109_sumout\ : std_logic;
SIGNAL \ULA1|Add0~109_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[27]~27_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~65_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \ULA1|saida[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[28]~29_combout\ : std_logic;
SIGNAL \ULA1|Add0~110\ : std_logic;
SIGNAL \ULA1|Add0~113_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~66_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \ULA1|saida[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~323_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[29]~30_combout\ : std_logic;
SIGNAL \ULA1|Add0~114\ : std_logic;
SIGNAL \ULA1|Add0~117_sumout\ : std_logic;
SIGNAL \ULA1|Add0~117_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[29]~29_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~67_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \ULA1|saida[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[30]~31_combout\ : std_logic;
SIGNAL \ULA1|Add0~118\ : std_logic;
SIGNAL \ULA1|Add0~121_sumout\ : std_logic;
SIGNAL \BANCO_REG|registrador~68_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \ULA1|saida[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~325_q\ : std_logic;
SIGNAL \BANCO_REG|saidaA[31]~32_combout\ : std_logic;
SIGNAL \ULA1|Add0~122\ : std_logic;
SIGNAL \ULA1|Add0~125_sumout\ : std_logic;
SIGNAL \ULA1|Add0~125_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[31]~31_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REG|registrador~69_q\ : std_logic;
SIGNAL \BANCO_REG|registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \ULA1|saida[31]~31_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Somador|Add0~10\ : std_logic;
SIGNAL \Somador|Add0~21_sumout\ : std_logic;
SIGNAL \Somador|Add0~22\ : std_logic;
SIGNAL \Somador|Add0~25_sumout\ : std_logic;
SIGNAL \Somador|Add0~26\ : std_logic;
SIGNAL \Somador|Add0~29_sumout\ : std_logic;
SIGNAL \Somador|Add0~30\ : std_logic;
SIGNAL \Somador|Add0~33_sumout\ : std_logic;
SIGNAL \Somador|Add0~34\ : std_logic;
SIGNAL \Somador|Add0~37_sumout\ : std_logic;
SIGNAL \Somador|Add0~38\ : std_logic;
SIGNAL \Somador|Add0~41_sumout\ : std_logic;
SIGNAL \Somador|Add0~42\ : std_logic;
SIGNAL \Somador|Add0~45_sumout\ : std_logic;
SIGNAL \Somador|Add0~46\ : std_logic;
SIGNAL \Somador|Add0~49_sumout\ : std_logic;
SIGNAL \Somador|Add0~50\ : std_logic;
SIGNAL \Somador|Add0~53_sumout\ : std_logic;
SIGNAL \Somador|Add0~54\ : std_logic;
SIGNAL \Somador|Add0~57_sumout\ : std_logic;
SIGNAL \Somador|Add0~58\ : std_logic;
SIGNAL \Somador|Add0~61_sumout\ : std_logic;
SIGNAL \Somador|Add0~62\ : std_logic;
SIGNAL \Somador|Add0~65_sumout\ : std_logic;
SIGNAL \Somador|Add0~66\ : std_logic;
SIGNAL \Somador|Add0~69_sumout\ : std_logic;
SIGNAL \Somador|Add0~70\ : std_logic;
SIGNAL \Somador|Add0~73_sumout\ : std_logic;
SIGNAL \Somador|Add0~74\ : std_logic;
SIGNAL \Somador|Add0~77_sumout\ : std_logic;
SIGNAL \Somador|Add0~78\ : std_logic;
SIGNAL \Somador|Add0~81_sumout\ : std_logic;
SIGNAL \Somador|Add0~82\ : std_logic;
SIGNAL \Somador|Add0~85_sumout\ : std_logic;
SIGNAL \Somador|Add0~86\ : std_logic;
SIGNAL \Somador|Add0~89_sumout\ : std_logic;
SIGNAL \Somador|Add0~90\ : std_logic;
SIGNAL \Somador|Add0~93_sumout\ : std_logic;
SIGNAL \Somador|Add0~94\ : std_logic;
SIGNAL \Somador|Add0~97_sumout\ : std_logic;
SIGNAL \Somador|Add0~98\ : std_logic;
SIGNAL \Somador|Add0~101_sumout\ : std_logic;
SIGNAL \Somador|Add0~102\ : std_logic;
SIGNAL \Somador|Add0~105_sumout\ : std_logic;
SIGNAL \Somador|Add0~106\ : std_logic;
SIGNAL \Somador|Add0~109_sumout\ : std_logic;
SIGNAL \Somador|Add0~110\ : std_logic;
SIGNAL \Somador|Add0~113_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BANCO_REG|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ULA1|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[31]~31_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[31]~32_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[30]~31_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[29]~30_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[28]~29_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[27]~28_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[26]~27_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[25]~26_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[24]~25_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[23]~24_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[22]~23_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[21]~22_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[20]~21_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[19]~20_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[18]~19_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[17]~18_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[16]~17_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[15]~16_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[14]~15_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[13]~14_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[12]~13_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[11]~12_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[10]~11_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[9]~10_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[8]~9_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[7]~8_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[6]~7_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[5]~6_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[4]~5_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[3]~4_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[2]~3_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[1]~2_combout\ : std_logic;
SIGNAL \BANCO_REG|ALT_INV_saidaA[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write_Rd~input_o\ : std_logic;
SIGNAL \ALT_INV_Sel_ULA[1]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Write_Rd <= Write_Rd;
ww_Sel_ULA <= Sel_ULA;
Instru_opcode <= ww_Instru_opcode;
Funct <= ww_Funct;
ULAA_OUT <= ww_ULAA_OUT;
RS_OUT <= ww_RS_OUT;
RT_OUT <= ww_RT_OUT;
Rs_End <= ww_Rs_End;
Rt_End <= ww_Rt_End;
Rd_End <= ww_Rd_End;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BANCO_REG|ALT_INV_registrador~56_q\ <= NOT \BANCO_REG|registrador~56_q\;
\ULA1|ALT_INV_Add0~69_sumout\ <= NOT \ULA1|Add0~69_sumout\;
\BANCO_REG|ALT_INV_registrador~311_q\ <= NOT \BANCO_REG|registrador~311_q\;
\BANCO_REG|ALT_INV_registrador~55_q\ <= NOT \BANCO_REG|registrador~55_q\;
\ULA1|ALT_INV_Add0~65_sumout\ <= NOT \ULA1|Add0~65_sumout\;
\BANCO_REG|ALT_INV_registrador~310_q\ <= NOT \BANCO_REG|registrador~310_q\;
\BANCO_REG|ALT_INV_registrador~54_q\ <= NOT \BANCO_REG|registrador~54_q\;
\ULA1|ALT_INV_Add0~61_sumout\ <= NOT \ULA1|Add0~61_sumout\;
\BANCO_REG|ALT_INV_registrador~309_q\ <= NOT \BANCO_REG|registrador~309_q\;
\BANCO_REG|ALT_INV_registrador~53_q\ <= NOT \BANCO_REG|registrador~53_q\;
\ULA1|ALT_INV_Add0~57_sumout\ <= NOT \ULA1|Add0~57_sumout\;
\BANCO_REG|ALT_INV_registrador~308_q\ <= NOT \BANCO_REG|registrador~308_q\;
\BANCO_REG|ALT_INV_registrador~52_q\ <= NOT \BANCO_REG|registrador~52_q\;
\ULA1|ALT_INV_Add0~53_sumout\ <= NOT \ULA1|Add0~53_sumout\;
\BANCO_REG|ALT_INV_registrador~307_q\ <= NOT \BANCO_REG|registrador~307_q\;
\BANCO_REG|ALT_INV_registrador~51_q\ <= NOT \BANCO_REG|registrador~51_q\;
\ULA1|ALT_INV_Add0~49_sumout\ <= NOT \ULA1|Add0~49_sumout\;
\BANCO_REG|ALT_INV_registrador~306_q\ <= NOT \BANCO_REG|registrador~306_q\;
\BANCO_REG|ALT_INV_registrador~50_q\ <= NOT \BANCO_REG|registrador~50_q\;
\ULA1|ALT_INV_Add0~45_sumout\ <= NOT \ULA1|Add0~45_sumout\;
\BANCO_REG|ALT_INV_registrador~305_q\ <= NOT \BANCO_REG|registrador~305_q\;
\BANCO_REG|ALT_INV_registrador~49_q\ <= NOT \BANCO_REG|registrador~49_q\;
\ULA1|ALT_INV_Add0~41_sumout\ <= NOT \ULA1|Add0~41_sumout\;
\BANCO_REG|ALT_INV_registrador~304_q\ <= NOT \BANCO_REG|registrador~304_q\;
\BANCO_REG|ALT_INV_registrador~48_q\ <= NOT \BANCO_REG|registrador~48_q\;
\ULA1|ALT_INV_Add0~37_sumout\ <= NOT \ULA1|Add0~37_sumout\;
\BANCO_REG|ALT_INV_registrador~303_q\ <= NOT \BANCO_REG|registrador~303_q\;
\BANCO_REG|ALT_INV_registrador~47_q\ <= NOT \BANCO_REG|registrador~47_q\;
\ULA1|ALT_INV_Add0~33_sumout\ <= NOT \ULA1|Add0~33_sumout\;
\BANCO_REG|ALT_INV_registrador~302_q\ <= NOT \BANCO_REG|registrador~302_q\;
\BANCO_REG|ALT_INV_registrador~46_q\ <= NOT \BANCO_REG|registrador~46_q\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\BANCO_REG|ALT_INV_registrador~301_q\ <= NOT \BANCO_REG|registrador~301_q\;
\BANCO_REG|ALT_INV_registrador~45_q\ <= NOT \BANCO_REG|registrador~45_q\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\BANCO_REG|ALT_INV_registrador~300_q\ <= NOT \BANCO_REG|registrador~300_q\;
\BANCO_REG|ALT_INV_registrador~44_q\ <= NOT \BANCO_REG|registrador~44_q\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\BANCO_REG|ALT_INV_registrador~299_q\ <= NOT \BANCO_REG|registrador~299_q\;
\BANCO_REG|ALT_INV_registrador~43_q\ <= NOT \BANCO_REG|registrador~43_q\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\BANCO_REG|ALT_INV_registrador~298_q\ <= NOT \BANCO_REG|registrador~298_q\;
\BANCO_REG|ALT_INV_registrador~42_q\ <= NOT \BANCO_REG|registrador~42_q\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\BANCO_REG|ALT_INV_registrador~41_q\ <= NOT \BANCO_REG|registrador~41_q\;
\BANCO_REG|ALT_INV_registrador~297_q\ <= NOT \BANCO_REG|registrador~297_q\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\BANCO_REG|ALT_INV_registrador~296_q\ <= NOT \BANCO_REG|registrador~296_q\;
\BANCO_REG|ALT_INV_registrador~40_q\ <= NOT \BANCO_REG|registrador~40_q\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\BANCO_REG|ALT_INV_registrador~295_q\ <= NOT \BANCO_REG|registrador~295_q\;
\BANCO_REG|ALT_INV_registrador~39_q\ <= NOT \BANCO_REG|registrador~39_q\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\BANCO_REG|ALT_INV_registrador~294_q\ <= NOT \BANCO_REG|registrador~294_q\;
\BANCO_REG|ALT_INV_registrador~38_q\ <= NOT \BANCO_REG|registrador~38_q\;
\BANCO_REG|ALT_INV_saidaA[0]~0_combout\ <= NOT \BANCO_REG|saidaA[0]~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\ULA1|ALT_INV_Add0~125_sumout\ <= NOT \ULA1|Add0~125_sumout\;
\BANCO_REG|ALT_INV_registrador~325_q\ <= NOT \BANCO_REG|registrador~325_q\;
\BANCO_REG|ALT_INV_registrador~69_q\ <= NOT \BANCO_REG|registrador~69_q\;
\ULA1|ALT_INV_Add0~121_sumout\ <= NOT \ULA1|Add0~121_sumout\;
\BANCO_REG|ALT_INV_registrador~324_q\ <= NOT \BANCO_REG|registrador~324_q\;
\BANCO_REG|ALT_INV_registrador~68_q\ <= NOT \BANCO_REG|registrador~68_q\;
\ULA1|ALT_INV_Add0~117_sumout\ <= NOT \ULA1|Add0~117_sumout\;
\BANCO_REG|ALT_INV_registrador~323_q\ <= NOT \BANCO_REG|registrador~323_q\;
\BANCO_REG|ALT_INV_registrador~67_q\ <= NOT \BANCO_REG|registrador~67_q\;
\ULA1|ALT_INV_Add0~113_sumout\ <= NOT \ULA1|Add0~113_sumout\;
\BANCO_REG|ALT_INV_registrador~322_q\ <= NOT \BANCO_REG|registrador~322_q\;
\BANCO_REG|ALT_INV_registrador~66_q\ <= NOT \BANCO_REG|registrador~66_q\;
\ULA1|ALT_INV_Add0~109_sumout\ <= NOT \ULA1|Add0~109_sumout\;
\BANCO_REG|ALT_INV_registrador~321_q\ <= NOT \BANCO_REG|registrador~321_q\;
\BANCO_REG|ALT_INV_registrador~65_q\ <= NOT \BANCO_REG|registrador~65_q\;
\ULA1|ALT_INV_Add0~105_sumout\ <= NOT \ULA1|Add0~105_sumout\;
\BANCO_REG|ALT_INV_registrador~320_q\ <= NOT \BANCO_REG|registrador~320_q\;
\BANCO_REG|ALT_INV_registrador~64_q\ <= NOT \BANCO_REG|registrador~64_q\;
\ULA1|ALT_INV_Add0~101_sumout\ <= NOT \ULA1|Add0~101_sumout\;
\BANCO_REG|ALT_INV_registrador~319_q\ <= NOT \BANCO_REG|registrador~319_q\;
\BANCO_REG|ALT_INV_registrador~63_q\ <= NOT \BANCO_REG|registrador~63_q\;
\ULA1|ALT_INV_Add0~97_sumout\ <= NOT \ULA1|Add0~97_sumout\;
\BANCO_REG|ALT_INV_registrador~318_q\ <= NOT \BANCO_REG|registrador~318_q\;
\BANCO_REG|ALT_INV_registrador~62_q\ <= NOT \BANCO_REG|registrador~62_q\;
\ULA1|ALT_INV_Add0~93_sumout\ <= NOT \ULA1|Add0~93_sumout\;
\BANCO_REG|ALT_INV_registrador~317_q\ <= NOT \BANCO_REG|registrador~317_q\;
\BANCO_REG|ALT_INV_registrador~61_q\ <= NOT \BANCO_REG|registrador~61_q\;
\ULA1|ALT_INV_Add0~89_sumout\ <= NOT \ULA1|Add0~89_sumout\;
\BANCO_REG|ALT_INV_registrador~316_q\ <= NOT \BANCO_REG|registrador~316_q\;
\BANCO_REG|ALT_INV_registrador~60_q\ <= NOT \BANCO_REG|registrador~60_q\;
\ULA1|ALT_INV_Add0~85_sumout\ <= NOT \ULA1|Add0~85_sumout\;
\BANCO_REG|ALT_INV_registrador~315_q\ <= NOT \BANCO_REG|registrador~315_q\;
\BANCO_REG|ALT_INV_registrador~59_q\ <= NOT \BANCO_REG|registrador~59_q\;
\ULA1|ALT_INV_Add0~81_sumout\ <= NOT \ULA1|Add0~81_sumout\;
\BANCO_REG|ALT_INV_registrador~314_q\ <= NOT \BANCO_REG|registrador~314_q\;
\BANCO_REG|ALT_INV_registrador~58_q\ <= NOT \BANCO_REG|registrador~58_q\;
\ULA1|ALT_INV_Add0~77_sumout\ <= NOT \ULA1|Add0~77_sumout\;
\BANCO_REG|ALT_INV_registrador~313_q\ <= NOT \BANCO_REG|registrador~313_q\;
\BANCO_REG|ALT_INV_registrador~57_q\ <= NOT \BANCO_REG|registrador~57_q\;
\ULA1|ALT_INV_Add0~73_sumout\ <= NOT \ULA1|Add0~73_sumout\;
\BANCO_REG|ALT_INV_registrador~312_q\ <= NOT \BANCO_REG|registrador~312_q\;
\BANCO_REG|ALT_INV_saidaB[31]~31_combout\ <= NOT \BANCO_REG|saidaB[31]~31_combout\;
\BANCO_REG|ALT_INV_registrador~1094_combout\ <= NOT \BANCO_REG|registrador~1094_combout\;
\BANCO_REG|ALT_INV_saidaB[30]~30_combout\ <= NOT \BANCO_REG|saidaB[30]~30_combout\;
\BANCO_REG|ALT_INV_registrador~1093_combout\ <= NOT \BANCO_REG|registrador~1093_combout\;
\BANCO_REG|ALT_INV_saidaB[29]~29_combout\ <= NOT \BANCO_REG|saidaB[29]~29_combout\;
\BANCO_REG|ALT_INV_registrador~1092_combout\ <= NOT \BANCO_REG|registrador~1092_combout\;
\BANCO_REG|ALT_INV_saidaB[28]~28_combout\ <= NOT \BANCO_REG|saidaB[28]~28_combout\;
\BANCO_REG|ALT_INV_registrador~1091_combout\ <= NOT \BANCO_REG|registrador~1091_combout\;
\BANCO_REG|ALT_INV_saidaB[27]~27_combout\ <= NOT \BANCO_REG|saidaB[27]~27_combout\;
\BANCO_REG|ALT_INV_registrador~1090_combout\ <= NOT \BANCO_REG|registrador~1090_combout\;
\BANCO_REG|ALT_INV_saidaB[26]~26_combout\ <= NOT \BANCO_REG|saidaB[26]~26_combout\;
\BANCO_REG|ALT_INV_registrador~1089_combout\ <= NOT \BANCO_REG|registrador~1089_combout\;
\BANCO_REG|ALT_INV_saidaB[25]~25_combout\ <= NOT \BANCO_REG|saidaB[25]~25_combout\;
\BANCO_REG|ALT_INV_registrador~1088_combout\ <= NOT \BANCO_REG|registrador~1088_combout\;
\BANCO_REG|ALT_INV_saidaB[24]~24_combout\ <= NOT \BANCO_REG|saidaB[24]~24_combout\;
\BANCO_REG|ALT_INV_registrador~1087_combout\ <= NOT \BANCO_REG|registrador~1087_combout\;
\BANCO_REG|ALT_INV_saidaB[23]~23_combout\ <= NOT \BANCO_REG|saidaB[23]~23_combout\;
\BANCO_REG|ALT_INV_registrador~1086_combout\ <= NOT \BANCO_REG|registrador~1086_combout\;
\BANCO_REG|ALT_INV_saidaB[22]~22_combout\ <= NOT \BANCO_REG|saidaB[22]~22_combout\;
\BANCO_REG|ALT_INV_registrador~1085_combout\ <= NOT \BANCO_REG|registrador~1085_combout\;
\BANCO_REG|ALT_INV_saidaB[21]~21_combout\ <= NOT \BANCO_REG|saidaB[21]~21_combout\;
\BANCO_REG|ALT_INV_registrador~1084_combout\ <= NOT \BANCO_REG|registrador~1084_combout\;
\BANCO_REG|ALT_INV_saidaB[20]~20_combout\ <= NOT \BANCO_REG|saidaB[20]~20_combout\;
\BANCO_REG|ALT_INV_registrador~1083_combout\ <= NOT \BANCO_REG|registrador~1083_combout\;
\BANCO_REG|ALT_INV_saidaB[19]~19_combout\ <= NOT \BANCO_REG|saidaB[19]~19_combout\;
\BANCO_REG|ALT_INV_registrador~1082_combout\ <= NOT \BANCO_REG|registrador~1082_combout\;
\BANCO_REG|ALT_INV_saidaB[18]~18_combout\ <= NOT \BANCO_REG|saidaB[18]~18_combout\;
\BANCO_REG|ALT_INV_registrador~1081_combout\ <= NOT \BANCO_REG|registrador~1081_combout\;
\BANCO_REG|ALT_INV_saidaB[17]~17_combout\ <= NOT \BANCO_REG|saidaB[17]~17_combout\;
\BANCO_REG|ALT_INV_registrador~1080_combout\ <= NOT \BANCO_REG|registrador~1080_combout\;
\BANCO_REG|ALT_INV_saidaB[16]~16_combout\ <= NOT \BANCO_REG|saidaB[16]~16_combout\;
\BANCO_REG|ALT_INV_registrador~1079_combout\ <= NOT \BANCO_REG|registrador~1079_combout\;
\BANCO_REG|ALT_INV_saidaB[15]~15_combout\ <= NOT \BANCO_REG|saidaB[15]~15_combout\;
\BANCO_REG|ALT_INV_registrador~1078_combout\ <= NOT \BANCO_REG|registrador~1078_combout\;
\BANCO_REG|ALT_INV_saidaB[14]~14_combout\ <= NOT \BANCO_REG|saidaB[14]~14_combout\;
\BANCO_REG|ALT_INV_registrador~1077_combout\ <= NOT \BANCO_REG|registrador~1077_combout\;
\BANCO_REG|ALT_INV_saidaB[13]~13_combout\ <= NOT \BANCO_REG|saidaB[13]~13_combout\;
\BANCO_REG|ALT_INV_registrador~1076_combout\ <= NOT \BANCO_REG|registrador~1076_combout\;
\BANCO_REG|ALT_INV_saidaB[12]~12_combout\ <= NOT \BANCO_REG|saidaB[12]~12_combout\;
\BANCO_REG|ALT_INV_registrador~1075_combout\ <= NOT \BANCO_REG|registrador~1075_combout\;
\BANCO_REG|ALT_INV_saidaB[11]~11_combout\ <= NOT \BANCO_REG|saidaB[11]~11_combout\;
\BANCO_REG|ALT_INV_registrador~1074_combout\ <= NOT \BANCO_REG|registrador~1074_combout\;
\BANCO_REG|ALT_INV_saidaB[10]~10_combout\ <= NOT \BANCO_REG|saidaB[10]~10_combout\;
\BANCO_REG|ALT_INV_registrador~1073_combout\ <= NOT \BANCO_REG|registrador~1073_combout\;
\BANCO_REG|ALT_INV_saidaB[9]~9_combout\ <= NOT \BANCO_REG|saidaB[9]~9_combout\;
\BANCO_REG|ALT_INV_registrador~1072_combout\ <= NOT \BANCO_REG|registrador~1072_combout\;
\BANCO_REG|ALT_INV_saidaB[8]~8_combout\ <= NOT \BANCO_REG|saidaB[8]~8_combout\;
\BANCO_REG|ALT_INV_registrador~1071_combout\ <= NOT \BANCO_REG|registrador~1071_combout\;
\BANCO_REG|ALT_INV_saidaB[7]~7_combout\ <= NOT \BANCO_REG|saidaB[7]~7_combout\;
\BANCO_REG|ALT_INV_registrador~1070_combout\ <= NOT \BANCO_REG|registrador~1070_combout\;
\BANCO_REG|ALT_INV_saidaB[6]~6_combout\ <= NOT \BANCO_REG|saidaB[6]~6_combout\;
\BANCO_REG|ALT_INV_registrador~1069_combout\ <= NOT \BANCO_REG|registrador~1069_combout\;
\BANCO_REG|ALT_INV_saidaB[5]~5_combout\ <= NOT \BANCO_REG|saidaB[5]~5_combout\;
\BANCO_REG|ALT_INV_registrador~1068_combout\ <= NOT \BANCO_REG|registrador~1068_combout\;
\BANCO_REG|ALT_INV_saidaB[4]~4_combout\ <= NOT \BANCO_REG|saidaB[4]~4_combout\;
\BANCO_REG|ALT_INV_registrador~1067_combout\ <= NOT \BANCO_REG|registrador~1067_combout\;
\BANCO_REG|ALT_INV_registrador~1066_combout\ <= NOT \BANCO_REG|registrador~1066_combout\;
\BANCO_REG|ALT_INV_saidaB[3]~3_combout\ <= NOT \BANCO_REG|saidaB[3]~3_combout\;
\BANCO_REG|ALT_INV_registrador~1065_combout\ <= NOT \BANCO_REG|registrador~1065_combout\;
\BANCO_REG|ALT_INV_saidaB[2]~2_combout\ <= NOT \BANCO_REG|saidaB[2]~2_combout\;
\BANCO_REG|ALT_INV_registrador~1064_combout\ <= NOT \BANCO_REG|registrador~1064_combout\;
\BANCO_REG|ALT_INV_saidaB[1]~1_combout\ <= NOT \BANCO_REG|saidaB[1]~1_combout\;
\BANCO_REG|ALT_INV_registrador~1063_combout\ <= NOT \BANCO_REG|registrador~1063_combout\;
\BANCO_REG|ALT_INV_saidaB[0]~0_combout\ <= NOT \BANCO_REG|saidaB[0]~0_combout\;
\BANCO_REG|ALT_INV_registrador~1062_combout\ <= NOT \BANCO_REG|registrador~1062_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\BANCO_REG|ALT_INV_Equal0~0_combout\ <= NOT \BANCO_REG|Equal0~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\BANCO_REG|ALT_INV_saidaA[31]~32_combout\ <= NOT \BANCO_REG|saidaA[31]~32_combout\;
\BANCO_REG|ALT_INV_saidaA[30]~31_combout\ <= NOT \BANCO_REG|saidaA[30]~31_combout\;
\BANCO_REG|ALT_INV_saidaA[29]~30_combout\ <= NOT \BANCO_REG|saidaA[29]~30_combout\;
\BANCO_REG|ALT_INV_saidaA[28]~29_combout\ <= NOT \BANCO_REG|saidaA[28]~29_combout\;
\BANCO_REG|ALT_INV_saidaA[27]~28_combout\ <= NOT \BANCO_REG|saidaA[27]~28_combout\;
\BANCO_REG|ALT_INV_saidaA[26]~27_combout\ <= NOT \BANCO_REG|saidaA[26]~27_combout\;
\BANCO_REG|ALT_INV_saidaA[25]~26_combout\ <= NOT \BANCO_REG|saidaA[25]~26_combout\;
\BANCO_REG|ALT_INV_saidaA[24]~25_combout\ <= NOT \BANCO_REG|saidaA[24]~25_combout\;
\BANCO_REG|ALT_INV_saidaA[23]~24_combout\ <= NOT \BANCO_REG|saidaA[23]~24_combout\;
\BANCO_REG|ALT_INV_saidaA[22]~23_combout\ <= NOT \BANCO_REG|saidaA[22]~23_combout\;
\BANCO_REG|ALT_INV_saidaA[21]~22_combout\ <= NOT \BANCO_REG|saidaA[21]~22_combout\;
\BANCO_REG|ALT_INV_saidaA[20]~21_combout\ <= NOT \BANCO_REG|saidaA[20]~21_combout\;
\BANCO_REG|ALT_INV_saidaA[19]~20_combout\ <= NOT \BANCO_REG|saidaA[19]~20_combout\;
\BANCO_REG|ALT_INV_saidaA[18]~19_combout\ <= NOT \BANCO_REG|saidaA[18]~19_combout\;
\BANCO_REG|ALT_INV_saidaA[17]~18_combout\ <= NOT \BANCO_REG|saidaA[17]~18_combout\;
\BANCO_REG|ALT_INV_saidaA[16]~17_combout\ <= NOT \BANCO_REG|saidaA[16]~17_combout\;
\BANCO_REG|ALT_INV_saidaA[15]~16_combout\ <= NOT \BANCO_REG|saidaA[15]~16_combout\;
\BANCO_REG|ALT_INV_saidaA[14]~15_combout\ <= NOT \BANCO_REG|saidaA[14]~15_combout\;
\BANCO_REG|ALT_INV_saidaA[13]~14_combout\ <= NOT \BANCO_REG|saidaA[13]~14_combout\;
\BANCO_REG|ALT_INV_saidaA[12]~13_combout\ <= NOT \BANCO_REG|saidaA[12]~13_combout\;
\BANCO_REG|ALT_INV_saidaA[11]~12_combout\ <= NOT \BANCO_REG|saidaA[11]~12_combout\;
\BANCO_REG|ALT_INV_saidaA[10]~11_combout\ <= NOT \BANCO_REG|saidaA[10]~11_combout\;
\BANCO_REG|ALT_INV_saidaA[9]~10_combout\ <= NOT \BANCO_REG|saidaA[9]~10_combout\;
\BANCO_REG|ALT_INV_saidaA[8]~9_combout\ <= NOT \BANCO_REG|saidaA[8]~9_combout\;
\BANCO_REG|ALT_INV_saidaA[7]~8_combout\ <= NOT \BANCO_REG|saidaA[7]~8_combout\;
\BANCO_REG|ALT_INV_saidaA[6]~7_combout\ <= NOT \BANCO_REG|saidaA[6]~7_combout\;
\BANCO_REG|ALT_INV_saidaA[5]~6_combout\ <= NOT \BANCO_REG|saidaA[5]~6_combout\;
\BANCO_REG|ALT_INV_saidaA[4]~5_combout\ <= NOT \BANCO_REG|saidaA[4]~5_combout\;
\BANCO_REG|ALT_INV_saidaA[3]~4_combout\ <= NOT \BANCO_REG|saidaA[3]~4_combout\;
\BANCO_REG|ALT_INV_saidaA[2]~3_combout\ <= NOT \BANCO_REG|saidaA[2]~3_combout\;
\BANCO_REG|ALT_INV_saidaA[1]~2_combout\ <= NOT \BANCO_REG|saidaA[1]~2_combout\;
\BANCO_REG|ALT_INV_saidaA[0]~1_combout\ <= NOT \BANCO_REG|saidaA[0]~1_combout\;
\ALT_INV_Sel_ULA[0]~input_o\ <= NOT \Sel_ULA[0]~input_o\;
\ALT_INV_Write_Rd~input_o\ <= NOT \Write_Rd~input_o\;
\ALT_INV_Sel_ULA[1]~input_o\ <= NOT \Sel_ULA[1]~input_o\;

\Instru_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instru_opcode[0]~output_o\);

\Instru_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instru_opcode[1]~output_o\);

\Instru_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instru_opcode[2]~output_o\);

\Instru_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instru_opcode[3]~output_o\);

\Instru_opcode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instru_opcode[4]~output_o\);

\Instru_opcode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instru_opcode[5]~output_o\);

\Funct[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \Funct[0]~output_o\);

\Funct[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \Funct[1]~output_o\);

\Funct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \Funct[2]~output_o\);

\Funct[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Funct[3]~output_o\);

\Funct[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Funct[4]~output_o\);

\Funct[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \Funct[5]~output_o\);

\ULAA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[0]~output_o\);

\ULAA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[1]~output_o\);

\ULAA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[2]~output_o\);

\ULAA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[3]~output_o\);

\ULAA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[4]~output_o\);

\ULAA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[5]~output_o\);

\ULAA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[6]~output_o\);

\ULAA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[7]~output_o\);

\ULAA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[8]~8_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[8]~output_o\);

\ULAA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[9]~9_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[9]~output_o\);

\ULAA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[10]~10_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[10]~output_o\);

\ULAA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[11]~11_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[11]~output_o\);

\ULAA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[12]~12_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[12]~output_o\);

\ULAA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[13]~13_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[13]~output_o\);

\ULAA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[14]~14_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[14]~output_o\);

\ULAA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[15]~15_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[15]~output_o\);

\ULAA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[16]~16_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[16]~output_o\);

\ULAA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[17]~17_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[17]~output_o\);

\ULAA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[18]~18_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[18]~output_o\);

\ULAA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[19]~19_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[19]~output_o\);

\ULAA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[20]~20_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[20]~output_o\);

\ULAA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[21]~21_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[21]~output_o\);

\ULAA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[22]~22_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[22]~output_o\);

\ULAA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[23]~23_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[23]~output_o\);

\ULAA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[24]~24_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[24]~output_o\);

\ULAA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[25]~25_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[25]~output_o\);

\ULAA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[26]~26_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[26]~output_o\);

\ULAA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[27]~27_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[27]~output_o\);

\ULAA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[28]~28_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[28]~output_o\);

\ULAA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[29]~29_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[29]~output_o\);

\ULAA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[30]~30_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[30]~output_o\);

\ULAA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[31]~31_combout\,
	devoe => ww_devoe,
	o => \ULAA_OUT[31]~output_o\);

\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[0]~1_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[0]~output_o\);

\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[1]~2_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[1]~output_o\);

\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[2]~3_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[2]~output_o\);

\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[3]~4_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[3]~output_o\);

\RS_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[4]~5_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[4]~output_o\);

\RS_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[5]~6_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[5]~output_o\);

\RS_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[6]~7_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[6]~output_o\);

\RS_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[7]~8_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[7]~output_o\);

\RS_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[8]~9_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[8]~output_o\);

\RS_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[9]~10_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[9]~output_o\);

\RS_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[10]~11_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[10]~output_o\);

\RS_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[11]~12_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[11]~output_o\);

\RS_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[12]~13_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[12]~output_o\);

\RS_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[13]~14_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[13]~output_o\);

\RS_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[14]~15_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[14]~output_o\);

\RS_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[15]~16_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[15]~output_o\);

\RS_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[16]~17_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[16]~output_o\);

\RS_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[17]~18_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[17]~output_o\);

\RS_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[18]~19_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[18]~output_o\);

\RS_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[19]~20_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[19]~output_o\);

\RS_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[20]~21_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[20]~output_o\);

\RS_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[21]~22_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[21]~output_o\);

\RS_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[22]~23_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[22]~output_o\);

\RS_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[23]~24_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[23]~output_o\);

\RS_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[24]~25_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[24]~output_o\);

\RS_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[25]~26_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[25]~output_o\);

\RS_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[26]~27_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[26]~output_o\);

\RS_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[27]~28_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[27]~output_o\);

\RS_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[28]~29_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[28]~output_o\);

\RS_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[29]~30_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[29]~output_o\);

\RS_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[30]~31_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[30]~output_o\);

\RS_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[31]~32_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[31]~output_o\);

\RT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[0]~output_o\);

\RT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[1]~output_o\);

\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[2]~output_o\);

\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[3]~output_o\);

\RT_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[4]~output_o\);

\RT_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[5]~output_o\);

\RT_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[6]~output_o\);

\RT_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[7]~output_o\);

\RT_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[8]~output_o\);

\RT_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[9]~output_o\);

\RT_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[10]~output_o\);

\RT_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[11]~output_o\);

\RT_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[12]~output_o\);

\RT_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[13]~output_o\);

\RT_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[14]~output_o\);

\RT_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[15]~output_o\);

\RT_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[16]~output_o\);

\RT_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[17]~output_o\);

\RT_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[18]~output_o\);

\RT_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[19]~output_o\);

\RT_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[20]~output_o\);

\RT_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[21]~output_o\);

\RT_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[22]~output_o\);

\RT_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[23]~output_o\);

\RT_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[24]~output_o\);

\RT_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[25]~output_o\);

\RT_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[26]~output_o\);

\RT_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[27]~output_o\);

\RT_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[28]~output_o\);

\RT_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[29]~output_o\);

\RT_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[30]~output_o\);

\RT_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[31]~output_o\);

\Rs_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \Rs_End[0]~output_o\);

\Rs_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rs_End[1]~output_o\);

\Rs_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rs_End[2]~output_o\);

\Rs_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \Rs_End[3]~output_o\);

\Rs_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rs_End[4]~output_o\);

\Rt_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => \Rt_End[0]~output_o\);

\Rt_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => \Rt_End[1]~output_o\);

\Rt_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => \Rt_End[2]~output_o\);

\Rt_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \Rt_End[3]~output_o\);

\Rt_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rt_End[4]~output_o\);

\Rd_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rd_End[0]~output_o\);

\Rd_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rd_End[1]~output_o\);

\Rd_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rd_End[2]~output_o\);

\Rd_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \Rd_End[3]~output_o\);

\Rd_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Rd_End[4]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PC_OUT[9]~output_o\);

\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PC_OUT[10]~output_o\);

\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PC_OUT[11]~output_o\);

\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT[12]~output_o\);

\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PC_OUT[13]~output_o\);

\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PC_OUT[14]~output_o\);

\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PC_OUT[15]~output_o\);

\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PC_OUT[16]~output_o\);

\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PC_OUT[17]~output_o\);

\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PC_OUT[18]~output_o\);

\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PC_OUT[19]~output_o\);

\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PC_OUT[20]~output_o\);

\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PC_OUT[21]~output_o\);

\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PC_OUT[22]~output_o\);

\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PC_OUT[23]~output_o\);

\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PC_OUT[24]~output_o\);

\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PC_OUT[25]~output_o\);

\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PC_OUT[26]~output_o\);

\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PC_OUT[27]~output_o\);

\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PC_OUT[28]~output_o\);

\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PC_OUT[29]~output_o\);

\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PC_OUT[30]~output_o\);

\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PC_OUT[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\Somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~17_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \Somador|Add0~18\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \Somador|Add0~17_sumout\,
	cout => \Somador|Add0~18\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\Somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~18\ ))
-- \Somador|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \Somador|Add0~18\,
	sumout => \Somador|Add0~5_sumout\,
	cout => \Somador|Add0~6\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\Somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~1_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~6\ ))
-- \Somador|Add0~2\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \Somador|Add0~6\,
	sumout => \Somador|Add0~1_sumout\,
	cout => \Somador|Add0~2\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\Somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~13_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~2\ ))
-- \Somador|Add0~14\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \Somador|Add0~2\,
	sumout => \Somador|Add0~13_sumout\,
	cout => \Somador|Add0~14\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\Somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~9_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~14\ ))
-- \Somador|Add0~10\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \Somador|Add0~14\,
	sumout => \Somador|Add0~9_sumout\,
	cout => \Somador|Add0~10\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\BANCO_REG|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[0]~0_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & (!\PC|DOUT\(7) & !\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|saidaA[0]~0_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (\PC|DOUT\(2) & \BANCO_REG|saidaA[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	combout => \ROM1|memROM~0_combout\);

\Sel_ULA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(1),
	o => \Sel_ULA[1]~input_o\);

\BANCO_REG|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|Equal0~0_combout\ = (((\PC|DOUT\(4)) # (\PC|DOUT\(5))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	combout => \BANCO_REG|Equal0~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (((\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~1_combout\);

\Write_Rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write_Rd,
	o => \Write_Rd~input_o\);

\BANCO_REG|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1096_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & \Write_Rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ALT_INV_Write_Rd~input_o\,
	combout => \BANCO_REG|registrador~1096_combout\);

\BANCO_REG|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \BANCO_REG|saidaB[0]~0_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~294_q\);

\BANCO_REG|saidaA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[0]~1_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~294_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~294_q\,
	combout => \BANCO_REG|saidaA[0]~1_combout\);

\Sel_ULA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(0),
	o => \Sel_ULA[0]~input_o\);

\ULA1|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~130_cout\ = CARRY(( (!\Sel_ULA[0]~input_o\) # (\Sel_ULA[1]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \ALT_INV_Sel_ULA[0]~input_o\,
	cin => GND,
	cout => \ULA1|Add0~130_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \BANCO_REG|saidaA[0]~1_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1062_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1062_combout\)) # (\BANCO_REG|Equal0~0_combout\))) ) + ( \ULA1|Add0~130_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \BANCO_REG|saidaA[0]~1_combout\ ) + ( (!\Sel_ULA[1]~input_o\ & (!\Sel_ULA[0]~input_o\ $ (((!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1062_combout\))))) # (\Sel_ULA[1]~input_o\ & 
-- (((!\BANCO_REG|registrador~1062_combout\)) # (\BANCO_REG|Equal0~0_combout\))) ) + ( \ULA1|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[0]~1_combout\,
	dataf => \ALT_INV_Sel_ULA[0]~input_o\,
	cin => \ULA1|Add0~130_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\BANCO_REG|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1095_combout\ = (!\BANCO_REG|saidaA[0]~0_combout\ & \Write_Rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ALT_INV_Write_Rd~input_o\,
	combout => \BANCO_REG|registrador~1095_combout\);

\BANCO_REG|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \BANCO_REG|saidaB[0]~0_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~38_q\);

\BANCO_REG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1062_combout\ = ( \BANCO_REG|registrador~38_q\ & ( \BANCO_REG|registrador~294_q\ & ( (!\BANCO_REG|saidaA[0]~0_combout\ & (((\ROM1|memROM~1_combout\)))) # (\BANCO_REG|saidaA[0]~0_combout\ & ((!\PC|DOUT\(3)) # ((\PC|DOUT\(2) & 
-- \ROM1|memROM~1_combout\)))) ) ) ) # ( !\BANCO_REG|registrador~38_q\ & ( \BANCO_REG|registrador~294_q\ & ( (\BANCO_REG|saidaA[0]~0_combout\ & ((!\PC|DOUT\(3)) # ((\PC|DOUT\(2) & \ROM1|memROM~1_combout\)))) ) ) ) # ( \BANCO_REG|registrador~38_q\ & ( 
-- !\BANCO_REG|registrador~294_q\ & ( (!\BANCO_REG|saidaA[0]~0_combout\ & (((\ROM1|memROM~1_combout\)))) # (\BANCO_REG|saidaA[0]~0_combout\ & ((!\PC|DOUT\(3) & ((!\ROM1|memROM~1_combout\))) # (\PC|DOUT\(3) & (\PC|DOUT\(2) & \ROM1|memROM~1_combout\)))) ) ) ) 
-- # ( !\BANCO_REG|registrador~38_q\ & ( !\BANCO_REG|registrador~294_q\ & ( (\BANCO_REG|saidaA[0]~0_combout\ & ((!\PC|DOUT\(3) & ((!\ROM1|memROM~1_combout\))) # (\PC|DOUT\(3) & (\PC|DOUT\(2) & \ROM1|memROM~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000001001100001100110100110000001100010011000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \BANCO_REG|ALT_INV_registrador~38_q\,
	dataf => \BANCO_REG|ALT_INV_registrador~294_q\,
	combout => \BANCO_REG|registrador~1062_combout\);

\BANCO_REG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[0]~0_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1062_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1062_combout\,
	combout => \BANCO_REG|saidaB[0]~0_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~1_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[0]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\BANCO_REG|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \BANCO_REG|saidaB[1]~1_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~295_q\);

\BANCO_REG|saidaA[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[1]~2_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))) # (\BANCO_REG|registrador~295_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110011001000000011001100100000001100110010000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~295_q\,
	combout => \BANCO_REG|saidaA[1]~2_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \BANCO_REG|saidaA[1]~2_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|Equal0~0_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \BANCO_REG|saidaA[1]~2_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|Equal0~0_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1063_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[1]~2_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1063_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|Add0~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_wirecell_combout\ = !\ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|Add0~5_wirecell_combout\);

\BANCO_REG|saidaB[1]~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[1]~1_wirecell_combout\ = !\BANCO_REG|saidaB[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[1]~1_combout\,
	combout => \BANCO_REG|saidaB[1]~1_wirecell_combout\);

\BANCO_REG|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~5_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[1]~1_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~39_q\);

\BANCO_REG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1063_combout\ = ( \PC|DOUT\(7) & ( \PC|DOUT\(6) & ( !\BANCO_REG|registrador~39_q\ ) ) ) # ( !\PC|DOUT\(7) & ( \PC|DOUT\(6) & ( !\BANCO_REG|registrador~39_q\ ) ) ) # ( \PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( !\BANCO_REG|registrador~39_q\ 
-- ) ) ) # ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(5) & ((!\PC|DOUT\(4) & (!\PC|DOUT\(3))) # (\PC|DOUT\(4) & ((!\BANCO_REG|registrador~39_q\))))) # (\PC|DOUT\(5) & (((!\BANCO_REG|registrador~39_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REG|ALT_INV_registrador~39_q\,
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1063_combout\);

\BANCO_REG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[1]~1_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1063_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1063_combout\,
	combout => \BANCO_REG|saidaB[1]~1_combout\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~5_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[1]~1_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\BANCO_REG|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \BANCO_REG|saidaB[2]~2_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~296_q\);

\BANCO_REG|saidaA[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[2]~3_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~296_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~296_q\,
	combout => \BANCO_REG|saidaA[2]~3_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \BANCO_REG|saidaA[2]~3_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|Equal0~0_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \BANCO_REG|saidaA[2]~3_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|Equal0~0_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1064_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[2]~3_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1064_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\BANCO_REG|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \BANCO_REG|saidaB[2]~2_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~40_q\);

\BANCO_REG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1064_combout\ = ( \PC|DOUT\(7) & ( \PC|DOUT\(6) & ( \BANCO_REG|registrador~40_q\ ) ) ) # ( !\PC|DOUT\(7) & ( \PC|DOUT\(6) & ( \BANCO_REG|registrador~40_q\ ) ) ) # ( \PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( \BANCO_REG|registrador~40_q\ ) ) 
-- ) # ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(5) & ((!\PC|DOUT\(4) & (\PC|DOUT\(3))) # (\PC|DOUT\(4) & ((\BANCO_REG|registrador~40_q\))))) # (\PC|DOUT\(5) & (((\BANCO_REG|registrador~40_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REG|ALT_INV_registrador~40_q\,
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1064_combout\);

\BANCO_REG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[2]~2_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1064_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1064_combout\,
	combout => \BANCO_REG|saidaB[2]~2_combout\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~9_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[2]~2_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\BANCO_REG|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \BANCO_REG|saidaB[3]~3_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~297_q\);

\BANCO_REG|saidaA[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[3]~4_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))) # (\BANCO_REG|registrador~297_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110011001000000011001100100000001100110010000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~297_q\,
	combout => \BANCO_REG|saidaA[3]~4_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \BANCO_REG|saidaA[3]~4_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1065_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \BANCO_REG|saidaA[3]~4_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1065_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1065_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[3]~4_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1065_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|Add0~13_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_wirecell_combout\ = !\ULA1|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|Add0~13_wirecell_combout\);

\BANCO_REG|saidaB[3]~3_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[3]~3_wirecell_combout\ = !\BANCO_REG|saidaB[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[3]~3_combout\,
	combout => \BANCO_REG|saidaB[3]~3_wirecell_combout\);

\BANCO_REG|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~13_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[3]~3_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~41_q\);

\BANCO_REG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1065_combout\ = ( \PC|DOUT\(6) & ( !\BANCO_REG|registrador~41_q\ ) ) # ( !\PC|DOUT\(6) & ( (!\BANCO_REG|registrador~41_q\) # ((!\PC|DOUT\(5) & (!\PC|DOUT\(4) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010101010101010101011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~41_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1065_combout\);

\BANCO_REG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[3]~3_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1065_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1065_combout\,
	combout => \BANCO_REG|saidaB[3]~3_combout\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~13_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[3]~3_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\BANCO_REG|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \BANCO_REG|saidaB[4]~4_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~298_q\);

\BANCO_REG|saidaA[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[4]~5_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~298_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~298_q\,
	combout => \BANCO_REG|saidaA[4]~5_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \BANCO_REG|saidaA[4]~5_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1067_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \BANCO_REG|saidaA[4]~5_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1067_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1067_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[4]~5_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1067_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\BANCO_REG|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \BANCO_REG|saidaB[4]~4_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~42_q\);

\BANCO_REG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1067_combout\ = ( \PC|DOUT\(6) & ( \BANCO_REG|registrador~42_q\ ) ) # ( !\PC|DOUT\(6) & ( (\BANCO_REG|registrador~42_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010100010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~42_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1067_combout\);

\BANCO_REG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[4]~4_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1067_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1067_combout\,
	combout => \BANCO_REG|saidaB[4]~4_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~17_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[4]~4_combout\,
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\BANCO_REG|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \BANCO_REG|saidaB[5]~5_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~299_q\);

\BANCO_REG|saidaA[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[5]~6_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~299_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~299_q\,
	combout => \BANCO_REG|saidaA[5]~6_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \BANCO_REG|saidaA[5]~6_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1068_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \BANCO_REG|saidaA[5]~6_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1068_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1068_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[5]~6_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1068_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|Add0~21_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_wirecell_combout\ = !\ULA1|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|Add0~21_wirecell_combout\);

\BANCO_REG|saidaB[5]~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[5]~5_wirecell_combout\ = !\BANCO_REG|saidaB[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[5]~5_combout\,
	combout => \BANCO_REG|saidaB[5]~5_wirecell_combout\);

\BANCO_REG|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~21_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[5]~5_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~43_q\);

\BANCO_REG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1068_combout\ = ( \PC|DOUT\(6) & ( !\BANCO_REG|registrador~43_q\ ) ) # ( !\PC|DOUT\(6) & ( (!\BANCO_REG|registrador~43_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~43_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1068_combout\);

\BANCO_REG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[5]~5_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1068_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1068_combout\,
	combout => \BANCO_REG|saidaB[5]~5_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~21_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[5]~5_combout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\BANCO_REG|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \BANCO_REG|saidaB[6]~6_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~300_q\);

\BANCO_REG|saidaA[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[6]~7_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~300_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~300_q\,
	combout => \BANCO_REG|saidaA[6]~7_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \BANCO_REG|saidaA[6]~7_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1069_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \BANCO_REG|saidaA[6]~7_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1069_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1069_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[6]~7_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1069_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\BANCO_REG|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \BANCO_REG|saidaB[6]~6_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~44_q\);

\BANCO_REG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1069_combout\ = ( \PC|DOUT\(6) & ( \BANCO_REG|registrador~44_q\ ) ) # ( !\PC|DOUT\(6) & ( (\BANCO_REG|registrador~44_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010100010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~44_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1069_combout\);

\BANCO_REG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[6]~6_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1069_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1069_combout\,
	combout => \BANCO_REG|saidaB[6]~6_combout\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~25_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[6]~6_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\BANCO_REG|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \BANCO_REG|saidaB[7]~7_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~301_q\);

\BANCO_REG|saidaA[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[7]~8_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~301_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~301_q\,
	combout => \BANCO_REG|saidaA[7]~8_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \BANCO_REG|saidaA[7]~8_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1070_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1070_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( \BANCO_REG|saidaA[7]~8_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1070_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1070_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[7]~8_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1070_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\ULA1|Add0~29_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_wirecell_combout\ = !\ULA1|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|Add0~29_wirecell_combout\);

\BANCO_REG|saidaB[7]~7_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[7]~7_wirecell_combout\ = !\BANCO_REG|saidaB[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[7]~7_combout\,
	combout => \BANCO_REG|saidaB[7]~7_wirecell_combout\);

\BANCO_REG|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~29_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[7]~7_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~45_q\);

\BANCO_REG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1070_combout\ = ( \PC|DOUT\(6) & ( !\BANCO_REG|registrador~45_q\ ) ) # ( !\PC|DOUT\(6) & ( (!\BANCO_REG|registrador~45_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~45_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1070_combout\);

\BANCO_REG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[7]~7_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1070_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1070_combout\,
	combout => \BANCO_REG|saidaB[7]~7_combout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~29_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[7]~7_combout\,
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

\BANCO_REG|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~33_sumout\,
	asdata => \BANCO_REG|saidaB[8]~8_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~302_q\);

\BANCO_REG|saidaA[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[8]~9_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~302_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~302_q\,
	combout => \BANCO_REG|saidaA[8]~9_combout\);

\ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_sumout\ = SUM(( \BANCO_REG|saidaA[8]~9_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1071_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1071_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~34\ = CARRY(( \BANCO_REG|saidaA[8]~9_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1071_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1071_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[8]~9_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1071_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~33_sumout\,
	cout => \ULA1|Add0~34\);

\BANCO_REG|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~33_sumout\,
	asdata => \BANCO_REG|saidaB[8]~8_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~46_q\);

\BANCO_REG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1071_combout\ = ( \PC|DOUT\(6) & ( \BANCO_REG|registrador~46_q\ ) ) # ( !\PC|DOUT\(6) & ( (\BANCO_REG|registrador~46_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010100010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~46_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1071_combout\);

\BANCO_REG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[8]~8_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1071_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1071_combout\,
	combout => \BANCO_REG|saidaB[8]~8_combout\);

\ULA1|saida[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[8]~8_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~33_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[8]~8_combout\,
	datac => \ULA1|ALT_INV_Add0~33_sumout\,
	combout => \ULA1|saida[8]~8_combout\);

\BANCO_REG|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~37_sumout\,
	asdata => \BANCO_REG|saidaB[9]~9_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~303_q\);

\BANCO_REG|saidaA[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[9]~10_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~303_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~303_q\,
	combout => \BANCO_REG|saidaA[9]~10_combout\);

\ULA1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_sumout\ = SUM(( \BANCO_REG|saidaA[9]~10_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1072_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~34\ ))
-- \ULA1|Add0~38\ = CARRY(( \BANCO_REG|saidaA[9]~10_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1072_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1072_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[9]~10_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1072_combout\,
	cin => \ULA1|Add0~34\,
	sumout => \ULA1|Add0~37_sumout\,
	cout => \ULA1|Add0~38\);

\ULA1|Add0~37_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_wirecell_combout\ = !\ULA1|Add0~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \ULA1|Add0~37_wirecell_combout\);

\BANCO_REG|saidaB[9]~9_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[9]~9_wirecell_combout\ = !\BANCO_REG|saidaB[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[9]~9_combout\,
	combout => \BANCO_REG|saidaB[9]~9_wirecell_combout\);

\BANCO_REG|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~37_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[9]~9_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~47_q\);

\BANCO_REG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1072_combout\ = ( \PC|DOUT\(6) & ( !\BANCO_REG|registrador~47_q\ ) ) # ( !\PC|DOUT\(6) & ( (!\BANCO_REG|registrador~47_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~47_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1072_combout\);

\BANCO_REG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[9]~9_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1072_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1072_combout\,
	combout => \BANCO_REG|saidaB[9]~9_combout\);

\ULA1|saida[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[9]~9_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~37_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[9]~9_combout\,
	datac => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \ULA1|saida[9]~9_combout\);

\BANCO_REG|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~41_sumout\,
	asdata => \BANCO_REG|saidaB[10]~10_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~304_q\);

\BANCO_REG|saidaA[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[10]~11_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~304_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~304_q\,
	combout => \BANCO_REG|saidaA[10]~11_combout\);

\ULA1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~41_sumout\ = SUM(( \BANCO_REG|saidaA[10]~11_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1073_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1073_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~38\ ))
-- \ULA1|Add0~42\ = CARRY(( \BANCO_REG|saidaA[10]~11_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1073_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1073_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[10]~11_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1073_combout\,
	cin => \ULA1|Add0~38\,
	sumout => \ULA1|Add0~41_sumout\,
	cout => \ULA1|Add0~42\);

\BANCO_REG|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~41_sumout\,
	asdata => \BANCO_REG|saidaB[10]~10_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~48_q\);

\BANCO_REG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1073_combout\ = ( \PC|DOUT\(6) & ( \BANCO_REG|registrador~48_q\ ) ) # ( !\PC|DOUT\(6) & ( (\BANCO_REG|registrador~48_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010100010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~48_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1073_combout\);

\BANCO_REG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[10]~10_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1073_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1073_combout\,
	combout => \BANCO_REG|saidaB[10]~10_combout\);

\ULA1|saida[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[10]~10_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~41_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[10]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[10]~10_combout\,
	datac => \ULA1|ALT_INV_Add0~41_sumout\,
	combout => \ULA1|saida[10]~10_combout\);

\BANCO_REG|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~45_sumout\,
	asdata => \BANCO_REG|saidaB[11]~11_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~305_q\);

\BANCO_REG|saidaA[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[11]~12_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~305_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~305_q\,
	combout => \BANCO_REG|saidaA[11]~12_combout\);

\ULA1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_sumout\ = SUM(( \BANCO_REG|saidaA[11]~12_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1074_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~42\ ))
-- \ULA1|Add0~46\ = CARRY(( \BANCO_REG|saidaA[11]~12_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1074_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1074_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[11]~12_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1074_combout\,
	cin => \ULA1|Add0~42\,
	sumout => \ULA1|Add0~45_sumout\,
	cout => \ULA1|Add0~46\);

\ULA1|Add0~45_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_wirecell_combout\ = !\ULA1|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~45_sumout\,
	combout => \ULA1|Add0~45_wirecell_combout\);

\BANCO_REG|saidaB[11]~11_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[11]~11_wirecell_combout\ = !\BANCO_REG|saidaB[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[11]~11_combout\,
	combout => \BANCO_REG|saidaB[11]~11_wirecell_combout\);

\BANCO_REG|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~45_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[11]~11_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~49_q\);

\BANCO_REG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1074_combout\ = ( \PC|DOUT\(6) & ( !\BANCO_REG|registrador~49_q\ ) ) # ( !\PC|DOUT\(6) & ( (!\BANCO_REG|registrador~49_q\ & (((\PC|DOUT\(7)) # (\PC|DOUT\(4))) # (\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_registrador~49_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REG|registrador~1074_combout\);

\BANCO_REG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[11]~11_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1074_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1074_combout\,
	combout => \BANCO_REG|saidaB[11]~11_combout\);

\ULA1|saida[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[11]~11_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~45_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[11]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[11]~11_combout\,
	datac => \ULA1|ALT_INV_Add0~45_sumout\,
	combout => \ULA1|saida[11]~11_combout\);

\BANCO_REG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1066_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	combout => \BANCO_REG|registrador~1066_combout\);

\BANCO_REG|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~49_sumout\,
	asdata => \BANCO_REG|saidaB[12]~12_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~306_q\);

\BANCO_REG|saidaA[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[12]~13_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~306_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~306_q\,
	combout => \BANCO_REG|saidaA[12]~13_combout\);

\ULA1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~49_sumout\ = SUM(( \BANCO_REG|saidaA[12]~13_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1075_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~46\ ))
-- \ULA1|Add0~50\ = CARRY(( \BANCO_REG|saidaA[12]~13_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1075_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1075_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[12]~13_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1075_combout\,
	cin => \ULA1|Add0~46\,
	sumout => \ULA1|Add0~49_sumout\,
	cout => \ULA1|Add0~50\);

\BANCO_REG|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~49_sumout\,
	asdata => \BANCO_REG|saidaB[12]~12_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~50_q\);

\BANCO_REG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1075_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~50_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~306_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~50_q\,
	datad => \BANCO_REG|ALT_INV_registrador~306_q\,
	combout => \BANCO_REG|registrador~1075_combout\);

\BANCO_REG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[12]~12_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1075_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1075_combout\,
	combout => \BANCO_REG|saidaB[12]~12_combout\);

\ULA1|saida[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[12]~12_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~49_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[12]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[12]~12_combout\,
	datac => \ULA1|ALT_INV_Add0~49_sumout\,
	combout => \ULA1|saida[12]~12_combout\);

\BANCO_REG|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~53_sumout\,
	asdata => \BANCO_REG|saidaB[13]~13_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~307_q\);

\BANCO_REG|saidaA[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[13]~14_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~307_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~307_q\,
	combout => \BANCO_REG|saidaA[13]~14_combout\);

\ULA1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_sumout\ = SUM(( \BANCO_REG|saidaA[13]~14_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1076_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~50\ ))
-- \ULA1|Add0~54\ = CARRY(( \BANCO_REG|saidaA[13]~14_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1076_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1076_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[13]~14_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1076_combout\,
	cin => \ULA1|Add0~50\,
	sumout => \ULA1|Add0~53_sumout\,
	cout => \ULA1|Add0~54\);

\ULA1|Add0~53_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_wirecell_combout\ = !\ULA1|Add0~53_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~53_sumout\,
	combout => \ULA1|Add0~53_wirecell_combout\);

\BANCO_REG|saidaB[13]~13_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[13]~13_wirecell_combout\ = !\BANCO_REG|saidaB[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[13]~13_combout\,
	combout => \BANCO_REG|saidaB[13]~13_wirecell_combout\);

\BANCO_REG|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~53_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[13]~13_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~51_q\);

\BANCO_REG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1076_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~51_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~307_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~51_q\,
	datad => \BANCO_REG|ALT_INV_registrador~307_q\,
	combout => \BANCO_REG|registrador~1076_combout\);

\BANCO_REG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[13]~13_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1076_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1076_combout\,
	combout => \BANCO_REG|saidaB[13]~13_combout\);

\ULA1|saida[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[13]~13_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~53_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[13]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[13]~13_combout\,
	datac => \ULA1|ALT_INV_Add0~53_sumout\,
	combout => \ULA1|saida[13]~13_combout\);

\BANCO_REG|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~57_sumout\,
	asdata => \BANCO_REG|saidaB[14]~14_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~308_q\);

\BANCO_REG|saidaA[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[14]~15_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~308_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~308_q\,
	combout => \BANCO_REG|saidaA[14]~15_combout\);

\ULA1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~57_sumout\ = SUM(( \BANCO_REG|saidaA[14]~15_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1077_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~54\ ))
-- \ULA1|Add0~58\ = CARRY(( \BANCO_REG|saidaA[14]~15_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1077_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1077_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[14]~15_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1077_combout\,
	cin => \ULA1|Add0~54\,
	sumout => \ULA1|Add0~57_sumout\,
	cout => \ULA1|Add0~58\);

\BANCO_REG|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~57_sumout\,
	asdata => \BANCO_REG|saidaB[14]~14_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~52_q\);

\BANCO_REG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1077_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~52_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~308_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~52_q\,
	datad => \BANCO_REG|ALT_INV_registrador~308_q\,
	combout => \BANCO_REG|registrador~1077_combout\);

\BANCO_REG|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[14]~14_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1077_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1077_combout\,
	combout => \BANCO_REG|saidaB[14]~14_combout\);

\ULA1|saida[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[14]~14_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~57_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[14]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[14]~14_combout\,
	datac => \ULA1|ALT_INV_Add0~57_sumout\,
	combout => \ULA1|saida[14]~14_combout\);

\BANCO_REG|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~61_sumout\,
	asdata => \BANCO_REG|saidaB[15]~15_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~309_q\);

\BANCO_REG|saidaA[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[15]~16_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~309_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~309_q\,
	combout => \BANCO_REG|saidaA[15]~16_combout\);

\ULA1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_sumout\ = SUM(( \BANCO_REG|saidaA[15]~16_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1078_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1078_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~58\ ))
-- \ULA1|Add0~62\ = CARRY(( \BANCO_REG|saidaA[15]~16_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1078_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1078_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[15]~16_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1078_combout\,
	cin => \ULA1|Add0~58\,
	sumout => \ULA1|Add0~61_sumout\,
	cout => \ULA1|Add0~62\);

\ULA1|Add0~61_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_wirecell_combout\ = !\ULA1|Add0~61_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~61_sumout\,
	combout => \ULA1|Add0~61_wirecell_combout\);

\BANCO_REG|saidaB[15]~15_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[15]~15_wirecell_combout\ = !\BANCO_REG|saidaB[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[15]~15_combout\,
	combout => \BANCO_REG|saidaB[15]~15_wirecell_combout\);

\BANCO_REG|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~61_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[15]~15_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~53_q\);

\BANCO_REG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1078_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~53_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~309_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~53_q\,
	datad => \BANCO_REG|ALT_INV_registrador~309_q\,
	combout => \BANCO_REG|registrador~1078_combout\);

\BANCO_REG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[15]~15_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1078_combout\,
	combout => \BANCO_REG|saidaB[15]~15_combout\);

\ULA1|saida[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[15]~15_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~61_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[15]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[15]~15_combout\,
	datac => \ULA1|ALT_INV_Add0~61_sumout\,
	combout => \ULA1|saida[15]~15_combout\);

\BANCO_REG|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~65_sumout\,
	asdata => \BANCO_REG|saidaB[16]~16_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~310_q\);

\BANCO_REG|saidaA[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[16]~17_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~310_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~310_q\,
	combout => \BANCO_REG|saidaA[16]~17_combout\);

\ULA1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~65_sumout\ = SUM(( \BANCO_REG|saidaA[16]~17_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1079_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1079_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~62\ ))
-- \ULA1|Add0~66\ = CARRY(( \BANCO_REG|saidaA[16]~17_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1079_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1079_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[16]~17_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1079_combout\,
	cin => \ULA1|Add0~62\,
	sumout => \ULA1|Add0~65_sumout\,
	cout => \ULA1|Add0~66\);

\BANCO_REG|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~65_sumout\,
	asdata => \BANCO_REG|saidaB[16]~16_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~54_q\);

\BANCO_REG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1079_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~54_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~310_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~54_q\,
	datad => \BANCO_REG|ALT_INV_registrador~310_q\,
	combout => \BANCO_REG|registrador~1079_combout\);

\BANCO_REG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[16]~16_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1079_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1079_combout\,
	combout => \BANCO_REG|saidaB[16]~16_combout\);

\ULA1|saida[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[16]~16_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~65_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[16]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[16]~16_combout\,
	datac => \ULA1|ALT_INV_Add0~65_sumout\,
	combout => \ULA1|saida[16]~16_combout\);

\BANCO_REG|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~69_sumout\,
	asdata => \BANCO_REG|saidaB[17]~17_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~311_q\);

\BANCO_REG|saidaA[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[17]~18_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~311_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~311_q\,
	combout => \BANCO_REG|saidaA[17]~18_combout\);

\ULA1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_sumout\ = SUM(( \BANCO_REG|saidaA[17]~18_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1080_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1080_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~66\ ))
-- \ULA1|Add0~70\ = CARRY(( \BANCO_REG|saidaA[17]~18_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1080_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1080_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[17]~18_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1080_combout\,
	cin => \ULA1|Add0~66\,
	sumout => \ULA1|Add0~69_sumout\,
	cout => \ULA1|Add0~70\);

\ULA1|Add0~69_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_wirecell_combout\ = !\ULA1|Add0~69_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \ULA1|Add0~69_wirecell_combout\);

\BANCO_REG|saidaB[17]~17_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[17]~17_wirecell_combout\ = !\BANCO_REG|saidaB[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[17]~17_combout\,
	combout => \BANCO_REG|saidaB[17]~17_wirecell_combout\);

\BANCO_REG|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~69_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[17]~17_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~55_q\);

\BANCO_REG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1080_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~55_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~311_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~55_q\,
	datad => \BANCO_REG|ALT_INV_registrador~311_q\,
	combout => \BANCO_REG|registrador~1080_combout\);

\BANCO_REG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[17]~17_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1080_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1080_combout\,
	combout => \BANCO_REG|saidaB[17]~17_combout\);

\ULA1|saida[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[17]~17_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~69_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[17]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[17]~17_combout\,
	datac => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \ULA1|saida[17]~17_combout\);

\BANCO_REG|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~73_sumout\,
	asdata => \BANCO_REG|saidaB[18]~18_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~312_q\);

\BANCO_REG|saidaA[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[18]~19_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~312_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~312_q\,
	combout => \BANCO_REG|saidaA[18]~19_combout\);

\ULA1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~73_sumout\ = SUM(( \BANCO_REG|saidaA[18]~19_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1081_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1081_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~70\ ))
-- \ULA1|Add0~74\ = CARRY(( \BANCO_REG|saidaA[18]~19_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1081_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1081_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[18]~19_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1081_combout\,
	cin => \ULA1|Add0~70\,
	sumout => \ULA1|Add0~73_sumout\,
	cout => \ULA1|Add0~74\);

\BANCO_REG|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~73_sumout\,
	asdata => \BANCO_REG|saidaB[18]~18_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~56_q\);

\BANCO_REG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1081_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~56_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~312_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~56_q\,
	datad => \BANCO_REG|ALT_INV_registrador~312_q\,
	combout => \BANCO_REG|registrador~1081_combout\);

\BANCO_REG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[18]~18_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1081_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1081_combout\,
	combout => \BANCO_REG|saidaB[18]~18_combout\);

\ULA1|saida[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[18]~18_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~73_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[18]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[18]~18_combout\,
	datac => \ULA1|ALT_INV_Add0~73_sumout\,
	combout => \ULA1|saida[18]~18_combout\);

\BANCO_REG|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~77_sumout\,
	asdata => \BANCO_REG|saidaB[19]~19_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~313_q\);

\BANCO_REG|saidaA[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[19]~20_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~313_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~313_q\,
	combout => \BANCO_REG|saidaA[19]~20_combout\);

\ULA1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_sumout\ = SUM(( \BANCO_REG|saidaA[19]~20_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1082_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1082_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~74\ ))
-- \ULA1|Add0~78\ = CARRY(( \BANCO_REG|saidaA[19]~20_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1082_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1082_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[19]~20_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1082_combout\,
	cin => \ULA1|Add0~74\,
	sumout => \ULA1|Add0~77_sumout\,
	cout => \ULA1|Add0~78\);

\ULA1|Add0~77_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_wirecell_combout\ = !\ULA1|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \ULA1|Add0~77_wirecell_combout\);

\BANCO_REG|saidaB[19]~19_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[19]~19_wirecell_combout\ = !\BANCO_REG|saidaB[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[19]~19_combout\,
	combout => \BANCO_REG|saidaB[19]~19_wirecell_combout\);

\BANCO_REG|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~77_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[19]~19_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~57_q\);

\BANCO_REG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1082_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~57_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~313_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~57_q\,
	datad => \BANCO_REG|ALT_INV_registrador~313_q\,
	combout => \BANCO_REG|registrador~1082_combout\);

\BANCO_REG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[19]~19_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1082_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1082_combout\,
	combout => \BANCO_REG|saidaB[19]~19_combout\);

\ULA1|saida[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[19]~19_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~77_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[19]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[19]~19_combout\,
	datac => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \ULA1|saida[19]~19_combout\);

\BANCO_REG|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~81_sumout\,
	asdata => \BANCO_REG|saidaB[20]~20_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~314_q\);

\BANCO_REG|saidaA[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[20]~21_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~314_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~314_q\,
	combout => \BANCO_REG|saidaA[20]~21_combout\);

\ULA1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~81_sumout\ = SUM(( \BANCO_REG|saidaA[20]~21_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1083_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1083_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~78\ ))
-- \ULA1|Add0~82\ = CARRY(( \BANCO_REG|saidaA[20]~21_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1083_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1083_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[20]~21_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1083_combout\,
	cin => \ULA1|Add0~78\,
	sumout => \ULA1|Add0~81_sumout\,
	cout => \ULA1|Add0~82\);

\BANCO_REG|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~81_sumout\,
	asdata => \BANCO_REG|saidaB[20]~20_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~58_q\);

\BANCO_REG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1083_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~58_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~314_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~58_q\,
	datad => \BANCO_REG|ALT_INV_registrador~314_q\,
	combout => \BANCO_REG|registrador~1083_combout\);

\BANCO_REG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[20]~20_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1083_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1083_combout\,
	combout => \BANCO_REG|saidaB[20]~20_combout\);

\ULA1|saida[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[20]~20_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~81_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[20]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[20]~20_combout\,
	datac => \ULA1|ALT_INV_Add0~81_sumout\,
	combout => \ULA1|saida[20]~20_combout\);

\BANCO_REG|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~85_sumout\,
	asdata => \BANCO_REG|saidaB[21]~21_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~315_q\);

\BANCO_REG|saidaA[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[21]~22_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~315_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~315_q\,
	combout => \BANCO_REG|saidaA[21]~22_combout\);

\ULA1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_sumout\ = SUM(( \BANCO_REG|saidaA[21]~22_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1084_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1084_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~82\ ))
-- \ULA1|Add0~86\ = CARRY(( \BANCO_REG|saidaA[21]~22_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1084_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1084_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[21]~22_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1084_combout\,
	cin => \ULA1|Add0~82\,
	sumout => \ULA1|Add0~85_sumout\,
	cout => \ULA1|Add0~86\);

\ULA1|Add0~85_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_wirecell_combout\ = !\ULA1|Add0~85_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \ULA1|Add0~85_wirecell_combout\);

\BANCO_REG|saidaB[21]~21_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[21]~21_wirecell_combout\ = !\BANCO_REG|saidaB[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[21]~21_combout\,
	combout => \BANCO_REG|saidaB[21]~21_wirecell_combout\);

\BANCO_REG|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~85_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[21]~21_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~59_q\);

\BANCO_REG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1084_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~59_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~315_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~59_q\,
	datad => \BANCO_REG|ALT_INV_registrador~315_q\,
	combout => \BANCO_REG|registrador~1084_combout\);

\BANCO_REG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[21]~21_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1084_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1084_combout\,
	combout => \BANCO_REG|saidaB[21]~21_combout\);

\ULA1|saida[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[21]~21_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~85_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[21]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[21]~21_combout\,
	datac => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \ULA1|saida[21]~21_combout\);

\BANCO_REG|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~89_sumout\,
	asdata => \BANCO_REG|saidaB[22]~22_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~316_q\);

\BANCO_REG|saidaA[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[22]~23_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~316_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~316_q\,
	combout => \BANCO_REG|saidaA[22]~23_combout\);

\ULA1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~89_sumout\ = SUM(( \BANCO_REG|saidaA[22]~23_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1085_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1085_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~86\ ))
-- \ULA1|Add0~90\ = CARRY(( \BANCO_REG|saidaA[22]~23_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1085_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1085_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[22]~23_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1085_combout\,
	cin => \ULA1|Add0~86\,
	sumout => \ULA1|Add0~89_sumout\,
	cout => \ULA1|Add0~90\);

\BANCO_REG|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~89_sumout\,
	asdata => \BANCO_REG|saidaB[22]~22_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~60_q\);

\BANCO_REG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1085_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~60_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~316_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~60_q\,
	datad => \BANCO_REG|ALT_INV_registrador~316_q\,
	combout => \BANCO_REG|registrador~1085_combout\);

\BANCO_REG|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[22]~22_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1085_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1085_combout\,
	combout => \BANCO_REG|saidaB[22]~22_combout\);

\ULA1|saida[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[22]~22_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~89_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[22]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[22]~22_combout\,
	datac => \ULA1|ALT_INV_Add0~89_sumout\,
	combout => \ULA1|saida[22]~22_combout\);

\BANCO_REG|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~93_sumout\,
	asdata => \BANCO_REG|saidaB[23]~23_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~317_q\);

\BANCO_REG|saidaA[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[23]~24_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~317_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~317_q\,
	combout => \BANCO_REG|saidaA[23]~24_combout\);

\ULA1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_sumout\ = SUM(( \BANCO_REG|saidaA[23]~24_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1086_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1086_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~90\ ))
-- \ULA1|Add0~94\ = CARRY(( \BANCO_REG|saidaA[23]~24_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1086_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1086_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[23]~24_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1086_combout\,
	cin => \ULA1|Add0~90\,
	sumout => \ULA1|Add0~93_sumout\,
	cout => \ULA1|Add0~94\);

\ULA1|Add0~93_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_wirecell_combout\ = !\ULA1|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \ULA1|Add0~93_wirecell_combout\);

\BANCO_REG|saidaB[23]~23_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[23]~23_wirecell_combout\ = !\BANCO_REG|saidaB[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[23]~23_combout\,
	combout => \BANCO_REG|saidaB[23]~23_wirecell_combout\);

\BANCO_REG|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~93_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[23]~23_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~61_q\);

\BANCO_REG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1086_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~61_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~317_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~61_q\,
	datad => \BANCO_REG|ALT_INV_registrador~317_q\,
	combout => \BANCO_REG|registrador~1086_combout\);

\BANCO_REG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[23]~23_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1086_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1086_combout\,
	combout => \BANCO_REG|saidaB[23]~23_combout\);

\ULA1|saida[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[23]~23_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~93_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[23]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[23]~23_combout\,
	datac => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \ULA1|saida[23]~23_combout\);

\BANCO_REG|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~97_sumout\,
	asdata => \BANCO_REG|saidaB[24]~24_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~318_q\);

\BANCO_REG|saidaA[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[24]~25_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~318_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~318_q\,
	combout => \BANCO_REG|saidaA[24]~25_combout\);

\ULA1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~97_sumout\ = SUM(( \BANCO_REG|saidaA[24]~25_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1087_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1087_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~94\ ))
-- \ULA1|Add0~98\ = CARRY(( \BANCO_REG|saidaA[24]~25_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1087_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1087_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[24]~25_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1087_combout\,
	cin => \ULA1|Add0~94\,
	sumout => \ULA1|Add0~97_sumout\,
	cout => \ULA1|Add0~98\);

\BANCO_REG|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~97_sumout\,
	asdata => \BANCO_REG|saidaB[24]~24_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~62_q\);

\BANCO_REG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1087_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~62_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~318_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~62_q\,
	datad => \BANCO_REG|ALT_INV_registrador~318_q\,
	combout => \BANCO_REG|registrador~1087_combout\);

\BANCO_REG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[24]~24_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1087_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1087_combout\,
	combout => \BANCO_REG|saidaB[24]~24_combout\);

\ULA1|saida[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[24]~24_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~97_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[24]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[24]~24_combout\,
	datac => \ULA1|ALT_INV_Add0~97_sumout\,
	combout => \ULA1|saida[24]~24_combout\);

\BANCO_REG|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~101_sumout\,
	asdata => \BANCO_REG|saidaB[25]~25_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~319_q\);

\BANCO_REG|saidaA[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[25]~26_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~319_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~319_q\,
	combout => \BANCO_REG|saidaA[25]~26_combout\);

\ULA1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_sumout\ = SUM(( \BANCO_REG|saidaA[25]~26_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1088_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1088_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~98\ ))
-- \ULA1|Add0~102\ = CARRY(( \BANCO_REG|saidaA[25]~26_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1088_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1088_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[25]~26_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1088_combout\,
	cin => \ULA1|Add0~98\,
	sumout => \ULA1|Add0~101_sumout\,
	cout => \ULA1|Add0~102\);

\ULA1|Add0~101_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_wirecell_combout\ = !\ULA1|Add0~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \ULA1|Add0~101_wirecell_combout\);

\BANCO_REG|saidaB[25]~25_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[25]~25_wirecell_combout\ = !\BANCO_REG|saidaB[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[25]~25_combout\,
	combout => \BANCO_REG|saidaB[25]~25_wirecell_combout\);

\BANCO_REG|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~101_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[25]~25_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~63_q\);

\BANCO_REG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1088_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~63_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~319_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~63_q\,
	datad => \BANCO_REG|ALT_INV_registrador~319_q\,
	combout => \BANCO_REG|registrador~1088_combout\);

\BANCO_REG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[25]~25_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1088_combout\,
	combout => \BANCO_REG|saidaB[25]~25_combout\);

\ULA1|saida[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[25]~25_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~101_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[25]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[25]~25_combout\,
	datac => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \ULA1|saida[25]~25_combout\);

\BANCO_REG|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~105_sumout\,
	asdata => \BANCO_REG|saidaB[26]~26_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~320_q\);

\BANCO_REG|saidaA[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[26]~27_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~320_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~320_q\,
	combout => \BANCO_REG|saidaA[26]~27_combout\);

\ULA1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~105_sumout\ = SUM(( \BANCO_REG|saidaA[26]~27_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1089_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1089_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~102\ ))
-- \ULA1|Add0~106\ = CARRY(( \BANCO_REG|saidaA[26]~27_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1089_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1089_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[26]~27_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1089_combout\,
	cin => \ULA1|Add0~102\,
	sumout => \ULA1|Add0~105_sumout\,
	cout => \ULA1|Add0~106\);

\BANCO_REG|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~105_sumout\,
	asdata => \BANCO_REG|saidaB[26]~26_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~64_q\);

\BANCO_REG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1089_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~64_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~320_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~64_q\,
	datad => \BANCO_REG|ALT_INV_registrador~320_q\,
	combout => \BANCO_REG|registrador~1089_combout\);

\BANCO_REG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[26]~26_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1089_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1089_combout\,
	combout => \BANCO_REG|saidaB[26]~26_combout\);

\ULA1|saida[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[26]~26_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~105_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[26]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[26]~26_combout\,
	datac => \ULA1|ALT_INV_Add0~105_sumout\,
	combout => \ULA1|saida[26]~26_combout\);

\BANCO_REG|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~109_sumout\,
	asdata => \BANCO_REG|saidaB[27]~27_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~321_q\);

\BANCO_REG|saidaA[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[27]~28_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~321_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~321_q\,
	combout => \BANCO_REG|saidaA[27]~28_combout\);

\ULA1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_sumout\ = SUM(( \BANCO_REG|saidaA[27]~28_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1090_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1090_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~106\ ))
-- \ULA1|Add0~110\ = CARRY(( \BANCO_REG|saidaA[27]~28_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1090_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1090_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[27]~28_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1090_combout\,
	cin => \ULA1|Add0~106\,
	sumout => \ULA1|Add0~109_sumout\,
	cout => \ULA1|Add0~110\);

\ULA1|Add0~109_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_wirecell_combout\ = !\ULA1|Add0~109_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \ULA1|Add0~109_wirecell_combout\);

\BANCO_REG|saidaB[27]~27_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[27]~27_wirecell_combout\ = !\BANCO_REG|saidaB[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[27]~27_combout\,
	combout => \BANCO_REG|saidaB[27]~27_wirecell_combout\);

\BANCO_REG|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~109_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[27]~27_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~65_q\);

\BANCO_REG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1090_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~65_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~321_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~65_q\,
	datad => \BANCO_REG|ALT_INV_registrador~321_q\,
	combout => \BANCO_REG|registrador~1090_combout\);

\BANCO_REG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[27]~27_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1090_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1090_combout\,
	combout => \BANCO_REG|saidaB[27]~27_combout\);

\ULA1|saida[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[27]~27_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~109_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[27]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[27]~27_combout\,
	datac => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \ULA1|saida[27]~27_combout\);

\BANCO_REG|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~113_sumout\,
	asdata => \BANCO_REG|saidaB[28]~28_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~322_q\);

\BANCO_REG|saidaA[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[28]~29_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~322_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~322_q\,
	combout => \BANCO_REG|saidaA[28]~29_combout\);

\ULA1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~113_sumout\ = SUM(( \BANCO_REG|saidaA[28]~29_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1091_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1091_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~110\ ))
-- \ULA1|Add0~114\ = CARRY(( \BANCO_REG|saidaA[28]~29_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1091_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1091_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[28]~29_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1091_combout\,
	cin => \ULA1|Add0~110\,
	sumout => \ULA1|Add0~113_sumout\,
	cout => \ULA1|Add0~114\);

\BANCO_REG|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~113_sumout\,
	asdata => \BANCO_REG|saidaB[28]~28_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~66_q\);

\BANCO_REG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1091_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~66_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~322_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~66_q\,
	datad => \BANCO_REG|ALT_INV_registrador~322_q\,
	combout => \BANCO_REG|registrador~1091_combout\);

\BANCO_REG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[28]~28_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1091_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1091_combout\,
	combout => \BANCO_REG|saidaB[28]~28_combout\);

\ULA1|saida[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[28]~28_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~113_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[28]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[28]~28_combout\,
	datac => \ULA1|ALT_INV_Add0~113_sumout\,
	combout => \ULA1|saida[28]~28_combout\);

\BANCO_REG|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~117_sumout\,
	asdata => \BANCO_REG|saidaB[29]~29_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~323_q\);

\BANCO_REG|saidaA[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[29]~30_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~323_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~323_q\,
	combout => \BANCO_REG|saidaA[29]~30_combout\);

\ULA1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_sumout\ = SUM(( \BANCO_REG|saidaA[29]~30_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1092_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1092_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~114\ ))
-- \ULA1|Add0~118\ = CARRY(( \BANCO_REG|saidaA[29]~30_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1092_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1092_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[29]~30_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1092_combout\,
	cin => \ULA1|Add0~114\,
	sumout => \ULA1|Add0~117_sumout\,
	cout => \ULA1|Add0~118\);

\ULA1|Add0~117_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_wirecell_combout\ = !\ULA1|Add0~117_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~117_sumout\,
	combout => \ULA1|Add0~117_wirecell_combout\);

\BANCO_REG|saidaB[29]~29_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[29]~29_wirecell_combout\ = !\BANCO_REG|saidaB[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[29]~29_combout\,
	combout => \BANCO_REG|saidaB[29]~29_wirecell_combout\);

\BANCO_REG|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~117_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[29]~29_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~67_q\);

\BANCO_REG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1092_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~67_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~323_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~67_q\,
	datad => \BANCO_REG|ALT_INV_registrador~323_q\,
	combout => \BANCO_REG|registrador~1092_combout\);

\BANCO_REG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[29]~29_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1092_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1092_combout\,
	combout => \BANCO_REG|saidaB[29]~29_combout\);

\ULA1|saida[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[29]~29_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~117_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[29]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[29]~29_combout\,
	datac => \ULA1|ALT_INV_Add0~117_sumout\,
	combout => \ULA1|saida[29]~29_combout\);

\BANCO_REG|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~121_sumout\,
	asdata => \BANCO_REG|saidaB[30]~30_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~324_q\);

\BANCO_REG|saidaA[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[30]~31_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~324_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~324_q\,
	combout => \BANCO_REG|saidaA[30]~31_combout\);

\ULA1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~121_sumout\ = SUM(( \BANCO_REG|saidaA[30]~31_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1093_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1093_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~118\ ))
-- \ULA1|Add0~122\ = CARRY(( \BANCO_REG|saidaA[30]~31_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1093_combout\)) # (\BANCO_REG|Equal0~0_combout\))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1093_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Sel_ULA[1]~input_o\,
	datad => \BANCO_REG|ALT_INV_saidaA[30]~31_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1093_combout\,
	cin => \ULA1|Add0~118\,
	sumout => \ULA1|Add0~121_sumout\,
	cout => \ULA1|Add0~122\);

\BANCO_REG|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~121_sumout\,
	asdata => \BANCO_REG|saidaB[30]~30_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~68_q\);

\BANCO_REG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1093_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~68_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~324_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~68_q\,
	datad => \BANCO_REG|ALT_INV_registrador~324_q\,
	combout => \BANCO_REG|registrador~1093_combout\);

\BANCO_REG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[30]~30_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1093_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1093_combout\,
	combout => \BANCO_REG|saidaB[30]~30_combout\);

\ULA1|saida[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[30]~30_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~121_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[30]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[30]~30_combout\,
	datac => \ULA1|ALT_INV_Add0~121_sumout\,
	combout => \ULA1|saida[30]~30_combout\);

\BANCO_REG|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~125_sumout\,
	asdata => \BANCO_REG|saidaB[31]~31_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1096_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~325_q\);

\BANCO_REG|saidaA[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaA[31]~32_combout\ = (\BANCO_REG|saidaA[0]~0_combout\ & (\BANCO_REG|registrador~325_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \BANCO_REG|ALT_INV_registrador~325_q\,
	combout => \BANCO_REG|saidaA[31]~32_combout\);

\ULA1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_sumout\ = SUM(( \BANCO_REG|saidaA[31]~32_combout\ ) + ( (!\Sel_ULA[0]~input_o\ & (((!\BANCO_REG|registrador~1094_combout\) # (\BANCO_REG|Equal0~0_combout\)))) # (\Sel_ULA[0]~input_o\ & (!\Sel_ULA[1]~input_o\ $ 
-- (((!\BANCO_REG|registrador~1094_combout\) # (\BANCO_REG|Equal0~0_combout\))))) ) + ( \ULA1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[0]~input_o\,
	datab => \ALT_INV_Sel_ULA[1]~input_o\,
	datac => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REG|ALT_INV_saidaA[31]~32_combout\,
	dataf => \BANCO_REG|ALT_INV_registrador~1094_combout\,
	cin => \ULA1|Add0~122\,
	sumout => \ULA1|Add0~125_sumout\);

\ULA1|Add0~125_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_wirecell_combout\ = !\ULA1|Add0~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~125_sumout\,
	combout => \ULA1|Add0~125_wirecell_combout\);

\BANCO_REG|saidaB[31]~31_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[31]~31_wirecell_combout\ = !\BANCO_REG|saidaB[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaB[31]~31_combout\,
	combout => \BANCO_REG|saidaB[31]~31_wirecell_combout\);

\BANCO_REG|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~125_wirecell_combout\,
	asdata => \BANCO_REG|saidaB[31]~31_wirecell_combout\,
	sload => \Sel_ULA[1]~input_o\,
	ena => \BANCO_REG|registrador~1095_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REG|registrador~69_q\);

\BANCO_REG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|registrador~1094_combout\ = (!\BANCO_REG|registrador~1066_combout\ & ((!\BANCO_REG|saidaA[0]~0_combout\ & (!\BANCO_REG|registrador~69_q\)) # (\BANCO_REG|saidaA[0]~0_combout\ & ((\BANCO_REG|registrador~325_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1066_combout\,
	datac => \BANCO_REG|ALT_INV_registrador~69_q\,
	datad => \BANCO_REG|ALT_INV_registrador~325_q\,
	combout => \BANCO_REG|registrador~1094_combout\);

\BANCO_REG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REG|saidaB[31]~31_combout\ = (!\BANCO_REG|Equal0~0_combout\ & \BANCO_REG|registrador~1094_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REG|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REG|ALT_INV_registrador~1094_combout\,
	combout => \BANCO_REG|saidaB[31]~31_combout\);

\ULA1|saida[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[31]~31_combout\ = (!\Sel_ULA[1]~input_o\ & ((\ULA1|Add0~125_sumout\))) # (\Sel_ULA[1]~input_o\ & (\BANCO_REG|saidaB[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sel_ULA[1]~input_o\,
	datab => \BANCO_REG|ALT_INV_saidaB[31]~31_combout\,
	datac => \ULA1|ALT_INV_Add0~125_sumout\,
	combout => \ULA1|saida[31]~31_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(2) & (\BANCO_REG|saidaA[0]~0_combout\ & !\PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \BANCO_REG|ALT_INV_saidaA[0]~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT\(6) & ( \PC|DOUT\(3) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT\(6) & ( \PC|DOUT\(3) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\Somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~21_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~10\ ))
-- \Somador|Add0~22\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \Somador|Add0~10\,
	sumout => \Somador|Add0~21_sumout\,
	cout => \Somador|Add0~22\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\Somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~22\ ))
-- \Somador|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \Somador|Add0~22\,
	sumout => \Somador|Add0~25_sumout\,
	cout => \Somador|Add0~26\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\Somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))
-- \Somador|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \Somador|Add0~26\,
	sumout => \Somador|Add0~29_sumout\,
	cout => \Somador|Add0~30\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\Somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))
-- \Somador|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \Somador|Add0~30\,
	sumout => \Somador|Add0~33_sumout\,
	cout => \Somador|Add0~34\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\Somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~37_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~34\ ))
-- \Somador|Add0~38\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \Somador|Add0~34\,
	sumout => \Somador|Add0~37_sumout\,
	cout => \Somador|Add0~38\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\Somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~41_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \Somador|Add0~38\ ))
-- \Somador|Add0~42\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \Somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \Somador|Add0~38\,
	sumout => \Somador|Add0~41_sumout\,
	cout => \Somador|Add0~42\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\Somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~45_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \Somador|Add0~42\ ))
-- \Somador|Add0~46\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \Somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \Somador|Add0~42\,
	sumout => \Somador|Add0~45_sumout\,
	cout => \Somador|Add0~46\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\Somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~46\ ))
-- \Somador|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \Somador|Add0~46\,
	sumout => \Somador|Add0~49_sumout\,
	cout => \Somador|Add0~50\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\Somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~53_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \Somador|Add0~50\ ))
-- \Somador|Add0~54\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \Somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \Somador|Add0~50\,
	sumout => \Somador|Add0~53_sumout\,
	cout => \Somador|Add0~54\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\Somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~57_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~54\ ))
-- \Somador|Add0~58\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \Somador|Add0~54\,
	sumout => \Somador|Add0~57_sumout\,
	cout => \Somador|Add0~58\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\Somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~61_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~58\ ))
-- \Somador|Add0~62\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \Somador|Add0~58\,
	sumout => \Somador|Add0~61_sumout\,
	cout => \Somador|Add0~62\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\Somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~65_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~62\ ))
-- \Somador|Add0~66\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \Somador|Add0~62\,
	sumout => \Somador|Add0~65_sumout\,
	cout => \Somador|Add0~66\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\Somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~66\ ))
-- \Somador|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \Somador|Add0~66\,
	sumout => \Somador|Add0~69_sumout\,
	cout => \Somador|Add0~70\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\Somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~73_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~70\ ))
-- \Somador|Add0~74\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \Somador|Add0~70\,
	sumout => \Somador|Add0~73_sumout\,
	cout => \Somador|Add0~74\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\Somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~77_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))
-- \Somador|Add0~78\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \Somador|Add0~74\,
	sumout => \Somador|Add0~77_sumout\,
	cout => \Somador|Add0~78\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\Somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))
-- \Somador|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \Somador|Add0~78\,
	sumout => \Somador|Add0~81_sumout\,
	cout => \Somador|Add0~82\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\Somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~85_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~82\ ))
-- \Somador|Add0~86\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \Somador|Add0~82\,
	sumout => \Somador|Add0~85_sumout\,
	cout => \Somador|Add0~86\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\Somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~89_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))
-- \Somador|Add0~90\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \Somador|Add0~86\,
	sumout => \Somador|Add0~89_sumout\,
	cout => \Somador|Add0~90\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\Somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~93_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~90\ ))
-- \Somador|Add0~94\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \Somador|Add0~90\,
	sumout => \Somador|Add0~93_sumout\,
	cout => \Somador|Add0~94\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\Somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~94\ ))
-- \Somador|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \Somador|Add0~94\,
	sumout => \Somador|Add0~97_sumout\,
	cout => \Somador|Add0~98\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\Somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~101_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~98\ ))
-- \Somador|Add0~102\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \Somador|Add0~98\,
	sumout => \Somador|Add0~101_sumout\,
	cout => \Somador|Add0~102\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\Somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))
-- \Somador|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \Somador|Add0~102\,
	sumout => \Somador|Add0~105_sumout\,
	cout => \Somador|Add0~106\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\Somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))
-- \Somador|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \Somador|Add0~106\,
	sumout => \Somador|Add0~109_sumout\,
	cout => \Somador|Add0~110\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\Somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \Somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \Somador|Add0~110\,
	sumout => \Somador|Add0~113_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

ww_Instru_opcode(0) <= \Instru_opcode[0]~output_o\;

ww_Instru_opcode(1) <= \Instru_opcode[1]~output_o\;

ww_Instru_opcode(2) <= \Instru_opcode[2]~output_o\;

ww_Instru_opcode(3) <= \Instru_opcode[3]~output_o\;

ww_Instru_opcode(4) <= \Instru_opcode[4]~output_o\;

ww_Instru_opcode(5) <= \Instru_opcode[5]~output_o\;

ww_Funct(0) <= \Funct[0]~output_o\;

ww_Funct(1) <= \Funct[1]~output_o\;

ww_Funct(2) <= \Funct[2]~output_o\;

ww_Funct(3) <= \Funct[3]~output_o\;

ww_Funct(4) <= \Funct[4]~output_o\;

ww_Funct(5) <= \Funct[5]~output_o\;

ww_ULAA_OUT(0) <= \ULAA_OUT[0]~output_o\;

ww_ULAA_OUT(1) <= \ULAA_OUT[1]~output_o\;

ww_ULAA_OUT(2) <= \ULAA_OUT[2]~output_o\;

ww_ULAA_OUT(3) <= \ULAA_OUT[3]~output_o\;

ww_ULAA_OUT(4) <= \ULAA_OUT[4]~output_o\;

ww_ULAA_OUT(5) <= \ULAA_OUT[5]~output_o\;

ww_ULAA_OUT(6) <= \ULAA_OUT[6]~output_o\;

ww_ULAA_OUT(7) <= \ULAA_OUT[7]~output_o\;

ww_ULAA_OUT(8) <= \ULAA_OUT[8]~output_o\;

ww_ULAA_OUT(9) <= \ULAA_OUT[9]~output_o\;

ww_ULAA_OUT(10) <= \ULAA_OUT[10]~output_o\;

ww_ULAA_OUT(11) <= \ULAA_OUT[11]~output_o\;

ww_ULAA_OUT(12) <= \ULAA_OUT[12]~output_o\;

ww_ULAA_OUT(13) <= \ULAA_OUT[13]~output_o\;

ww_ULAA_OUT(14) <= \ULAA_OUT[14]~output_o\;

ww_ULAA_OUT(15) <= \ULAA_OUT[15]~output_o\;

ww_ULAA_OUT(16) <= \ULAA_OUT[16]~output_o\;

ww_ULAA_OUT(17) <= \ULAA_OUT[17]~output_o\;

ww_ULAA_OUT(18) <= \ULAA_OUT[18]~output_o\;

ww_ULAA_OUT(19) <= \ULAA_OUT[19]~output_o\;

ww_ULAA_OUT(20) <= \ULAA_OUT[20]~output_o\;

ww_ULAA_OUT(21) <= \ULAA_OUT[21]~output_o\;

ww_ULAA_OUT(22) <= \ULAA_OUT[22]~output_o\;

ww_ULAA_OUT(23) <= \ULAA_OUT[23]~output_o\;

ww_ULAA_OUT(24) <= \ULAA_OUT[24]~output_o\;

ww_ULAA_OUT(25) <= \ULAA_OUT[25]~output_o\;

ww_ULAA_OUT(26) <= \ULAA_OUT[26]~output_o\;

ww_ULAA_OUT(27) <= \ULAA_OUT[27]~output_o\;

ww_ULAA_OUT(28) <= \ULAA_OUT[28]~output_o\;

ww_ULAA_OUT(29) <= \ULAA_OUT[29]~output_o\;

ww_ULAA_OUT(30) <= \ULAA_OUT[30]~output_o\;

ww_ULAA_OUT(31) <= \ULAA_OUT[31]~output_o\;

ww_RS_OUT(0) <= \RS_OUT[0]~output_o\;

ww_RS_OUT(1) <= \RS_OUT[1]~output_o\;

ww_RS_OUT(2) <= \RS_OUT[2]~output_o\;

ww_RS_OUT(3) <= \RS_OUT[3]~output_o\;

ww_RS_OUT(4) <= \RS_OUT[4]~output_o\;

ww_RS_OUT(5) <= \RS_OUT[5]~output_o\;

ww_RS_OUT(6) <= \RS_OUT[6]~output_o\;

ww_RS_OUT(7) <= \RS_OUT[7]~output_o\;

ww_RS_OUT(8) <= \RS_OUT[8]~output_o\;

ww_RS_OUT(9) <= \RS_OUT[9]~output_o\;

ww_RS_OUT(10) <= \RS_OUT[10]~output_o\;

ww_RS_OUT(11) <= \RS_OUT[11]~output_o\;

ww_RS_OUT(12) <= \RS_OUT[12]~output_o\;

ww_RS_OUT(13) <= \RS_OUT[13]~output_o\;

ww_RS_OUT(14) <= \RS_OUT[14]~output_o\;

ww_RS_OUT(15) <= \RS_OUT[15]~output_o\;

ww_RS_OUT(16) <= \RS_OUT[16]~output_o\;

ww_RS_OUT(17) <= \RS_OUT[17]~output_o\;

ww_RS_OUT(18) <= \RS_OUT[18]~output_o\;

ww_RS_OUT(19) <= \RS_OUT[19]~output_o\;

ww_RS_OUT(20) <= \RS_OUT[20]~output_o\;

ww_RS_OUT(21) <= \RS_OUT[21]~output_o\;

ww_RS_OUT(22) <= \RS_OUT[22]~output_o\;

ww_RS_OUT(23) <= \RS_OUT[23]~output_o\;

ww_RS_OUT(24) <= \RS_OUT[24]~output_o\;

ww_RS_OUT(25) <= \RS_OUT[25]~output_o\;

ww_RS_OUT(26) <= \RS_OUT[26]~output_o\;

ww_RS_OUT(27) <= \RS_OUT[27]~output_o\;

ww_RS_OUT(28) <= \RS_OUT[28]~output_o\;

ww_RS_OUT(29) <= \RS_OUT[29]~output_o\;

ww_RS_OUT(30) <= \RS_OUT[30]~output_o\;

ww_RS_OUT(31) <= \RS_OUT[31]~output_o\;

ww_RT_OUT(0) <= \RT_OUT[0]~output_o\;

ww_RT_OUT(1) <= \RT_OUT[1]~output_o\;

ww_RT_OUT(2) <= \RT_OUT[2]~output_o\;

ww_RT_OUT(3) <= \RT_OUT[3]~output_o\;

ww_RT_OUT(4) <= \RT_OUT[4]~output_o\;

ww_RT_OUT(5) <= \RT_OUT[5]~output_o\;

ww_RT_OUT(6) <= \RT_OUT[6]~output_o\;

ww_RT_OUT(7) <= \RT_OUT[7]~output_o\;

ww_RT_OUT(8) <= \RT_OUT[8]~output_o\;

ww_RT_OUT(9) <= \RT_OUT[9]~output_o\;

ww_RT_OUT(10) <= \RT_OUT[10]~output_o\;

ww_RT_OUT(11) <= \RT_OUT[11]~output_o\;

ww_RT_OUT(12) <= \RT_OUT[12]~output_o\;

ww_RT_OUT(13) <= \RT_OUT[13]~output_o\;

ww_RT_OUT(14) <= \RT_OUT[14]~output_o\;

ww_RT_OUT(15) <= \RT_OUT[15]~output_o\;

ww_RT_OUT(16) <= \RT_OUT[16]~output_o\;

ww_RT_OUT(17) <= \RT_OUT[17]~output_o\;

ww_RT_OUT(18) <= \RT_OUT[18]~output_o\;

ww_RT_OUT(19) <= \RT_OUT[19]~output_o\;

ww_RT_OUT(20) <= \RT_OUT[20]~output_o\;

ww_RT_OUT(21) <= \RT_OUT[21]~output_o\;

ww_RT_OUT(22) <= \RT_OUT[22]~output_o\;

ww_RT_OUT(23) <= \RT_OUT[23]~output_o\;

ww_RT_OUT(24) <= \RT_OUT[24]~output_o\;

ww_RT_OUT(25) <= \RT_OUT[25]~output_o\;

ww_RT_OUT(26) <= \RT_OUT[26]~output_o\;

ww_RT_OUT(27) <= \RT_OUT[27]~output_o\;

ww_RT_OUT(28) <= \RT_OUT[28]~output_o\;

ww_RT_OUT(29) <= \RT_OUT[29]~output_o\;

ww_RT_OUT(30) <= \RT_OUT[30]~output_o\;

ww_RT_OUT(31) <= \RT_OUT[31]~output_o\;

ww_Rs_End(0) <= \Rs_End[0]~output_o\;

ww_Rs_End(1) <= \Rs_End[1]~output_o\;

ww_Rs_End(2) <= \Rs_End[2]~output_o\;

ww_Rs_End(3) <= \Rs_End[3]~output_o\;

ww_Rs_End(4) <= \Rs_End[4]~output_o\;

ww_Rt_End(0) <= \Rt_End[0]~output_o\;

ww_Rt_End(1) <= \Rt_End[1]~output_o\;

ww_Rt_End(2) <= \Rt_End[2]~output_o\;

ww_Rt_End(3) <= \Rt_End[3]~output_o\;

ww_Rt_End(4) <= \Rt_End[4]~output_o\;

ww_Rd_End(0) <= \Rd_End[0]~output_o\;

ww_Rd_End(1) <= \Rd_End[1]~output_o\;

ww_Rd_End(2) <= \Rd_End[2]~output_o\;

ww_Rd_End(3) <= \Rd_End[3]~output_o\;

ww_Rd_End(4) <= \Rd_End[4]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;
END structure;


