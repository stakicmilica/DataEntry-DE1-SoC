-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/20/2022 22:43:12"
                                                            
-- Vhdl Test Bench template for design  :  unos_podataka
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY unos_podataka_vhd_tst IS
END unos_podataka_vhd_tst;
ARCHITECTURE unos_podataka_arch OF unos_podataka_vhd_tst IS
constant C_CLK_PERIOD : time := 100 ms;                                                 
-- signals                                                   
SIGNAL btt_dec : STD_LOGIC:='1';
SIGNAL btt_inc : STD_LOGIC:='1';
SIGNAL btt_reset : STD_LOGIC;
SIGNAL clk : STD_LOGIC:='1';
SIGNAL disp1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT unos_podataka
	PORT (
	btt_dec : IN STD_LOGIC;
	btt_inc : IN STD_LOGIC;
	btt_reset : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	disp1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : unos_podataka
	PORT MAP (
-- list connections between master ports and signals
	btt_dec => btt_dec,
	btt_inc => btt_inc,
	btt_reset => btt_reset,
	clk => clk,
	disp1 => disp1,
	disp2 => disp2,
	disp3 => disp3,
	disp4 => disp4
	);
clk <= not clk after C_CLK_PERIOD/2;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
                btt_reset <= '0';
wait for 3*C_CLK_PERIOD;
btt_reset <= '1';
wait for 6*C_CLK_PERIOD;
btt_inc <= '0';
wait for 30*C_CLK_PERIOD;
btt_inc <= '1';
wait for 10*C_CLK_PERIOD;
btt_inc <= '0';
wait for 130*C_CLK_PERIOD;
btt_inc <= '1';
wait for 10*C_CLK_PERIOD;
btt_inc <= '0';
wait for 90*C_CLK_PERIOD;
btt_inc <= '1';
wait for 10*C_CLK_PERIOD;
btt_dec <= '0';
wait for 30*C_CLK_PERIOD;
btt_dec <= '1';
wait for 10*C_CLK_PERIOD;
btt_dec <= '0';
wait for 90*C_CLK_PERIOD;
btt_dec <= '1';
wait for 12*C_CLK_PERIOD;
btt_inc <= '0';  
WAIT;                                                        
END PROCESS always;                                          
END unos_podataka_arch;
