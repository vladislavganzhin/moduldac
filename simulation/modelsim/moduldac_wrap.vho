-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/30/2021 13:50:19"

-- 
-- Device: Altera 10M08SAE144I7G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	moduldac_wrap IS
    PORT (
	o_clock_dac : BUFFER std_logic;
	o_data_dac : BUFFER std_logic;
	o_sync_dac : BUFFER std_logic;
	o_ldac_dac : BUFFER std_logic;
	o_clr_dac : BUFFER std_logic;
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_update : IN std_logic;
	i_data_att1_dac : IN std_logic_vector(11 DOWNTO 0);
	i_data_att2_dac : IN std_logic_vector(11 DOWNTO 0);
	i_data_maam_i : IN std_logic_vector(11 DOWNTO 0);
	i_data_maam_g : IN std_logic_vector(11 DOWNTO 0);
	i_channel : IN std_logic_vector(2 DOWNTO 0)
	);
END moduldac_wrap;

-- Design Ports Information
-- o_clock_dac	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_dac	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sync_dac	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ldac_dac	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_clr_dac	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_update	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_channel[2]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_channel[0]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_channel[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[11]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[11]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[11]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[11]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[10]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[10]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[10]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[10]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[9]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[9]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[9]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[9]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[8]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[8]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[8]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[8]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[7]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[6]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[6]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[6]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[6]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[5]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[5]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[5]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[4]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[4]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[4]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[4]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[3]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[3]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[2]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att2_dac[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_i[0]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_att1_dac[0]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_maam_g[0]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF moduldac_wrap IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_o_clock_dac : std_logic;
SIGNAL ww_o_data_dac : std_logic;
SIGNAL ww_o_sync_dac : std_logic;
SIGNAL ww_o_ldac_dac : std_logic;
SIGNAL ww_o_clr_dac : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rst : std_logic;
SIGNAL ww_i_update : std_logic;
SIGNAL ww_i_data_att1_dac : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_data_att2_dac : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_data_maam_i : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_data_maam_g : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_i_channel : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \o_clock_dac~output_o\ : std_logic;
SIGNAL \o_data_dac~output_o\ : std_logic;
SIGNAL \o_sync_dac~output_o\ : std_logic;
SIGNAL \o_ldac_dac~output_o\ : std_logic;
SIGNAL \o_clr_dac~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~11_combout\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \State~36_combout\ : std_logic;
SIGNAL \State.init_outrange~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \State.outrange_wait~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \State.init_powcont~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \State.powcont_wait~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \State.init_powcont_2~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \State.powcont_wait_2~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \State.init_dac~q\ : std_logic;
SIGNAL \i_channel[2]~input_o\ : std_logic;
SIGNAL \i_channel[1]~input_o\ : std_logic;
SIGNAL \i_channel[0]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \i_update~input_o\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \update_all~q\ : std_logic;
SIGNAL \counter[2]~17\ : std_logic;
SIGNAL \counter[3]~18_combout\ : std_logic;
SIGNAL \counter[3]~19\ : std_logic;
SIGNAL \counter[4]~20_combout\ : std_logic;
SIGNAL \counter[4]~21\ : std_logic;
SIGNAL \counter[5]~22_combout\ : std_logic;
SIGNAL \counter[5]~23\ : std_logic;
SIGNAL \counter[6]~24_combout\ : std_logic;
SIGNAL \counter[6]~25\ : std_logic;
SIGNAL \counter[7]~26_combout\ : std_logic;
SIGNAL \counter[7]~27\ : std_logic;
SIGNAL \counter[8]~28_combout\ : std_logic;
SIGNAL \counter[8]~29\ : std_logic;
SIGNAL \counter[9]~30_combout\ : std_logic;
SIGNAL \counter[9]~31\ : std_logic;
SIGNAL \counter[10]~32_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \process_2~7_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \num_ch[0]~4_combout\ : std_logic;
SIGNAL \num_ch[0]~6_combout\ : std_logic;
SIGNAL \process_2~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \num_ch[0]~5_combout\ : std_logic;
SIGNAL \num_ch[1]~7_combout\ : std_logic;
SIGNAL \mask_ldac~0_combout\ : std_logic;
SIGNAL \init~0_combout\ : std_logic;
SIGNAL \mask_update~1_combout\ : std_logic;
SIGNAL \init~1_combout\ : std_logic;
SIGNAL \init~q\ : std_logic;
SIGNAL \State~34_combout\ : std_logic;
SIGNAL \State~26_combout\ : std_logic;
SIGNAL \State~29_combout\ : std_logic;
SIGNAL \State~30_combout\ : std_logic;
SIGNAL \State~32_combout\ : std_logic;
SIGNAL \State~37_combout\ : std_logic;
SIGNAL \State~33_combout\ : std_logic;
SIGNAL \State.init_cont~q\ : std_logic;
SIGNAL \State~27_combout\ : std_logic;
SIGNAL \State~28_combout\ : std_logic;
SIGNAL \State~31_combout\ : std_logic;
SIGNAL \State~35_combout\ : std_logic;
SIGNAL \State.start_update~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \State.activ_signals~q\ : std_logic;
SIGNAL \mask_update~2_combout\ : std_logic;
SIGNAL \mask_update~0_combout\ : std_logic;
SIGNAL \mask_update~3_combout\ : std_logic;
SIGNAL \mask_update~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \start~q\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \mask_ldac~q\ : std_logic;
SIGNAL \process_2~8_combout\ : std_logic;
SIGNAL \process_2~9_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~1_combout\ : std_logic;
SIGNAL \done~2_combout\ : std_logic;
SIGNAL \done~q\ : std_logic;
SIGNAL \counter[10]~13_combout\ : std_logic;
SIGNAL \counter[0]~12\ : std_logic;
SIGNAL \counter[1]~14_combout\ : std_logic;
SIGNAL \counter[1]~15\ : std_logic;
SIGNAL \counter[2]~16_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \enable~0_combout\ : std_logic;
SIGNAL \enable~1_combout\ : std_logic;
SIGNAL \enable~q\ : std_logic;
SIGNAL \sync_dac~0_combout\ : std_logic;
SIGNAL \sync_dac~q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \clock_dac~0_combout\ : std_logic;
SIGNAL \clock_dac~q\ : std_logic;
SIGNAL \wrt[0]~5_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \process_2~4_combout\ : std_logic;
SIGNAL \data_dac~1_combout\ : std_logic;
SIGNAL \wrt[0]~9_combout\ : std_logic;
SIGNAL \process_2~5_combout\ : std_logic;
SIGNAL \wrt[0]~10_combout\ : std_logic;
SIGNAL \wrt[0]~6\ : std_logic;
SIGNAL \wrt[1]~7_combout\ : std_logic;
SIGNAL \wrt[1]~8\ : std_logic;
SIGNAL \wrt[2]~11_combout\ : std_logic;
SIGNAL \wrt[2]~12\ : std_logic;
SIGNAL \wrt[3]~13_combout\ : std_logic;
SIGNAL \wrt[3]~14\ : std_logic;
SIGNAL \wrt[4]~15_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \data[20]~0_combout\ : std_logic;
SIGNAL \data[20]~1_combout\ : std_logic;
SIGNAL \data_B[16]~feeder_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \data_B[16]~0_combout\ : std_logic;
SIGNAL \trn_data~21_combout\ : std_logic;
SIGNAL \trn_data[17]~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \trn_data~22_combout\ : std_logic;
SIGNAL \trn_data[16]~1_combout\ : std_logic;
SIGNAL \i_data_maam_g[11]~input_o\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \i_data_att2_dac[11]~input_o\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \i_data_maam_i[11]~input_o\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \trn_data~23_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \i_data_att1_dac[11]~input_o\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \trn_data~24_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \trn_data[15]~2_combout\ : std_logic;
SIGNAL \i_data_maam_g[10]~input_o\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \i_data_att1_dac[10]~input_o\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \i_data_maam_i[10]~input_o\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \i_data_att2_dac[10]~input_o\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \trn_data~25_combout\ : std_logic;
SIGNAL \trn_data~26_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \trn_data[14]~3_combout\ : std_logic;
SIGNAL \i_data_maam_i[9]~input_o\ : std_logic;
SIGNAL \i_data_maam_g[9]~input_o\ : std_logic;
SIGNAL \i_data_att1_dac[9]~input_o\ : std_logic;
SIGNAL \i_data_att2_dac[9]~input_o\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \trn_data~27_combout\ : std_logic;
SIGNAL \trn_data~28_combout\ : std_logic;
SIGNAL \trn_data[13]~4_combout\ : std_logic;
SIGNAL \i_data_att2_dac[8]~input_o\ : std_logic;
SIGNAL \i_data_maam_g[8]~input_o\ : std_logic;
SIGNAL \i_data_att1_dac[8]~input_o\ : std_logic;
SIGNAL \i_data_maam_i[8]~input_o\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \trn_data~29_combout\ : std_logic;
SIGNAL \trn_data~30_combout\ : std_logic;
SIGNAL \trn_data[12]~5_combout\ : std_logic;
SIGNAL \i_data_att2_dac[7]~input_o\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \i_data_maam_i[7]~input_o\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \trn_data~31_combout\ : std_logic;
SIGNAL \i_data_maam_g[7]~input_o\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \i_data_att1_dac[7]~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \trn_data~32_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \trn_data[11]~6_combout\ : std_logic;
SIGNAL \i_data_maam_g[6]~input_o\ : std_logic;
SIGNAL \i_data_att2_dac[6]~input_o\ : std_logic;
SIGNAL \i_data_att1_dac[6]~input_o\ : std_logic;
SIGNAL \i_data_maam_i[6]~input_o\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \trn_data~33_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \trn_data~34_combout\ : std_logic;
SIGNAL \trn_data[10]~7_combout\ : std_logic;
SIGNAL \i_data_att1_dac[5]~input_o\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \i_data_maam_i[5]~input_o\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \i_data_att2_dac[5]~input_o\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \trn_data~35_combout\ : std_logic;
SIGNAL \i_data_maam_g[5]~input_o\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \trn_data~36_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \trn_data[9]~8_combout\ : std_logic;
SIGNAL \i_data_maam_i[4]~input_o\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \i_data_att2_dac[4]~input_o\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \trn_data~37_combout\ : std_logic;
SIGNAL \i_data_maam_g[4]~input_o\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \i_data_att1_dac[4]~input_o\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \trn_data~38_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \trn_data[8]~9_combout\ : std_logic;
SIGNAL \i_data_att2_dac[3]~input_o\ : std_logic;
SIGNAL \i_data_att1_dac[3]~input_o\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \i_data_maam_g[3]~input_o\ : std_logic;
SIGNAL \i_data_maam_i[3]~input_o\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \trn_data~39_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \trn_data~40_combout\ : std_logic;
SIGNAL \trn_data[7]~10_combout\ : std_logic;
SIGNAL \i_data_att1_dac[2]~input_o\ : std_logic;
SIGNAL \i_data_maam_i[2]~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \i_data_maam_g[2]~input_o\ : std_logic;
SIGNAL \i_data_att2_dac[2]~input_o\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \trn_data~41_combout\ : std_logic;
SIGNAL \trn_data~42_combout\ : std_logic;
SIGNAL \trn_data[6]~11_combout\ : std_logic;
SIGNAL \i_data_maam_g[1]~input_o\ : std_logic;
SIGNAL \i_data_att1_dac[1]~input_o\ : std_logic;
SIGNAL \i_data_att2_dac[1]~input_o\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \i_data_maam_i[1]~input_o\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \trn_data~43_combout\ : std_logic;
SIGNAL \trn_data~44_combout\ : std_logic;
SIGNAL \trn_data[5]~12_combout\ : std_logic;
SIGNAL \i_data_maam_g[0]~input_o\ : std_logic;
SIGNAL \i_data_att2_dac[0]~input_o\ : std_logic;
SIGNAL \i_data_att1_dac[0]~input_o\ : std_logic;
SIGNAL \i_data_maam_i[0]~input_o\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \trn_data~45_combout\ : std_logic;
SIGNAL \trn_data~46_combout\ : std_logic;
SIGNAL \trn_data[4]~13_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \data[0]~3_combout\ : std_logic;
SIGNAL \trn_data~50_combout\ : std_logic;
SIGNAL \process_2~6_combout\ : std_logic;
SIGNAL \trn_data[23]~15_combout\ : std_logic;
SIGNAL \trn_data~49_combout\ : std_logic;
SIGNAL \trn_data~48_combout\ : std_logic;
SIGNAL \trn_data~47_combout\ : std_logic;
SIGNAL \data[18]~2_combout\ : std_logic;
SIGNAL \trn_data~20_combout\ : std_logic;
SIGNAL \trn_data~19_combout\ : std_logic;
SIGNAL \trn_data~18_combout\ : std_logic;
SIGNAL \trn_data~17_combout\ : std_logic;
SIGNAL \trn_data~16_combout\ : std_logic;
SIGNAL \trn_data~14_combout\ : std_logic;
SIGNAL \data_dac~0_combout\ : std_logic;
SIGNAL \data_dac~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ldac~0_combout\ : std_logic;
SIGNAL \ldac~1_combout\ : std_logic;
SIGNAL \ldac~2_combout\ : std_logic;
SIGNAL \ldac~3_combout\ : std_logic;
SIGNAL \ldac~q\ : std_logic;
SIGNAL wrt : std_logic_vector(4 DOWNTO 0);
SIGNAL counter : std_logic_vector(10 DOWNTO 0);
SIGNAL trn_data : std_logic_vector(23 DOWNTO 0);
SIGNAL data : std_logic_vector(23 DOWNTO 0);
SIGNAL num_ch : std_logic_vector(1 DOWNTO 0);
SIGNAL data_B : std_logic_vector(23 DOWNTO 0);
SIGNAL data_A : std_logic_vector(23 DOWNTO 0);
SIGNAL data_C : std_logic_vector(23 DOWNTO 0);
SIGNAL data_D : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_i_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_State.start_update~q\ : std_logic;
SIGNAL \ALT_INV_ldac~q\ : std_logic;
SIGNAL \ALT_INV_sync_dac~q\ : std_logic;
SIGNAL \ALT_INV_clock_dac~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

o_clock_dac <= ww_o_clock_dac;
o_data_dac <= ww_o_data_dac;
o_sync_dac <= ww_o_sync_dac;
o_ldac_dac <= ww_o_ldac_dac;
o_clr_dac <= ww_o_clr_dac;
ww_i_clk <= i_clk;
ww_i_rst <= i_rst;
ww_i_update <= i_update;
ww_i_data_att1_dac <= i_data_att1_dac;
ww_i_data_att2_dac <= i_data_att2_dac;
ww_i_data_maam_i <= i_data_maam_i;
ww_i_data_maam_g <= i_data_maam_g;
ww_i_channel <= i_channel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_rst~input_o\ <= NOT \i_rst~input_o\;
\ALT_INV_State.start_update~q\ <= NOT \State.start_update~q\;
\ALT_INV_ldac~q\ <= NOT \ldac~q\;
\ALT_INV_sync_dac~q\ <= NOT \sync_dac~q\;
\ALT_INV_clock_dac~q\ <= NOT \clock_dac~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y6_N9
\o_clock_dac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clock_dac~q\,
	devoe => ww_devoe,
	o => \o_clock_dac~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\o_data_dac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_dac~q\,
	devoe => ww_devoe,
	o => \o_data_dac~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_sync_dac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sync_dac~q\,
	devoe => ww_devoe,
	o => \o_sync_dac~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\o_ldac_dac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ldac~q\,
	devoe => ww_devoe,
	o => \o_ldac_dac~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\o_clr_dac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_clr_dac~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G3
\i_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y18_N6
\counter[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~11_combout\ = counter(0) $ (VCC)
-- \counter[0]~12\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~11_combout\,
	cout => \counter[0]~12\);

-- Location: IOIBUF_X31_Y19_N1
\i_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst,
	o => \i_rst~input_o\);

-- Location: LCCOMB_X18_Y21_N28
\State~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~36_combout\ = (!\i_rst~input_o\ & ((\start~q\) # (\State.init_outrange~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~q\,
	datac => \State.init_outrange~q\,
	datad => \i_rst~input_o\,
	combout => \State~36_combout\);

-- Location: FF_X18_Y21_N29
\State.init_outrange\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \State~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.init_outrange~q\);

-- Location: LCCOMB_X18_Y20_N8
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\start~q\ & (((!\done~q\ & \State.outrange_wait~q\)) # (!\State.init_outrange~q\))) # (!\start~q\ & (!\done~q\ & (\State.outrange_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~q\,
	datab => \done~q\,
	datac => \State.outrange_wait~q\,
	datad => \State.init_outrange~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X18_Y20_N9
\State.outrange_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.outrange_wait~q\);

-- Location: LCCOMB_X18_Y20_N24
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\start~q\ & (\State.outrange_wait~q\ & ((\done~q\)))) # (!\start~q\ & ((\State.init_powcont~q\) # ((\State.outrange_wait~q\ & \done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~q\,
	datab => \State.outrange_wait~q\,
	datac => \State.init_powcont~q\,
	datad => \done~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X18_Y20_N25
\State.init_powcont\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.init_powcont~q\);

-- Location: LCCOMB_X18_Y20_N26
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\start~q\ & ((\State.init_powcont~q\) # ((\State.powcont_wait~q\ & !\done~q\)))) # (!\start~q\ & (((\State.powcont_wait~q\ & !\done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~q\,
	datab => \State.init_powcont~q\,
	datac => \State.powcont_wait~q\,
	datad => \done~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X18_Y20_N27
\State.powcont_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.powcont_wait~q\);

-- Location: LCCOMB_X18_Y20_N30
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\State.powcont_wait~q\ & ((\done~q\) # ((\State.init_powcont_2~q\ & !\start~q\)))) # (!\State.powcont_wait~q\ & (((\State.init_powcont_2~q\ & !\start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.powcont_wait~q\,
	datab => \done~q\,
	datac => \State.init_powcont_2~q\,
	datad => \start~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X18_Y20_N31
\State.init_powcont_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.init_powcont_2~q\);

-- Location: LCCOMB_X18_Y20_N20
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\State.init_powcont_2~q\ & ((\start~q\) # ((!\done~q\ & \State.powcont_wait_2~q\)))) # (!\State.init_powcont_2~q\ & (!\done~q\ & (\State.powcont_wait_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_powcont_2~q\,
	datab => \done~q\,
	datac => \State.powcont_wait_2~q\,
	datad => \start~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X18_Y20_N21
\State.powcont_wait_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.powcont_wait_2~q\);

-- Location: LCCOMB_X18_Y20_N14
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\start~q\ & (\State.powcont_wait_2~q\ & ((\done~q\)))) # (!\start~q\ & ((\State.init_dac~q\) # ((\State.powcont_wait_2~q\ & \done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~q\,
	datab => \State.powcont_wait_2~q\,
	datac => \State.init_dac~q\,
	datad => \done~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X18_Y20_N15
\State.init_dac\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.init_dac~q\);

-- Location: IOIBUF_X31_Y19_N15
\i_channel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_channel(2),
	o => \i_channel[2]~input_o\);

-- Location: IOIBUF_X31_Y19_N22
\i_channel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_channel(1),
	o => \i_channel[1]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\i_channel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_channel(0),
	o => \i_channel[0]~input_o\);

-- Location: LCCOMB_X16_Y21_N16
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\i_channel[2]~input_o\ & (!\i_channel[1]~input_o\ & !\i_channel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_channel[2]~input_o\,
	datac => \i_channel[1]~input_o\,
	datad => \i_channel[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: IOIBUF_X15_Y25_N22
\i_update~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_update,
	o => \i_update~input_o\);

-- Location: LCCOMB_X16_Y21_N2
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\State.start_update~q\ & ((\update_all~q\) # ((\Mux24~0_combout\ & \i_update~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => \Mux24~0_combout\,
	datac => \i_update~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X18_Y21_N6
\Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\State.init_dac~q\ & (((\update_all~q\) # (\start~q\)))) # (!\State.init_dac~q\ & (!\State.activ_signals~q\ & (\update_all~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_dac~q\,
	datab => \State.activ_signals~q\,
	datac => \update_all~q\,
	datad => \start~q\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X18_Y21_N18
\Selector35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (\Selector35~0_combout\) # ((\Selector35~1_combout\) # ((!\mask_ldac~0_combout\ & \update_all~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datab => \mask_ldac~0_combout\,
	datac => \update_all~q\,
	datad => \Selector35~1_combout\,
	combout => \Selector35~2_combout\);

-- Location: FF_X18_Y21_N19
update_all : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector35~2_combout\,
	ena => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \update_all~q\);

-- Location: LCCOMB_X19_Y18_N10
\counter[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~16_combout\ = (counter(2) & (\counter[1]~15\ $ (GND))) # (!counter(2) & (!\counter[1]~15\ & VCC))
-- \counter[2]~17\ = CARRY((counter(2) & !\counter[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~15\,
	combout => \counter[2]~16_combout\,
	cout => \counter[2]~17\);

-- Location: LCCOMB_X19_Y18_N12
\counter[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~18_combout\ = (counter(3) & (!\counter[2]~17\)) # (!counter(3) & ((\counter[2]~17\) # (GND)))
-- \counter[3]~19\ = CARRY((!\counter[2]~17\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~17\,
	combout => \counter[3]~18_combout\,
	cout => \counter[3]~19\);

-- Location: FF_X19_Y18_N13
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[3]~18_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X19_Y18_N14
\counter[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~20_combout\ = (counter(4) & (\counter[3]~19\ $ (GND))) # (!counter(4) & (!\counter[3]~19\ & VCC))
-- \counter[4]~21\ = CARRY((counter(4) & !\counter[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~19\,
	combout => \counter[4]~20_combout\,
	cout => \counter[4]~21\);

-- Location: FF_X19_Y18_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[4]~20_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X19_Y18_N16
\counter[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~22_combout\ = (counter(5) & (!\counter[4]~21\)) # (!counter(5) & ((\counter[4]~21\) # (GND)))
-- \counter[5]~23\ = CARRY((!\counter[4]~21\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~21\,
	combout => \counter[5]~22_combout\,
	cout => \counter[5]~23\);

-- Location: FF_X19_Y18_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[5]~22_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X19_Y18_N18
\counter[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~24_combout\ = (counter(6) & (\counter[5]~23\ $ (GND))) # (!counter(6) & (!\counter[5]~23\ & VCC))
-- \counter[6]~25\ = CARRY((counter(6) & !\counter[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~23\,
	combout => \counter[6]~24_combout\,
	cout => \counter[6]~25\);

-- Location: FF_X19_Y18_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[6]~24_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X19_Y18_N20
\counter[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~26_combout\ = (counter(7) & (!\counter[6]~25\)) # (!counter(7) & ((\counter[6]~25\) # (GND)))
-- \counter[7]~27\ = CARRY((!\counter[6]~25\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~25\,
	combout => \counter[7]~26_combout\,
	cout => \counter[7]~27\);

-- Location: FF_X19_Y18_N21
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[7]~26_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X19_Y18_N22
\counter[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[8]~28_combout\ = (counter(8) & (\counter[7]~27\ $ (GND))) # (!counter(8) & (!\counter[7]~27\ & VCC))
-- \counter[8]~29\ = CARRY((counter(8) & !\counter[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~27\,
	combout => \counter[8]~28_combout\,
	cout => \counter[8]~29\);

-- Location: FF_X19_Y18_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[8]~28_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X19_Y18_N24
\counter[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[9]~30_combout\ = (counter(9) & (!\counter[8]~29\)) # (!counter(9) & ((\counter[8]~29\) # (GND)))
-- \counter[9]~31\ = CARRY((!\counter[8]~29\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~29\,
	combout => \counter[9]~30_combout\,
	cout => \counter[9]~31\);

-- Location: FF_X19_Y18_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[9]~30_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X19_Y18_N26
\counter[10]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~32_combout\ = counter(10) $ (!\counter[9]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	cin => \counter[9]~31\,
	combout => \counter[10]~32_combout\);

-- Location: FF_X19_Y18_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[10]~32_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X19_Y18_N4
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!counter(3) & (!counter(7) & (counter(10) & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(7),
	datac => counter(10),
	datad => counter(6),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\process_2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~7_combout\ = (!counter(9) & (!counter(8) & !counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datac => counter(8),
	datad => counter(0),
	combout => \process_2~7_combout\);

-- Location: LCCOMB_X20_Y19_N4
\Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (counter(5) & (!counter(4) & !counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datac => counter(4),
	datad => counter(1),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X19_Y19_N18
\Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (\Equal12~0_combout\ & (\process_2~7_combout\ & (counter(2) & \Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \process_2~7_combout\,
	datac => counter(2),
	datad => \Equal12~1_combout\,
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X19_Y19_N10
\num_ch[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num_ch[0]~4_combout\ = (\update_all~q\ & !\i_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datad => \i_rst~input_o\,
	combout => \num_ch[0]~4_combout\);

-- Location: LCCOMB_X19_Y19_N24
\num_ch[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num_ch[0]~6_combout\ = (\num_ch[0]~5_combout\ & (((num_ch(0))))) # (!\num_ch[0]~5_combout\ & (\update_all~q\ & (!num_ch(0) & !\i_rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => \num_ch[0]~5_combout\,
	datac => num_ch(0),
	datad => \i_rst~input_o\,
	combout => \num_ch[0]~6_combout\);

-- Location: FF_X19_Y19_N25
\num_ch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \num_ch[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_ch(0));

-- Location: LCCOMB_X19_Y19_N22
\process_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~10_combout\ = (\update_all~q\ & (counter(2) & ((!num_ch(0)) # (!num_ch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => counter(2),
	datac => num_ch(1),
	datad => num_ch(0),
	combout => \process_2~10_combout\);

-- Location: LCCOMB_X20_Y18_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(6) & (counter(5) & counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datac => counter(5),
	datad => counter(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y18_N0
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(8) & (!counter(9) & (!counter(10) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(10),
	datad => counter(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y18_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(4) & (\Equal0~1_combout\ & (!counter(1) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \Equal0~1_combout\,
	datac => counter(1),
	datad => \LessThan0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X19_Y19_N20
\num_ch[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num_ch[0]~5_combout\ = (\num_ch[0]~4_combout\ & ((counter(0)) # ((!\Equal0~2_combout\) # (!\process_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_ch[0]~4_combout\,
	datab => counter(0),
	datac => \process_2~10_combout\,
	datad => \Equal0~2_combout\,
	combout => \num_ch[0]~5_combout\);

-- Location: LCCOMB_X19_Y19_N26
\num_ch[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num_ch[1]~7_combout\ = (\num_ch[0]~5_combout\ & (((num_ch(1))))) # (!\num_ch[0]~5_combout\ & (\num_ch[0]~4_combout\ & (num_ch(1) $ (num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num_ch[0]~4_combout\,
	datab => \num_ch[0]~5_combout\,
	datac => num_ch(1),
	datad => num_ch(0),
	combout => \num_ch[1]~7_combout\);

-- Location: FF_X19_Y19_N27
\num_ch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \num_ch[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_ch(1));

-- Location: LCCOMB_X19_Y19_N0
\mask_ldac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mask_ldac~0_combout\ = (\Equal12~2_combout\ & (((num_ch(1) & num_ch(0))) # (!\update_all~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => \Equal12~2_combout\,
	datac => num_ch(1),
	datad => num_ch(0),
	combout => \mask_ldac~0_combout\);

-- Location: LCCOMB_X17_Y20_N10
\init~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init~0_combout\ = (\init~q\ & (((\i_rst~input_o\) # (!\State.activ_signals~q\)) # (!\mask_ldac~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask_ldac~0_combout\,
	datab => \State.activ_signals~q\,
	datac => \i_rst~input_o\,
	datad => \init~q\,
	combout => \init~0_combout\);

-- Location: LCCOMB_X17_Y20_N4
\mask_update~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mask_update~1_combout\ = (!\State.activ_signals~q\ & !\i_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.activ_signals~q\,
	datac => \i_rst~input_o\,
	combout => \mask_update~1_combout\);

-- Location: LCCOMB_X17_Y20_N8
\init~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \init~1_combout\ = (\init~0_combout\) # ((\State.init_dac~q\ & (\start~q\ & \mask_update~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~0_combout\,
	datab => \State.init_dac~q\,
	datac => \start~q\,
	datad => \mask_update~1_combout\,
	combout => \init~1_combout\);

-- Location: FF_X17_Y20_N9
init : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \init~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init~q\);

-- Location: LCCOMB_X17_Y20_N0
\State~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~34_combout\ = (\done~q\ & (\State.activ_signals~q\ & ((!\update_all~q\) # (!\init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~q\,
	datab => \done~q\,
	datac => \State.activ_signals~q\,
	datad => \update_all~q\,
	combout => \State~34_combout\);

-- Location: LCCOMB_X17_Y20_N14
\State~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~26_combout\ = (\State.activ_signals~q\ & \done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.activ_signals~q\,
	datad => \done~q\,
	combout => \State~26_combout\);

-- Location: LCCOMB_X18_Y20_N2
\State~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~29_combout\ = (\done~q\ & ((\State.powcont_wait~q\) # ((\State.powcont_wait_2~q\) # (\State.outrange_wait~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.powcont_wait~q\,
	datab => \State.powcont_wait_2~q\,
	datac => \State.outrange_wait~q\,
	datad => \done~q\,
	combout => \State~29_combout\);

-- Location: LCCOMB_X18_Y20_N4
\State~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~30_combout\ = (!\State.activ_signals~q\ & ((\mask_update~q\) # (!\State.start_update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask_update~q\,
	datac => \State.start_update~q\,
	datad => \State.activ_signals~q\,
	combout => \State~30_combout\);

-- Location: LCCOMB_X17_Y20_N26
\State~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~32_combout\ = (\State.activ_signals~q\ & ((\done~q\ & ((\init~q\))) # (!\done~q\ & (\State.init_cont~q\)))) # (!\State.activ_signals~q\ & (\State.init_cont~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_cont~q\,
	datab => \init~q\,
	datac => \State.activ_signals~q\,
	datad => \done~q\,
	combout => \State~32_combout\);

-- Location: LCCOMB_X17_Y20_N22
\State~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~37_combout\ = (\init~q\ & (\State~26_combout\ & (!\i_rst~input_o\ & \update_all~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~q\,
	datab => \State~26_combout\,
	datac => \i_rst~input_o\,
	datad => \update_all~q\,
	combout => \State~37_combout\);

-- Location: LCCOMB_X17_Y20_N2
\State~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~33_combout\ = (\State~37_combout\) # ((\State~32_combout\ & (!\i_rst~input_o\ & \State~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~32_combout\,
	datab => \i_rst~input_o\,
	datac => \State~37_combout\,
	datad => \State~31_combout\,
	combout => \State~33_combout\);

-- Location: FF_X17_Y20_N3
\State.init_cont\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \State~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.init_cont~q\);

-- Location: LCCOMB_X18_Y20_N22
\State~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~27_combout\ = (\State.init_cont~q\) # ((\State.init_dac~q\) # ((\State.start_update~q\) # (!\State.init_outrange~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_cont~q\,
	datab => \State.init_dac~q\,
	datac => \State.start_update~q\,
	datad => \State.init_outrange~q\,
	combout => \State~27_combout\);

-- Location: LCCOMB_X18_Y20_N16
\State~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~28_combout\ = (\start~q\ & ((\State.init_powcont_2~q\) # ((\State.init_powcont~q\) # (\State~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_powcont_2~q\,
	datab => \State.init_powcont~q\,
	datac => \State~27_combout\,
	datad => \start~q\,
	combout => \State~28_combout\);

-- Location: LCCOMB_X18_Y20_N6
\State~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~31_combout\ = (!\State~26_combout\ & (((!\State~29_combout\ & !\State~28_combout\)) # (!\State~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~26_combout\,
	datab => \State~29_combout\,
	datac => \State~30_combout\,
	datad => \State~28_combout\,
	combout => \State~31_combout\);

-- Location: LCCOMB_X17_Y20_N16
\State~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \State~35_combout\ = (\State~34_combout\) # ((\State.start_update~q\ & \State~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State~34_combout\,
	datac => \State.start_update~q\,
	datad => \State~31_combout\,
	combout => \State~35_combout\);

-- Location: FF_X17_Y20_N17
\State.start_update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \State~35_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.start_update~q\);

-- Location: LCCOMB_X18_Y20_N10
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\State.init_dac~q\) # ((\State.init_cont~q\) # ((\mask_update~q\ & \State.start_update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask_update~q\,
	datab => \State.init_dac~q\,
	datac => \State.start_update~q\,
	datad => \State.init_cont~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X18_Y20_N0
\Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\ & (((\State.activ_signals~q\) # (\start~q\)))) # (!\Selector10~0_combout\ & (!\done~q\ & (\State.activ_signals~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \done~q\,
	datac => \State.activ_signals~q\,
	datad => \start~q\,
	combout => \Selector10~1_combout\);

-- Location: FF_X18_Y20_N1
\State.activ_signals\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.activ_signals~q\);

-- Location: LCCOMB_X17_Y20_N30
\mask_update~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mask_update~2_combout\ = (((\i_rst~input_o\) # (\update_all~q\)) # (!\done~q\)) # (!\State.activ_signals~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.activ_signals~q\,
	datab => \done~q\,
	datac => \i_rst~input_o\,
	datad => \update_all~q\,
	combout => \mask_update~2_combout\);

-- Location: LCCOMB_X16_Y21_N4
\mask_update~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mask_update~0_combout\ = (\i_update~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_update~input_o\,
	datad => \State.start_update~q\,
	combout => \mask_update~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\mask_update~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mask_update~3_combout\ = (\mask_update~2_combout\ & ((\mask_update~q\) # ((\mask_update~1_combout\ & \mask_update~0_combout\)))) # (!\mask_update~2_combout\ & (\mask_update~1_combout\ & ((\mask_update~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask_update~2_combout\,
	datab => \mask_update~1_combout\,
	datac => \mask_update~q\,
	datad => \mask_update~0_combout\,
	combout => \mask_update~3_combout\);

-- Location: FF_X17_Y20_N13
mask_update : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \mask_update~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mask_update~q\);

-- Location: LCCOMB_X18_Y21_N30
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\start~q\ & (!\mask_update~q\ & (\State.start_update~q\))) # (!\start~q\ & ((\State.init_dac~q\) # ((\mask_update~q\ & \State.start_update~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask_update~q\,
	datab => \start~q\,
	datac => \State.start_update~q\,
	datad => \State.init_dac~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X18_Y19_N0
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\State.init_powcont_2~q\ & (!\State.init_powcont~q\ & (\State.init_outrange~q\ & !\State.init_cont~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_powcont_2~q\,
	datab => \State.init_powcont~q\,
	datac => \State.init_outrange~q\,
	datad => \State.init_cont~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X18_Y20_N28
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\State.powcont_wait~q\) # ((\State.powcont_wait_2~q\) # ((\State.outrange_wait~q\) # (\State.activ_signals~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.powcont_wait~q\,
	datab => \State.powcont_wait_2~q\,
	datac => \State.outrange_wait~q\,
	datad => \State.activ_signals~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X18_Y20_N12
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~2_combout\) # ((\start~q\ & ((\Selector0~0_combout\))) # (!\start~q\ & (!\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \Selector0~1_combout\,
	datac => \start~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X18_Y20_N13
start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start~q\);

-- Location: LCCOMB_X18_Y21_N2
\Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\State.init_dac~q\ & (((\mask_ldac~q\) # (!\start~q\)))) # (!\State.init_dac~q\ & (!\State.activ_signals~q\ & (\mask_ldac~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_dac~q\,
	datab => \State.activ_signals~q\,
	datac => \mask_ldac~q\,
	datad => \start~q\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X18_Y21_N24
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\State.start_update~q\ & ((\mask_ldac~q\) # ((!\start~q\ & \mask_update~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datab => \start~q\,
	datac => \mask_ldac~q\,
	datad => \mask_update~q\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X18_Y21_N8
\Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector37~1_combout\) # ((\Selector37~0_combout\) # ((\mask_ldac~q\ & !\mask_ldac~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~1_combout\,
	datab => \Selector37~0_combout\,
	datac => \mask_ldac~q\,
	datad => \mask_ldac~0_combout\,
	combout => \Selector37~2_combout\);

-- Location: FF_X18_Y21_N9
mask_ldac : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector37~2_combout\,
	asdata => VCC,
	sload => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mask_ldac~q\);

-- Location: LCCOMB_X19_Y19_N14
\process_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~8_combout\ = (counter(1) & (!counter(5) & (counter(4) & !\mask_ldac~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(5),
	datac => counter(4),
	datad => \mask_ldac~q\,
	combout => \process_2~8_combout\);

-- Location: LCCOMB_X19_Y19_N8
\process_2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~9_combout\ = (\Equal12~0_combout\ & (counter(2) & (\process_2~8_combout\ & \process_2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => counter(2),
	datac => \process_2~8_combout\,
	datad => \process_2~7_combout\,
	combout => \process_2~9_combout\);

-- Location: LCCOMB_X19_Y19_N12
\done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\process_2~9_combout\) # ((\Equal12~2_combout\ & \mask_ldac~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal12~2_combout\,
	datac => \process_2~9_combout\,
	datad => \mask_ldac~q\,
	combout => \done~0_combout\);

-- Location: LCCOMB_X19_Y19_N2
\done~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \done~1_combout\ = (\done~0_combout\) # ((!counter(0) & (\process_2~10_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done~0_combout\,
	datab => counter(0),
	datac => \process_2~10_combout\,
	datad => \Equal0~2_combout\,
	combout => \done~1_combout\);

-- Location: LCCOMB_X18_Y20_N18
\done~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \done~2_combout\ = (\done~1_combout\) # ((!\start~q\ & \done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~q\,
	datac => \done~q\,
	datad => \done~1_combout\,
	combout => \done~2_combout\);

-- Location: FF_X18_Y20_N19
done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \done~2_combout\,
	sclr => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~q\);

-- Location: LCCOMB_X18_Y21_N20
\counter[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~13_combout\ = (\i_rst~input_o\) # (\done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datad => \done~q\,
	combout => \counter[10]~13_combout\);

-- Location: FF_X19_Y18_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[0]~11_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X19_Y18_N8
\counter[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~14_combout\ = (counter(1) & (!\counter[0]~12\)) # (!counter(1) & ((\counter[0]~12\) # (GND)))
-- \counter[1]~15\ = CARRY((!\counter[0]~12\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~12\,
	combout => \counter[1]~14_combout\,
	cout => \counter[1]~15\);

-- Location: FF_X19_Y18_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[1]~14_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: FF_X19_Y18_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \counter[2]~16_combout\,
	sclr => \counter[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X20_Y18_N28
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!counter(5) & (!counter(6) & (!counter(0) & !counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(6),
	datac => counter(0),
	datad => counter(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X20_Y18_N22
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!counter(2) & (\Equal1~0_combout\ & (counter(1) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Equal1~0_combout\,
	datac => counter(1),
	datad => \LessThan0~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X20_Y18_N6
\enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \enable~0_combout\ = (\start~q\) # (\enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~q\,
	datad => \enable~q\,
	combout => \enable~0_combout\);

-- Location: LCCOMB_X20_Y18_N18
\enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \enable~1_combout\ = (\enable~0_combout\ & ((counter(2)) # ((!counter(0)) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Equal0~2_combout\,
	datac => counter(0),
	datad => \enable~0_combout\,
	combout => \enable~1_combout\);

-- Location: FF_X20_Y18_N19
enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \enable~1_combout\,
	ena => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable~q\);

-- Location: LCCOMB_X20_Y18_N26
\sync_dac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_dac~0_combout\ = (\enable~q\ & ((\sync_dac~q\) # ((\Equal1~1_combout\ & counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \enable~q\,
	datac => \sync_dac~q\,
	datad => counter(3),
	combout => \sync_dac~0_combout\);

-- Location: FF_X20_Y18_N27
sync_dac : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sync_dac~0_combout\,
	ena => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_dac~q\);

-- Location: LCCOMB_X20_Y18_N14
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(4) & (!counter(6) & (!counter(5) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => counter(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y18_N16
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (counter(0)) # ((\LessThan0~1_combout\ & ((!counter(2)) # (!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \LessThan0~1_combout\,
	datac => counter(0),
	datad => counter(2),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X20_Y18_N0
\clock_dac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_dac~0_combout\ = (\sync_dac~q\ & (!\i_rst~input_o\ & (\process_1~0_combout\ $ (!\clock_dac~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_dac~q\,
	datab => \process_1~0_combout\,
	datac => \clock_dac~q\,
	datad => \i_rst~input_o\,
	combout => \clock_dac~0_combout\);

-- Location: FF_X20_Y18_N1
clock_dac : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clock_dac~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_dac~q\);

-- Location: LCCOMB_X20_Y19_N18
\wrt[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wrt[0]~5_combout\ = wrt(0) $ (VCC)
-- \wrt[0]~6\ = CARRY(wrt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wrt(0),
	datad => VCC,
	combout => \wrt[0]~5_combout\,
	cout => \wrt[0]~6\);

-- Location: LCCOMB_X20_Y19_N6
\process_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (counter(2) & (wrt(0) & (counter(3) $ (wrt(1))))) # (!counter(2) & (!wrt(0) & (counter(3) $ (wrt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => wrt(0),
	datac => counter(3),
	datad => wrt(1),
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X20_Y19_N8
\process_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = (!counter(10) & (counter(4) $ (wrt(2) $ (!wrt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(10),
	datac => wrt(2),
	datad => wrt(1),
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X19_Y18_N2
\process_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (!counter(0) & (!counter(9) & (!counter(8) & \enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(9),
	datac => counter(8),
	datad => \enable~q\,
	combout => \process_2~2_combout\);

-- Location: LCCOMB_X20_Y19_N10
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = counter(5) $ (wrt(3) $ (((wrt(2) & wrt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => wrt(3),
	datac => wrt(2),
	datad => wrt(1),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X20_Y19_N28
\process_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~4_combout\ = (\process_2~1_combout\ & (\process_2~3_combout\ & (\process_2~2_combout\ & !\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \process_2~3_combout\,
	datac => \process_2~2_combout\,
	datad => \Equal8~0_combout\,
	combout => \process_2~4_combout\);

-- Location: LCCOMB_X20_Y19_N16
\data_dac~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dac~1_combout\ = (((\i_rst~input_o\) # (!counter(1))) # (!\process_2~4_combout\)) # (!\process_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \process_2~4_combout\,
	datac => \i_rst~input_o\,
	datad => counter(1),
	combout => \data_dac~1_combout\);

-- Location: LCCOMB_X19_Y19_N16
\wrt[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wrt[0]~9_combout\ = (!counter(0) & (\process_2~10_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => \process_2~10_combout\,
	datad => \Equal0~2_combout\,
	combout => \wrt[0]~9_combout\);

-- Location: LCCOMB_X20_Y19_N30
\process_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~5_combout\ = (\process_2~0_combout\ & (\process_2~4_combout\ & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \process_2~4_combout\,
	datad => counter(1),
	combout => \process_2~5_combout\);

-- Location: LCCOMB_X20_Y19_N14
\wrt[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wrt[0]~10_combout\ = (\wrt[0]~9_combout\) # ((\process_2~5_combout\) # ((\i_rst~input_o\) # (\done~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrt[0]~9_combout\,
	datab => \process_2~5_combout\,
	datac => \i_rst~input_o\,
	datad => \done~0_combout\,
	combout => \wrt[0]~10_combout\);

-- Location: FF_X20_Y19_N19
\wrt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \wrt[0]~5_combout\,
	sclr => \data_dac~1_combout\,
	ena => \wrt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrt(0));

-- Location: LCCOMB_X20_Y19_N20
\wrt[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wrt[1]~7_combout\ = (wrt(1) & (!\wrt[0]~6\)) # (!wrt(1) & ((\wrt[0]~6\) # (GND)))
-- \wrt[1]~8\ = CARRY((!\wrt[0]~6\) # (!wrt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wrt(1),
	datad => VCC,
	cin => \wrt[0]~6\,
	combout => \wrt[1]~7_combout\,
	cout => \wrt[1]~8\);

-- Location: FF_X20_Y19_N21
\wrt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \wrt[1]~7_combout\,
	sclr => \data_dac~1_combout\,
	ena => \wrt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrt(1));

-- Location: LCCOMB_X20_Y19_N22
\wrt[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wrt[2]~11_combout\ = (wrt(2) & (\wrt[1]~8\ $ (GND))) # (!wrt(2) & (!\wrt[1]~8\ & VCC))
-- \wrt[2]~12\ = CARRY((wrt(2) & !\wrt[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wrt(2),
	datad => VCC,
	cin => \wrt[1]~8\,
	combout => \wrt[2]~11_combout\,
	cout => \wrt[2]~12\);

-- Location: FF_X20_Y19_N23
\wrt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \wrt[2]~11_combout\,
	sclr => \data_dac~1_combout\,
	ena => \wrt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrt(2));

-- Location: LCCOMB_X20_Y19_N24
\wrt[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wrt[3]~13_combout\ = (wrt(3) & (!\wrt[2]~12\)) # (!wrt(3) & ((\wrt[2]~12\) # (GND)))
-- \wrt[3]~14\ = CARRY((!\wrt[2]~12\) # (!wrt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wrt(3),
	datad => VCC,
	cin => \wrt[2]~12\,
	combout => \wrt[3]~13_combout\,
	cout => \wrt[3]~14\);

-- Location: FF_X20_Y19_N25
\wrt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \wrt[3]~13_combout\,
	sclr => \data_dac~1_combout\,
	ena => \wrt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrt(3));

-- Location: LCCOMB_X20_Y19_N26
\wrt[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wrt[4]~15_combout\ = wrt(4) $ (!\wrt[3]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wrt(4),
	cin => \wrt[3]~14\,
	combout => \wrt[4]~15_combout\);

-- Location: FF_X20_Y19_N27
\wrt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \wrt[4]~15_combout\,
	sclr => \data_dac~1_combout\,
	ena => \wrt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrt(4));

-- Location: LCCOMB_X20_Y19_N2
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (wrt(3) & (wrt(2) & wrt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wrt(3),
	datac => wrt(2),
	datad => wrt(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X20_Y19_N12
\process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (counter(6) & (!counter(7) & (wrt(4) $ (\Add2~0_combout\)))) # (!counter(6) & ((counter(7) & (wrt(4) & \Add2~0_combout\)) # (!counter(7) & (!wrt(4) & !\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(7),
	datac => wrt(4),
	datad => \Add2~0_combout\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X17_Y19_N8
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\i_channel[2]~input_o\ & \i_channel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[2]~input_o\,
	datac => \i_channel[1]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X18_Y19_N24
\data[20]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[20]~0_combout\ = (\start~q\) # ((\State.init_outrange~q\ & (!\State.init_powcont~q\ & !\State.init_powcont_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_outrange~q\,
	datab => \State.init_powcont~q\,
	datac => \State.init_powcont_2~q\,
	datad => \start~q\,
	combout => \data[20]~0_combout\);

-- Location: LCCOMB_X18_Y19_N2
\data[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[20]~1_combout\ = (!\i_rst~input_o\ & (((\mask_update~0_combout\ & !\Mux24~0_combout\)) # (!\data[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask_update~0_combout\,
	datab => \data[20]~0_combout\,
	datac => \Mux24~0_combout\,
	datad => \i_rst~input_o\,
	combout => \data[20]~1_combout\);

-- Location: FF_X17_Y19_N9
\data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	sclr => \ALT_INV_State.start_update~q\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(17));

-- Location: LCCOMB_X17_Y19_N20
\data_B[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_B[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \data_B[16]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N30
\Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\State.init_dac~q\ & !\start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.init_dac~q\,
	datad => \start~q\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X16_Y21_N8
\data_B[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_B[16]~0_combout\ = (!\i_rst~input_o\ & ((\Selector0~4_combout\) # ((\mask_update~0_combout\ & \Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datab => \mask_update~0_combout\,
	datac => \i_rst~input_o\,
	datad => \Mux24~0_combout\,
	combout => \data_B[16]~0_combout\);

-- Location: FF_X17_Y19_N21
\data_B[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \data_B[16]~feeder_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(16));

-- Location: LCCOMB_X17_Y19_N14
\trn_data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~21_combout\ = (data_B(16) & num_ch(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_B(16),
	datac => num_ch(1),
	combout => \trn_data~21_combout\);

-- Location: LCCOMB_X18_Y19_N22
\trn_data[17]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[17]~0_combout\ = (\update_all~q\ & ((\trn_data~21_combout\))) # (!\update_all~q\ & (data(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(17),
	datab => \trn_data~21_combout\,
	datad => \update_all~q\,
	combout => \trn_data[17]~0_combout\);

-- Location: LCCOMB_X17_Y19_N10
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\i_channel[0]~input_o\ & !\i_channel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[0]~input_o\,
	datad => \i_channel[2]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: FF_X17_Y19_N11
\data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	sclr => \ALT_INV_State.start_update~q\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(16));

-- Location: LCCOMB_X17_Y19_N24
\trn_data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~22_combout\ = (data_B(16) & num_ch(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_B(16),
	datad => num_ch(0),
	combout => \trn_data~22_combout\);

-- Location: LCCOMB_X18_Y19_N4
\trn_data[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[16]~1_combout\ = (\update_all~q\ & ((\trn_data~22_combout\))) # (!\update_all~q\ & (data(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(16),
	datab => \trn_data~22_combout\,
	datad => \update_all~q\,
	combout => \trn_data[16]~1_combout\);

-- Location: IOIBUF_X31_Y19_N8
\i_data_maam_g[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(11),
	o => \i_data_maam_g[11]~input_o\);

-- Location: LCCOMB_X19_Y21_N30
\Selector118~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\State.start_update~q\ & \i_data_maam_g[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datad => \i_data_maam_g[11]~input_o\,
	combout => \Selector118~0_combout\);

-- Location: FF_X19_Y21_N31
\data_D[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector118~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(15));

-- Location: IOIBUF_X13_Y25_N29
\i_data_att2_dac[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(11),
	o => \i_data_att2_dac[11]~input_o\);

-- Location: LCCOMB_X17_Y20_N20
\Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\i_data_att2_dac[11]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_att2_dac[11]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector70~0_combout\);

-- Location: FF_X17_Y20_N21
\data_B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(15));

-- Location: IOIBUF_X27_Y25_N15
\i_data_maam_i[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(11),
	o => \i_data_maam_i[11]~input_o\);

-- Location: LCCOMB_X19_Y21_N10
\Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\State.start_update~q\ & \i_data_maam_i[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datac => \i_data_maam_i[11]~input_o\,
	combout => \Selector94~0_combout\);

-- Location: FF_X19_Y21_N11
\data_C[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(15));

-- Location: LCCOMB_X19_Y21_N20
\trn_data~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~23_combout\ = (num_ch(1) & ((num_ch(0)) # ((data_C(15))))) # (!num_ch(1) & (num_ch(0) & (data_B(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(1),
	datab => num_ch(0),
	datac => data_B(15),
	datad => data_C(15),
	combout => \trn_data~23_combout\);

-- Location: LCCOMB_X19_Y19_N6
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = num_ch(1) $ (num_ch(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_ch(1),
	datad => num_ch(0),
	combout => \Add1~0_combout\);

-- Location: IOIBUF_X29_Y25_N1
\i_data_att1_dac[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(11),
	o => \i_data_att1_dac[11]~input_o\);

-- Location: LCCOMB_X19_Y21_N24
\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\i_data_att1_dac[11]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datad => \i_data_att1_dac[11]~input_o\,
	combout => \Selector46~0_combout\);

-- Location: FF_X19_Y21_N25
\data_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(15));

-- Location: LCCOMB_X19_Y21_N8
\trn_data~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~24_combout\ = (\trn_data~23_combout\ & ((data_D(15)) # ((\Add1~0_combout\)))) # (!\trn_data~23_combout\ & (((!\Add1~0_combout\ & data_A(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_D(15),
	datab => \trn_data~23_combout\,
	datac => \Add1~0_combout\,
	datad => data_A(15),
	combout => \trn_data~24_combout\);

-- Location: LCCOMB_X19_Y21_N2
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\i_channel[1]~input_o\ & (\i_channel[0]~input_o\)) # (!\i_channel[1]~input_o\ & ((\i_channel[0]~input_o\ & (\i_data_att2_dac[11]~input_o\)) # (!\i_channel[0]~input_o\ & ((\i_data_att1_dac[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[1]~input_o\,
	datab => \i_channel[0]~input_o\,
	datac => \i_data_att2_dac[11]~input_o\,
	datad => \i_data_att1_dac[11]~input_o\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X19_Y21_N4
\Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\i_channel[1]~input_o\ & ((\Selector19~0_combout\ & ((\i_data_maam_g[11]~input_o\))) # (!\Selector19~0_combout\ & (\i_data_maam_i[11]~input_o\)))) # (!\i_channel[1]~input_o\ & (((\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_maam_i[11]~input_o\,
	datab => \i_data_maam_g[11]~input_o\,
	datac => \i_channel[1]~input_o\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X16_Y21_N26
\Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\State.start_update~q\ & (!\i_channel[2]~input_o\ & \Selector19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \i_channel[2]~input_o\,
	datad => \Selector19~1_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X16_Y21_N27
\data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector19~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(15));

-- Location: LCCOMB_X16_Y19_N0
\trn_data[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[15]~2_combout\ = (\update_all~q\ & (\trn_data~24_combout\)) # (!\update_all~q\ & ((data(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => \trn_data~24_combout\,
	datad => data(15),
	combout => \trn_data[15]~2_combout\);

-- Location: IOIBUF_X11_Y25_N15
\i_data_maam_g[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(10),
	o => \i_data_maam_g[10]~input_o\);

-- Location: LCCOMB_X16_Y21_N22
\Selector119~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\i_data_maam_g[10]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_maam_g[10]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector119~0_combout\);

-- Location: FF_X16_Y21_N23
\data_D[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector119~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(14));

-- Location: IOIBUF_X10_Y21_N22
\i_data_att1_dac[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(10),
	o => \i_data_att1_dac[10]~input_o\);

-- Location: LCCOMB_X16_Y21_N14
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\i_data_att1_dac[10]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_att1_dac[10]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X16_Y21_N15
\data_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(14));

-- Location: IOIBUF_X13_Y25_N8
\i_data_maam_i[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(10),
	o => \i_data_maam_i[10]~input_o\);

-- Location: LCCOMB_X16_Y21_N24
\Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\i_data_maam_i[10]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_maam_i[10]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector95~0_combout\);

-- Location: FF_X16_Y21_N25
\data_C[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(14));

-- Location: IOIBUF_X11_Y0_N8
\i_data_att2_dac[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(10),
	o => \i_data_att2_dac[10]~input_o\);

-- Location: LCCOMB_X16_Y21_N18
\Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\i_data_att2_dac[10]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_att2_dac[10]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector71~0_combout\);

-- Location: FF_X16_Y21_N19
\data_B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(14));

-- Location: LCCOMB_X16_Y21_N12
\trn_data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~25_combout\ = (num_ch(0) & (((data_B(14)) # (num_ch(1))))) # (!num_ch(0) & (data_C(14) & ((num_ch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(0),
	datab => data_C(14),
	datac => data_B(14),
	datad => num_ch(1),
	combout => \trn_data~25_combout\);

-- Location: LCCOMB_X16_Y21_N0
\trn_data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~26_combout\ = (\Add1~0_combout\ & (((\trn_data~25_combout\)))) # (!\Add1~0_combout\ & ((\trn_data~25_combout\ & (data_D(14))) # (!\trn_data~25_combout\ & ((data_A(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_D(14),
	datab => data_A(14),
	datac => \Add1~0_combout\,
	datad => \trn_data~25_combout\,
	combout => \trn_data~26_combout\);

-- Location: LCCOMB_X16_Y21_N10
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\i_channel[0]~input_o\ & (((\i_channel[1]~input_o\)))) # (!\i_channel[0]~input_o\ & ((\i_channel[1]~input_o\ & ((\i_data_maam_i[10]~input_o\))) # (!\i_channel[1]~input_o\ & (\i_data_att1_dac[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[10]~input_o\,
	datab => \i_channel[0]~input_o\,
	datac => \i_channel[1]~input_o\,
	datad => \i_data_maam_i[10]~input_o\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X16_Y21_N28
\Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\i_channel[0]~input_o\ & ((\Selector20~0_combout\ & (\i_data_maam_g[10]~input_o\)) # (!\Selector20~0_combout\ & ((\i_data_att2_dac[10]~input_o\))))) # (!\i_channel[0]~input_o\ & (((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_maam_g[10]~input_o\,
	datab => \i_channel[0]~input_o\,
	datac => \i_data_att2_dac[10]~input_o\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X16_Y21_N20
\Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\Selector20~1_combout\ & (!\i_channel[2]~input_o\ & \State.start_update~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector20~1_combout\,
	datac => \i_channel[2]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector20~2_combout\);

-- Location: FF_X16_Y21_N21
\data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector20~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(14));

-- Location: LCCOMB_X16_Y19_N8
\trn_data[14]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[14]~3_combout\ = (\update_all~q\ & (\trn_data~26_combout\)) # (!\update_all~q\ & ((data(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trn_data~26_combout\,
	datab => data(14),
	datad => \update_all~q\,
	combout => \trn_data[14]~3_combout\);

-- Location: IOIBUF_X11_Y25_N29
\i_data_maam_i[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(9),
	o => \i_data_maam_i[9]~input_o\);

-- Location: IOIBUF_X31_Y17_N8
\i_data_maam_g[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(9),
	o => \i_data_maam_g[9]~input_o\);

-- Location: IOIBUF_X3_Y10_N8
\i_data_att1_dac[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(9),
	o => \i_data_att1_dac[9]~input_o\);

-- Location: IOIBUF_X31_Y12_N22
\i_data_att2_dac[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(9),
	o => \i_data_att2_dac[9]~input_o\);

-- Location: LCCOMB_X16_Y17_N10
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\i_channel[1]~input_o\ & (((\i_channel[0]~input_o\)))) # (!\i_channel[1]~input_o\ & ((\i_channel[0]~input_o\ & ((\i_data_att2_dac[9]~input_o\))) # (!\i_channel[0]~input_o\ & (\i_data_att1_dac[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[9]~input_o\,
	datab => \i_channel[1]~input_o\,
	datac => \i_channel[0]~input_o\,
	datad => \i_data_att2_dac[9]~input_o\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X16_Y17_N12
\Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\i_channel[1]~input_o\ & ((\Selector21~0_combout\ & ((\i_data_maam_g[9]~input_o\))) # (!\Selector21~0_combout\ & (\i_data_maam_i[9]~input_o\)))) # (!\i_channel[1]~input_o\ & (((\Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_maam_i[9]~input_o\,
	datab => \i_channel[1]~input_o\,
	datac => \i_data_maam_g[9]~input_o\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X17_Y19_N2
\Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\State.start_update~q\ & (\Selector21~1_combout\ & !\i_channel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \Selector21~1_combout\,
	datad => \i_channel[2]~input_o\,
	combout => \Selector21~2_combout\);

-- Location: FF_X17_Y19_N3
\data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector21~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(13));

-- Location: LCCOMB_X16_Y17_N30
\Selector120~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\i_data_maam_g[9]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datac => \i_data_maam_g[9]~input_o\,
	combout => \Selector120~0_combout\);

-- Location: FF_X16_Y17_N31
\data_D[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector120~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(13));

-- Location: LCCOMB_X16_Y17_N0
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\i_data_att1_dac[9]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[9]~input_o\,
	datac => \State.start_update~q\,
	combout => \Selector48~0_combout\);

-- Location: FF_X16_Y17_N1
\data_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(13));

-- Location: LCCOMB_X19_Y19_N28
\Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\i_data_maam_i[9]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_maam_i[9]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector96~0_combout\);

-- Location: FF_X19_Y19_N29
\data_C[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(13));

-- Location: LCCOMB_X16_Y17_N26
\Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\State.start_update~q\ & \i_data_att2_dac[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.start_update~q\,
	datad => \i_data_att2_dac[9]~input_o\,
	combout => \Selector72~0_combout\);

-- Location: FF_X16_Y17_N27
\data_B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(13));

-- Location: LCCOMB_X16_Y17_N4
\trn_data~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~27_combout\ = (num_ch(1) & ((data_C(13)) # ((num_ch(0))))) # (!num_ch(1) & (((data_B(13) & num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(1),
	datab => data_C(13),
	datac => data_B(13),
	datad => num_ch(0),
	combout => \trn_data~27_combout\);

-- Location: LCCOMB_X16_Y17_N16
\trn_data~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~28_combout\ = (\trn_data~27_combout\ & ((data_D(13)) # ((\Add1~0_combout\)))) # (!\trn_data~27_combout\ & (((data_A(13) & !\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_D(13),
	datab => data_A(13),
	datac => \trn_data~27_combout\,
	datad => \Add1~0_combout\,
	combout => \trn_data~28_combout\);

-- Location: LCCOMB_X16_Y19_N14
\trn_data[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[13]~4_combout\ = (\update_all~q\ & ((\trn_data~28_combout\))) # (!\update_all~q\ & (data(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(13),
	datab => \trn_data~28_combout\,
	datad => \update_all~q\,
	combout => \trn_data[13]~4_combout\);

-- Location: IOIBUF_X10_Y22_N22
\i_data_att2_dac[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(8),
	o => \i_data_att2_dac[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\i_data_maam_g[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(8),
	o => \i_data_maam_g[8]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\i_data_att1_dac[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(8),
	o => \i_data_att1_dac[8]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\i_data_maam_i[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(8),
	o => \i_data_maam_i[8]~input_o\);

-- Location: LCCOMB_X16_Y18_N18
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\i_channel[0]~input_o\ & (((\i_channel[1]~input_o\)))) # (!\i_channel[0]~input_o\ & ((\i_channel[1]~input_o\ & ((\i_data_maam_i[8]~input_o\))) # (!\i_channel[1]~input_o\ & (\i_data_att1_dac[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[8]~input_o\,
	datab => \i_data_maam_i[8]~input_o\,
	datac => \i_channel[0]~input_o\,
	datad => \i_channel[1]~input_o\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X16_Y18_N12
\Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\i_channel[0]~input_o\ & ((\Selector22~0_combout\ & ((\i_data_maam_g[8]~input_o\))) # (!\Selector22~0_combout\ & (\i_data_att2_dac[8]~input_o\)))) # (!\i_channel[0]~input_o\ & (((\Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[0]~input_o\,
	datab => \i_data_att2_dac[8]~input_o\,
	datac => \i_data_maam_g[8]~input_o\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X16_Y18_N8
\Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\Selector22~1_combout\ & (\State.start_update~q\ & !\i_channel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~1_combout\,
	datab => \State.start_update~q\,
	datad => \i_channel[2]~input_o\,
	combout => \Selector22~2_combout\);

-- Location: FF_X16_Y18_N9
\data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector22~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(12));

-- Location: LCCOMB_X16_Y18_N26
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\i_data_att1_dac[8]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_att1_dac[8]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector49~0_combout\);

-- Location: FF_X16_Y18_N27
\data_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(12));

-- Location: LCCOMB_X16_Y18_N14
\Selector121~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\i_data_maam_g[8]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_maam_g[8]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector121~0_combout\);

-- Location: FF_X16_Y18_N15
\data_D[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector121~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(12));

-- Location: LCCOMB_X17_Y20_N6
\Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\i_data_maam_i[8]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_maam_i[8]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector97~0_combout\);

-- Location: FF_X17_Y20_N7
\data_C[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(12));

-- Location: LCCOMB_X17_Y20_N24
\Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\i_data_att2_dac[8]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_att2_dac[8]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector73~0_combout\);

-- Location: FF_X17_Y20_N25
\data_B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(12));

-- Location: LCCOMB_X16_Y18_N4
\trn_data~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~29_combout\ = (num_ch(0) & (((data_B(12)) # (num_ch(1))))) # (!num_ch(0) & (data_C(12) & ((num_ch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(0),
	datab => data_C(12),
	datac => data_B(12),
	datad => num_ch(1),
	combout => \trn_data~29_combout\);

-- Location: LCCOMB_X16_Y18_N0
\trn_data~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~30_combout\ = (\trn_data~29_combout\ & (((data_D(12)) # (\Add1~0_combout\)))) # (!\trn_data~29_combout\ & (data_A(12) & ((!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_A(12),
	datab => data_D(12),
	datac => \trn_data~29_combout\,
	datad => \Add1~0_combout\,
	combout => \trn_data~30_combout\);

-- Location: LCCOMB_X16_Y19_N18
\trn_data[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[12]~5_combout\ = (\update_all~q\ & ((\trn_data~30_combout\))) # (!\update_all~q\ & (data(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(12),
	datab => \trn_data~30_combout\,
	datad => \update_all~q\,
	combout => \trn_data[12]~5_combout\);

-- Location: IOIBUF_X19_Y25_N8
\i_data_att2_dac[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(7),
	o => \i_data_att2_dac[7]~input_o\);

-- Location: LCCOMB_X19_Y21_N28
\Selector74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\i_data_att2_dac[7]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datac => \i_data_att2_dac[7]~input_o\,
	combout => \Selector74~0_combout\);

-- Location: FF_X19_Y21_N29
\data_B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(11));

-- Location: IOIBUF_X22_Y0_N29
\i_data_maam_i[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(7),
	o => \i_data_maam_i[7]~input_o\);

-- Location: LCCOMB_X19_Y21_N18
\Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\State.start_update~q\ & \i_data_maam_i[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datad => \i_data_maam_i[7]~input_o\,
	combout => \Selector98~0_combout\);

-- Location: FF_X19_Y21_N19
\data_C[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(11));

-- Location: LCCOMB_X19_Y21_N22
\trn_data~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~31_combout\ = (num_ch(1) & (((num_ch(0)) # (data_C(11))))) # (!num_ch(1) & (data_B(11) & (num_ch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(1),
	datab => data_B(11),
	datac => num_ch(0),
	datad => data_C(11),
	combout => \trn_data~31_combout\);

-- Location: IOIBUF_X29_Y25_N8
\i_data_maam_g[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(7),
	o => \i_data_maam_g[7]~input_o\);

-- Location: LCCOMB_X19_Y21_N16
\Selector122~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\State.start_update~q\ & \i_data_maam_g[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datad => \i_data_maam_g[7]~input_o\,
	combout => \Selector122~0_combout\);

-- Location: FF_X19_Y21_N17
\data_D[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector122~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(11));

-- Location: IOIBUF_X31_Y22_N22
\i_data_att1_dac[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(7),
	o => \i_data_att1_dac[7]~input_o\);

-- Location: LCCOMB_X19_Y21_N0
\Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\i_data_att1_dac[7]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datad => \i_data_att1_dac[7]~input_o\,
	combout => \Selector50~0_combout\);

-- Location: FF_X19_Y21_N1
\data_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(11));

-- Location: LCCOMB_X19_Y21_N26
\trn_data~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~32_combout\ = (\trn_data~31_combout\ & ((data_D(11)) # ((\Add1~0_combout\)))) # (!\trn_data~31_combout\ & (((!\Add1~0_combout\ & data_A(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trn_data~31_combout\,
	datab => data_D(11),
	datac => \Add1~0_combout\,
	datad => data_A(11),
	combout => \trn_data~32_combout\);

-- Location: LCCOMB_X19_Y21_N12
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\i_channel[1]~input_o\ & (\i_channel[0]~input_o\)) # (!\i_channel[1]~input_o\ & ((\i_channel[0]~input_o\ & (\i_data_att2_dac[7]~input_o\)) # (!\i_channel[0]~input_o\ & ((\i_data_att1_dac[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[1]~input_o\,
	datab => \i_channel[0]~input_o\,
	datac => \i_data_att2_dac[7]~input_o\,
	datad => \i_data_att1_dac[7]~input_o\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X19_Y21_N14
\Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\i_channel[1]~input_o\ & ((\Selector23~0_combout\ & (\i_data_maam_g[7]~input_o\)) # (!\Selector23~0_combout\ & ((\i_data_maam_i[7]~input_o\))))) # (!\i_channel[1]~input_o\ & (((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_maam_g[7]~input_o\,
	datab => \i_data_maam_i[7]~input_o\,
	datac => \i_channel[1]~input_o\,
	datad => \Selector23~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X19_Y21_N6
\Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\State.start_update~q\ & (!\i_channel[2]~input_o\ & \Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datab => \i_channel[2]~input_o\,
	datac => \Selector23~1_combout\,
	combout => \Selector23~2_combout\);

-- Location: FF_X19_Y21_N7
\data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector23~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(11));

-- Location: LCCOMB_X16_Y19_N16
\trn_data[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[11]~6_combout\ = (\update_all~q\ & (\trn_data~32_combout\)) # (!\update_all~q\ & ((data(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => \trn_data~32_combout\,
	datad => data(11),
	combout => \trn_data[11]~6_combout\);

-- Location: IOIBUF_X17_Y0_N29
\i_data_maam_g[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(6),
	o => \i_data_maam_g[6]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\i_data_att2_dac[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(6),
	o => \i_data_att2_dac[6]~input_o\);

-- Location: IOIBUF_X31_Y11_N15
\i_data_att1_dac[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(6),
	o => \i_data_att1_dac[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\i_data_maam_i[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(6),
	o => \i_data_maam_i[6]~input_o\);

-- Location: LCCOMB_X17_Y18_N12
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\i_channel[0]~input_o\ & (((\i_channel[1]~input_o\)))) # (!\i_channel[0]~input_o\ & ((\i_channel[1]~input_o\ & ((\i_data_maam_i[6]~input_o\))) # (!\i_channel[1]~input_o\ & (\i_data_att1_dac[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[6]~input_o\,
	datab => \i_data_maam_i[6]~input_o\,
	datac => \i_channel[0]~input_o\,
	datad => \i_channel[1]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X17_Y18_N14
\Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\i_channel[0]~input_o\ & ((\Selector24~0_combout\ & (\i_data_maam_g[6]~input_o\)) # (!\Selector24~0_combout\ & ((\i_data_att2_dac[6]~input_o\))))) # (!\i_channel[0]~input_o\ & (((\Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[0]~input_o\,
	datab => \i_data_maam_g[6]~input_o\,
	datac => \i_data_att2_dac[6]~input_o\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X17_Y19_N4
\Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\State.start_update~q\ & (\Selector24~1_combout\ & !\i_channel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \Selector24~1_combout\,
	datad => \i_channel[2]~input_o\,
	combout => \Selector24~2_combout\);

-- Location: FF_X17_Y19_N5
\data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector24~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(10));

-- Location: LCCOMB_X17_Y18_N10
\Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\i_data_maam_i[6]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_maam_i[6]~input_o\,
	datac => \State.start_update~q\,
	combout => \Selector99~0_combout\);

-- Location: FF_X17_Y18_N11
\data_C[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector99~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(10));

-- Location: LCCOMB_X17_Y18_N4
\Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\State.start_update~q\ & \i_data_att2_dac[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \i_data_att2_dac[6]~input_o\,
	combout => \Selector75~0_combout\);

-- Location: FF_X17_Y18_N5
\data_B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(10));

-- Location: LCCOMB_X17_Y18_N6
\trn_data~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~33_combout\ = (num_ch(1) & ((data_C(10)) # ((num_ch(0))))) # (!num_ch(1) & (((data_B(10) & num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_C(10),
	datab => num_ch(1),
	datac => data_B(10),
	datad => num_ch(0),
	combout => \trn_data~33_combout\);

-- Location: LCCOMB_X17_Y18_N0
\Selector123~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\i_data_maam_g[6]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_maam_g[6]~input_o\,
	datac => \State.start_update~q\,
	combout => \Selector123~0_combout\);

-- Location: FF_X17_Y18_N1
\data_D[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector123~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(10));

-- Location: LCCOMB_X17_Y18_N24
\Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\i_data_att1_dac[6]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[6]~input_o\,
	datac => \State.start_update~q\,
	combout => \Selector51~0_combout\);

-- Location: FF_X17_Y18_N25
\data_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(10));

-- Location: LCCOMB_X17_Y18_N2
\trn_data~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~34_combout\ = (\trn_data~33_combout\ & ((data_D(10)) # ((\Add1~0_combout\)))) # (!\trn_data~33_combout\ & (((data_A(10) & !\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trn_data~33_combout\,
	datab => data_D(10),
	datac => data_A(10),
	datad => \Add1~0_combout\,
	combout => \trn_data~34_combout\);

-- Location: LCCOMB_X16_Y19_N24
\trn_data[10]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[10]~7_combout\ = (\update_all~q\ & ((\trn_data~34_combout\))) # (!\update_all~q\ & (data(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(10),
	datab => \trn_data~34_combout\,
	datad => \update_all~q\,
	combout => \trn_data[10]~7_combout\);

-- Location: IOIBUF_X10_Y15_N15
\i_data_att1_dac[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(5),
	o => \i_data_att1_dac[5]~input_o\);

-- Location: LCCOMB_X16_Y18_N16
\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\i_data_att1_dac[5]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_att1_dac[5]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector52~0_combout\);

-- Location: FF_X16_Y18_N17
\data_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(9));

-- Location: IOIBUF_X31_Y12_N15
\i_data_maam_i[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(5),
	o => \i_data_maam_i[5]~input_o\);

-- Location: LCCOMB_X16_Y18_N2
\Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\i_data_maam_i[5]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datad => \i_data_maam_i[5]~input_o\,
	combout => \Selector100~0_combout\);

-- Location: FF_X16_Y18_N3
\data_C[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(9));

-- Location: IOIBUF_X15_Y0_N22
\i_data_att2_dac[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(5),
	o => \i_data_att2_dac[5]~input_o\);

-- Location: LCCOMB_X16_Y18_N28
\Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\i_data_att2_dac[5]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att2_dac[5]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector76~0_combout\);

-- Location: FF_X16_Y18_N29
\data_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(9));

-- Location: LCCOMB_X16_Y18_N30
\trn_data~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~35_combout\ = (num_ch(1) & ((data_C(9)) # ((num_ch(0))))) # (!num_ch(1) & (((data_B(9) & num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(1),
	datab => data_C(9),
	datac => data_B(9),
	datad => num_ch(0),
	combout => \trn_data~35_combout\);

-- Location: IOIBUF_X10_Y20_N15
\i_data_maam_g[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(5),
	o => \i_data_maam_g[5]~input_o\);

-- Location: LCCOMB_X16_Y18_N24
\Selector124~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\i_data_maam_g[5]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_maam_g[5]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector124~0_combout\);

-- Location: FF_X16_Y18_N25
\data_D[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector124~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(9));

-- Location: LCCOMB_X16_Y18_N10
\trn_data~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~36_combout\ = (\Add1~0_combout\ & (((\trn_data~35_combout\)))) # (!\Add1~0_combout\ & ((\trn_data~35_combout\ & ((data_D(9)))) # (!\trn_data~35_combout\ & (data_A(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => data_A(9),
	datac => \trn_data~35_combout\,
	datad => data_D(9),
	combout => \trn_data~36_combout\);

-- Location: LCCOMB_X16_Y18_N20
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\i_channel[0]~input_o\ & ((\i_data_att2_dac[5]~input_o\) # ((\i_channel[1]~input_o\)))) # (!\i_channel[0]~input_o\ & (((\i_data_att1_dac[5]~input_o\ & !\i_channel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att2_dac[5]~input_o\,
	datab => \i_data_att1_dac[5]~input_o\,
	datac => \i_channel[0]~input_o\,
	datad => \i_channel[1]~input_o\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X16_Y18_N22
\Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\i_channel[1]~input_o\ & ((\Selector25~0_combout\ & (\i_data_maam_g[5]~input_o\)) # (!\Selector25~0_combout\ & ((\i_data_maam_i[5]~input_o\))))) # (!\i_channel[1]~input_o\ & (\Selector25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[1]~input_o\,
	datab => \Selector25~0_combout\,
	datac => \i_data_maam_g[5]~input_o\,
	datad => \i_data_maam_i[5]~input_o\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X16_Y18_N6
\Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\State.start_update~q\ & (\Selector25~1_combout\ & !\i_channel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \Selector25~1_combout\,
	datad => \i_channel[2]~input_o\,
	combout => \Selector25~2_combout\);

-- Location: FF_X16_Y18_N7
\data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector25~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(9));

-- Location: LCCOMB_X16_Y19_N26
\trn_data[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[9]~8_combout\ = (\update_all~q\ & (\trn_data~36_combout\)) # (!\update_all~q\ & ((data(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trn_data~36_combout\,
	datab => data(9),
	datad => \update_all~q\,
	combout => \trn_data[9]~8_combout\);

-- Location: IOIBUF_X31_Y9_N15
\i_data_maam_i[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(4),
	o => \i_data_maam_i[4]~input_o\);

-- Location: LCCOMB_X17_Y18_N26
\Selector101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\i_data_maam_i[4]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_maam_i[4]~input_o\,
	datac => \State.start_update~q\,
	combout => \Selector101~0_combout\);

-- Location: FF_X17_Y18_N27
\data_C[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector101~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(8));

-- Location: IOIBUF_X6_Y10_N29
\i_data_att2_dac[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(4),
	o => \i_data_att2_dac[4]~input_o\);

-- Location: LCCOMB_X17_Y18_N20
\Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\i_data_att2_dac[4]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \i_data_att2_dac[4]~input_o\,
	combout => \Selector77~0_combout\);

-- Location: FF_X17_Y18_N21
\data_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(8));

-- Location: LCCOMB_X17_Y18_N30
\trn_data~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~37_combout\ = (num_ch(1) & ((data_C(8)) # ((num_ch(0))))) # (!num_ch(1) & (((data_B(8) & num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_C(8),
	datab => data_B(8),
	datac => num_ch(1),
	datad => num_ch(0),
	combout => \trn_data~37_combout\);

-- Location: IOIBUF_X10_Y18_N22
\i_data_maam_g[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(4),
	o => \i_data_maam_g[4]~input_o\);

-- Location: LCCOMB_X17_Y18_N16
\Selector125~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\State.start_update~q\ & \i_data_maam_g[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \i_data_maam_g[4]~input_o\,
	combout => \Selector125~0_combout\);

-- Location: FF_X17_Y18_N17
\data_D[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector125~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(8));

-- Location: IOIBUF_X10_Y15_N22
\i_data_att1_dac[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(4),
	o => \i_data_att1_dac[4]~input_o\);

-- Location: LCCOMB_X17_Y18_N8
\Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\i_data_att1_dac[4]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \i_data_att1_dac[4]~input_o\,
	combout => \Selector53~0_combout\);

-- Location: FF_X17_Y18_N9
\data_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(8));

-- Location: LCCOMB_X17_Y18_N18
\trn_data~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~38_combout\ = (\trn_data~37_combout\ & ((data_D(8)) # ((\Add1~0_combout\)))) # (!\trn_data~37_combout\ & (((data_A(8) & !\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trn_data~37_combout\,
	datab => data_D(8),
	datac => data_A(8),
	datad => \Add1~0_combout\,
	combout => \trn_data~38_combout\);

-- Location: LCCOMB_X17_Y18_N28
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\i_channel[0]~input_o\ & (((\i_channel[1]~input_o\)))) # (!\i_channel[0]~input_o\ & ((\i_channel[1]~input_o\ & (\i_data_maam_i[4]~input_o\)) # (!\i_channel[1]~input_o\ & ((\i_data_att1_dac[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[0]~input_o\,
	datab => \i_data_maam_i[4]~input_o\,
	datac => \i_data_att1_dac[4]~input_o\,
	datad => \i_channel[1]~input_o\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\i_channel[0]~input_o\ & ((\Selector26~0_combout\ & (\i_data_maam_g[4]~input_o\)) # (!\Selector26~0_combout\ & ((\i_data_att2_dac[4]~input_o\))))) # (!\i_channel[0]~input_o\ & (((\Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_maam_g[4]~input_o\,
	datab => \i_data_att2_dac[4]~input_o\,
	datac => \i_channel[0]~input_o\,
	datad => \Selector26~0_combout\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X16_Y21_N6
\Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\State.start_update~q\ & (!\i_channel[2]~input_o\ & \Selector26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \i_channel[2]~input_o\,
	datad => \Selector26~1_combout\,
	combout => \Selector26~2_combout\);

-- Location: FF_X16_Y21_N7
\data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector26~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(8));

-- Location: LCCOMB_X16_Y19_N20
\trn_data[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[8]~9_combout\ = (\update_all~q\ & (\trn_data~38_combout\)) # (!\update_all~q\ & ((data(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => \trn_data~38_combout\,
	datad => data(8),
	combout => \trn_data[8]~9_combout\);

-- Location: IOIBUF_X10_Y22_N15
\i_data_att2_dac[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(3),
	o => \i_data_att2_dac[3]~input_o\);

-- Location: IOIBUF_X6_Y10_N1
\i_data_att1_dac[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(3),
	o => \i_data_att1_dac[3]~input_o\);

-- Location: LCCOMB_X17_Y19_N12
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\i_channel[1]~input_o\ & (((\i_channel[0]~input_o\)))) # (!\i_channel[1]~input_o\ & ((\i_channel[0]~input_o\ & (\i_data_att2_dac[3]~input_o\)) # (!\i_channel[0]~input_o\ & ((\i_data_att1_dac[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att2_dac[3]~input_o\,
	datab => \i_channel[1]~input_o\,
	datac => \i_data_att1_dac[3]~input_o\,
	datad => \i_channel[0]~input_o\,
	combout => \Selector27~0_combout\);

-- Location: IOIBUF_X6_Y10_N22
\i_data_maam_g[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(3),
	o => \i_data_maam_g[3]~input_o\);

-- Location: IOIBUF_X31_Y11_N22
\i_data_maam_i[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(3),
	o => \i_data_maam_i[3]~input_o\);

-- Location: LCCOMB_X17_Y19_N30
\Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\Selector27~0_combout\ & ((\i_data_maam_g[3]~input_o\) # ((!\i_channel[1]~input_o\)))) # (!\Selector27~0_combout\ & (((\i_channel[1]~input_o\ & \i_data_maam_i[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => \i_data_maam_g[3]~input_o\,
	datac => \i_channel[1]~input_o\,
	datad => \i_data_maam_i[3]~input_o\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X17_Y19_N22
\Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\State.start_update~q\ & (\Selector27~1_combout\ & !\i_channel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \Selector27~1_combout\,
	datad => \i_channel[2]~input_o\,
	combout => \Selector27~2_combout\);

-- Location: FF_X17_Y19_N23
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector27~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: LCCOMB_X17_Y19_N28
\Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\i_data_att1_dac[3]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_att1_dac[3]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector54~0_combout\);

-- Location: FF_X17_Y19_N29
\data_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(7));

-- Location: LCCOMB_X17_Y19_N26
\Selector102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\State.start_update~q\ & \i_data_maam_i[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datad => \i_data_maam_i[3]~input_o\,
	combout => \Selector102~0_combout\);

-- Location: FF_X17_Y19_N27
\data_C[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(7));

-- Location: LCCOMB_X17_Y19_N6
\trn_data~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~39_combout\ = (num_ch(1) & (((data_C(7)) # (num_ch(0))))) # (!num_ch(1) & (data_A(7) & ((!num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(1),
	datab => data_A(7),
	datac => data_C(7),
	datad => num_ch(0),
	combout => \trn_data~39_combout\);

-- Location: LCCOMB_X17_Y19_N16
\Selector126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\i_data_maam_g[3]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_maam_g[3]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector126~0_combout\);

-- Location: FF_X17_Y19_N17
\data_D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector126~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(7));

-- Location: LCCOMB_X17_Y19_N0
\Selector78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\i_data_att2_dac[3]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att2_dac[3]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector78~0_combout\);

-- Location: FF_X17_Y19_N1
\data_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(7));

-- Location: LCCOMB_X17_Y19_N18
\trn_data~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~40_combout\ = (\trn_data~39_combout\ & ((data_D(7)) # ((!num_ch(0))))) # (!\trn_data~39_combout\ & (((data_B(7) & num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trn_data~39_combout\,
	datab => data_D(7),
	datac => data_B(7),
	datad => num_ch(0),
	combout => \trn_data~40_combout\);

-- Location: LCCOMB_X16_Y19_N30
\trn_data[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[7]~10_combout\ = (\update_all~q\ & ((\trn_data~40_combout\))) # (!\update_all~q\ & (data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => data(7),
	datad => \trn_data~40_combout\,
	combout => \trn_data[7]~10_combout\);

-- Location: IOIBUF_X10_Y20_N22
\i_data_att1_dac[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(2),
	o => \i_data_att1_dac[2]~input_o\);

-- Location: IOIBUF_X27_Y25_N29
\i_data_maam_i[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(2),
	o => \i_data_maam_i[2]~input_o\);

-- Location: LCCOMB_X16_Y20_N6
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\i_channel[1]~input_o\ & ((\i_channel[0]~input_o\) # ((\i_data_maam_i[2]~input_o\)))) # (!\i_channel[1]~input_o\ & (!\i_channel[0]~input_o\ & (\i_data_att1_dac[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[1]~input_o\,
	datab => \i_channel[0]~input_o\,
	datac => \i_data_att1_dac[2]~input_o\,
	datad => \i_data_maam_i[2]~input_o\,
	combout => \Selector28~0_combout\);

-- Location: IOIBUF_X1_Y10_N8
\i_data_maam_g[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(2),
	o => \i_data_maam_g[2]~input_o\);

-- Location: IOIBUF_X17_Y0_N1
\i_data_att2_dac[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(2),
	o => \i_data_att2_dac[2]~input_o\);

-- Location: LCCOMB_X16_Y20_N16
\Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\Selector28~0_combout\ & (((\i_data_maam_g[2]~input_o\)) # (!\i_channel[0]~input_o\))) # (!\Selector28~0_combout\ & (\i_channel[0]~input_o\ & ((\i_data_att2_dac[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \i_channel[0]~input_o\,
	datac => \i_data_maam_g[2]~input_o\,
	datad => \i_data_att2_dac[2]~input_o\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X16_Y20_N24
\Selector28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\Selector28~1_combout\ & (!\i_channel[2]~input_o\ & \State.start_update~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector28~1_combout\,
	datac => \i_channel[2]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector28~2_combout\);

-- Location: FF_X16_Y20_N25
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector28~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: LCCOMB_X16_Y20_N10
\Selector127~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\i_data_maam_g[2]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_maam_g[2]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector127~0_combout\);

-- Location: FF_X16_Y20_N11
\data_D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector127~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(6));

-- Location: LCCOMB_X16_Y20_N26
\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\i_data_att1_dac[2]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_att1_dac[2]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector55~0_combout\);

-- Location: FF_X16_Y20_N27
\data_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(6));

-- Location: LCCOMB_X16_Y20_N30
\Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\i_data_att2_dac[2]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att2_dac[2]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector79~0_combout\);

-- Location: FF_X16_Y20_N31
\data_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(6));

-- Location: LCCOMB_X16_Y20_N4
\Selector103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\State.start_update~q\ & \i_data_maam_i[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datad => \i_data_maam_i[2]~input_o\,
	combout => \Selector103~0_combout\);

-- Location: FF_X16_Y20_N5
\data_C[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector103~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(6));

-- Location: LCCOMB_X16_Y20_N8
\trn_data~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~41_combout\ = (num_ch(0) & ((data_B(6)) # ((num_ch(1))))) # (!num_ch(0) & (((data_C(6) & num_ch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_B(6),
	datab => num_ch(0),
	datac => data_C(6),
	datad => num_ch(1),
	combout => \trn_data~41_combout\);

-- Location: LCCOMB_X16_Y20_N20
\trn_data~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~42_combout\ = (\trn_data~41_combout\ & ((data_D(6)) # ((\Add1~0_combout\)))) # (!\trn_data~41_combout\ & (((data_A(6) & !\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_D(6),
	datab => data_A(6),
	datac => \trn_data~41_combout\,
	datad => \Add1~0_combout\,
	combout => \trn_data~42_combout\);

-- Location: LCCOMB_X16_Y19_N10
\trn_data[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[6]~11_combout\ = (\update_all~q\ & ((\trn_data~42_combout\))) # (!\update_all~q\ & (data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(6),
	datab => \trn_data~42_combout\,
	datad => \update_all~q\,
	combout => \trn_data[6]~11_combout\);

-- Location: IOIBUF_X31_Y17_N15
\i_data_maam_g[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(1),
	o => \i_data_maam_g[1]~input_o\);

-- Location: IOIBUF_X11_Y25_N22
\i_data_att1_dac[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(1),
	o => \i_data_att1_dac[1]~input_o\);

-- Location: IOIBUF_X15_Y25_N15
\i_data_att2_dac[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(1),
	o => \i_data_att2_dac[1]~input_o\);

-- Location: LCCOMB_X16_Y20_N28
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\i_channel[0]~input_o\ & (((\i_data_att2_dac[1]~input_o\) # (\i_channel[1]~input_o\)))) # (!\i_channel[0]~input_o\ & (\i_data_att1_dac[1]~input_o\ & ((!\i_channel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[1]~input_o\,
	datab => \i_channel[0]~input_o\,
	datac => \i_data_att2_dac[1]~input_o\,
	datad => \i_channel[1]~input_o\,
	combout => \Selector29~0_combout\);

-- Location: IOIBUF_X24_Y25_N15
\i_data_maam_i[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(1),
	o => \i_data_maam_i[1]~input_o\);

-- Location: LCCOMB_X16_Y20_N22
\Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\Selector29~0_combout\ & ((\i_data_maam_g[1]~input_o\) # ((!\i_channel[1]~input_o\)))) # (!\Selector29~0_combout\ & (((\i_data_maam_i[1]~input_o\ & \i_channel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_maam_g[1]~input_o\,
	datab => \Selector29~0_combout\,
	datac => \i_data_maam_i[1]~input_o\,
	datad => \i_channel[1]~input_o\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X16_Y20_N18
\Selector29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\Selector29~1_combout\ & (\State.start_update~q\ & !\i_channel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~1_combout\,
	datab => \State.start_update~q\,
	datac => \i_channel[2]~input_o\,
	combout => \Selector29~2_combout\);

-- Location: FF_X16_Y20_N19
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector29~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: LCCOMB_X16_Y20_N12
\Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\i_data_att2_dac[1]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_att2_dac[1]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector80~0_combout\);

-- Location: FF_X16_Y20_N13
\data_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector80~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(5));

-- Location: LCCOMB_X17_Y20_N18
\Selector128~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\i_data_maam_g[1]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \i_data_maam_g[1]~input_o\,
	combout => \Selector128~0_combout\);

-- Location: FF_X17_Y20_N19
\data_D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector128~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(5));

-- Location: LCCOMB_X16_Y20_N0
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\i_data_att1_dac[1]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_att1_dac[1]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector56~0_combout\);

-- Location: FF_X16_Y20_N1
\data_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(5));

-- Location: LCCOMB_X16_Y20_N14
\Selector104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\i_data_maam_i[1]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_data_maam_i[1]~input_o\,
	datad => \State.start_update~q\,
	combout => \Selector104~0_combout\);

-- Location: FF_X16_Y20_N15
\data_C[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector104~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(5));

-- Location: LCCOMB_X16_Y20_N2
\trn_data~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~43_combout\ = (num_ch(1) & (((data_C(5)) # (num_ch(0))))) # (!num_ch(1) & (data_A(5) & ((!num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(1),
	datab => data_A(5),
	datac => data_C(5),
	datad => num_ch(0),
	combout => \trn_data~43_combout\);

-- Location: LCCOMB_X17_Y20_N28
\trn_data~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~44_combout\ = (\trn_data~43_combout\ & (((data_D(5)) # (!num_ch(0))))) # (!\trn_data~43_combout\ & (data_B(5) & ((num_ch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_B(5),
	datab => data_D(5),
	datac => \trn_data~43_combout\,
	datad => num_ch(0),
	combout => \trn_data~44_combout\);

-- Location: LCCOMB_X16_Y19_N4
\trn_data[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[5]~12_combout\ = (\update_all~q\ & ((\trn_data~44_combout\))) # (!\update_all~q\ & (data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(5),
	datab => \trn_data~44_combout\,
	datad => \update_all~q\,
	combout => \trn_data[5]~12_combout\);

-- Location: IOIBUF_X10_Y17_N1
\i_data_maam_g[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_g(0),
	o => \i_data_maam_g[0]~input_o\);

-- Location: IOIBUF_X31_Y6_N22
\i_data_att2_dac[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att2_dac(0),
	o => \i_data_att2_dac[0]~input_o\);

-- Location: IOIBUF_X15_Y0_N15
\i_data_att1_dac[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_att1_dac(0),
	o => \i_data_att1_dac[0]~input_o\);

-- Location: IOIBUF_X31_Y17_N22
\i_data_maam_i[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_maam_i(0),
	o => \i_data_maam_i[0]~input_o\);

-- Location: LCCOMB_X16_Y17_N28
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\i_channel[0]~input_o\ & (((\i_channel[1]~input_o\)))) # (!\i_channel[0]~input_o\ & ((\i_channel[1]~input_o\ & ((\i_data_maam_i[0]~input_o\))) # (!\i_channel[1]~input_o\ & (\i_data_att1_dac[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[0]~input_o\,
	datab => \i_data_att1_dac[0]~input_o\,
	datac => \i_data_maam_i[0]~input_o\,
	datad => \i_channel[1]~input_o\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X16_Y17_N6
\Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\i_channel[0]~input_o\ & ((\Selector30~0_combout\ & (\i_data_maam_g[0]~input_o\)) # (!\Selector30~0_combout\ & ((\i_data_att2_dac[0]~input_o\))))) # (!\i_channel[0]~input_o\ & (((\Selector30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_channel[0]~input_o\,
	datab => \i_data_maam_g[0]~input_o\,
	datac => \i_data_att2_dac[0]~input_o\,
	datad => \Selector30~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X16_Y17_N22
\Selector30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (\State.start_update~q\ & (!\i_channel[2]~input_o\ & \Selector30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datac => \i_channel[2]~input_o\,
	datad => \Selector30~1_combout\,
	combout => \Selector30~2_combout\);

-- Location: FF_X16_Y17_N23
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector30~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: LCCOMB_X16_Y17_N8
\Selector129~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\State.start_update~q\ & \i_data_maam_g[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datac => \i_data_maam_g[0]~input_o\,
	combout => \Selector129~0_combout\);

-- Location: FF_X16_Y17_N9
\data_D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector129~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_D(4));

-- Location: LCCOMB_X16_Y17_N24
\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\State.start_update~q\ & \i_data_att1_dac[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datac => \i_data_att1_dac[0]~input_o\,
	combout => \Selector57~0_combout\);

-- Location: FF_X16_Y17_N25
\data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_A(4));

-- Location: LCCOMB_X16_Y17_N20
\Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\i_data_att2_dac[0]~input_o\ & \State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_att2_dac[0]~input_o\,
	datac => \State.start_update~q\,
	combout => \Selector81~0_combout\);

-- Location: FF_X16_Y17_N21
\data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector81~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_B(4));

-- Location: LCCOMB_X16_Y17_N18
\Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\i_data_maam_i[0]~input_o\) # (!\State.start_update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.start_update~q\,
	datac => \i_data_maam_i[0]~input_o\,
	combout => \Selector105~0_combout\);

-- Location: FF_X16_Y17_N19
\data_C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector105~0_combout\,
	ena => \data_B[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_C(4));

-- Location: LCCOMB_X16_Y17_N14
\trn_data~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~45_combout\ = (num_ch(1) & (((num_ch(0)) # (data_C(4))))) # (!num_ch(1) & (data_B(4) & (num_ch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_ch(1),
	datab => data_B(4),
	datac => num_ch(0),
	datad => data_C(4),
	combout => \trn_data~45_combout\);

-- Location: LCCOMB_X16_Y17_N2
\trn_data~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~46_combout\ = (\trn_data~45_combout\ & ((data_D(4)) # ((\Add1~0_combout\)))) # (!\trn_data~45_combout\ & (((data_A(4) & !\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_D(4),
	datab => data_A(4),
	datac => \trn_data~45_combout\,
	datad => \Add1~0_combout\,
	combout => \trn_data~46_combout\);

-- Location: LCCOMB_X16_Y19_N12
\trn_data[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[4]~13_combout\ = (\update_all~q\ & ((\trn_data~46_combout\))) # (!\update_all~q\ & (data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(4),
	datab => \trn_data~46_combout\,
	datad => \update_all~q\,
	combout => \trn_data[4]~13_combout\);

-- Location: LCCOMB_X18_Y19_N18
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\State.start_update~q\ & \State.init_outrange~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.start_update~q\,
	datac => \State.init_outrange~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X18_Y19_N19
\data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(20));

-- Location: LCCOMB_X18_Y19_N16
\data[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~3_combout\ = !\State.start_update~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.start_update~q\,
	combout => \data[0]~3_combout\);

-- Location: FF_X18_Y19_N17
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \data[0]~3_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X18_Y19_N8
\trn_data~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~50_combout\ = (\process_2~5_combout\ & (trn_data(23))) # (!\process_2~5_combout\ & (((data(0) & !\update_all~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trn_data(23),
	datab => data(0),
	datac => \process_2~5_combout\,
	datad => \update_all~q\,
	combout => \trn_data~50_combout\);

-- Location: LCCOMB_X20_Y18_N30
\process_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~6_combout\ = (counter(3)) # (!\enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => \enable~q\,
	combout => \process_2~6_combout\);

-- Location: LCCOMB_X20_Y18_N8
\trn_data[23]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data[23]~15_combout\ = (!\i_rst~input_o\ & ((\process_2~5_combout\) # ((\Equal1~1_combout\ & !\process_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \process_2~6_combout\,
	datac => \process_2~5_combout\,
	datad => \i_rst~input_o\,
	combout => \trn_data[23]~15_combout\);

-- Location: FF_X18_Y19_N9
\trn_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~50_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(0));

-- Location: LCCOMB_X18_Y19_N6
\trn_data~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~49_combout\ = (\process_2~5_combout\ & (((trn_data(0))))) # (!\process_2~5_combout\ & (!\update_all~q\ & ((data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => trn_data(0),
	datac => \process_2~5_combout\,
	datad => data(0),
	combout => \trn_data~49_combout\);

-- Location: FF_X18_Y19_N7
\trn_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~49_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(1));

-- Location: LCCOMB_X16_Y19_N28
\trn_data~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~48_combout\ = (\process_2~5_combout\ & (((trn_data(1))))) # (!\process_2~5_combout\ & (!\update_all~q\ & (data(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => data(20),
	datac => trn_data(1),
	datad => \process_2~5_combout\,
	combout => \trn_data~48_combout\);

-- Location: FF_X16_Y19_N29
\trn_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~48_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(2));

-- Location: LCCOMB_X16_Y19_N22
\trn_data~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~47_combout\ = (\process_2~5_combout\ & (((trn_data(2))))) # (!\process_2~5_combout\ & (!\update_all~q\ & (data(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => data(20),
	datac => trn_data(2),
	datad => \process_2~5_combout\,
	combout => \trn_data~47_combout\);

-- Location: FF_X16_Y19_N23
\trn_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~47_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(3));

-- Location: FF_X16_Y19_N13
\trn_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[4]~13_combout\,
	asdata => trn_data(3),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(4));

-- Location: FF_X16_Y19_N5
\trn_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[5]~12_combout\,
	asdata => trn_data(4),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(5));

-- Location: FF_X16_Y19_N11
\trn_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[6]~11_combout\,
	asdata => trn_data(5),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(6));

-- Location: FF_X16_Y19_N31
\trn_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[7]~10_combout\,
	asdata => trn_data(6),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(7));

-- Location: FF_X16_Y19_N21
\trn_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[8]~9_combout\,
	asdata => trn_data(7),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(8));

-- Location: FF_X16_Y19_N27
\trn_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[9]~8_combout\,
	asdata => trn_data(8),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(9));

-- Location: FF_X16_Y19_N25
\trn_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[10]~7_combout\,
	asdata => trn_data(9),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(10));

-- Location: FF_X16_Y19_N17
\trn_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[11]~6_combout\,
	asdata => trn_data(10),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(11));

-- Location: FF_X16_Y19_N19
\trn_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[12]~5_combout\,
	asdata => trn_data(11),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(12));

-- Location: FF_X16_Y19_N15
\trn_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[13]~4_combout\,
	asdata => trn_data(12),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(13));

-- Location: FF_X16_Y19_N9
\trn_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[14]~3_combout\,
	asdata => trn_data(13),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(14));

-- Location: FF_X16_Y19_N1
\trn_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[15]~2_combout\,
	asdata => trn_data(14),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(15));

-- Location: FF_X18_Y19_N5
\trn_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[16]~1_combout\,
	asdata => trn_data(15),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(16));

-- Location: FF_X18_Y19_N23
\trn_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data[17]~0_combout\,
	asdata => trn_data(16),
	sload => \process_2~5_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(17));

-- Location: LCCOMB_X18_Y19_N20
\data[18]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[18]~2_combout\ = !\State.init_outrange~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.init_outrange~q\,
	combout => \data[18]~2_combout\);

-- Location: FF_X18_Y19_N21
\data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \data[18]~2_combout\,
	ena => \data[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(18));

-- Location: LCCOMB_X18_Y19_N26
\trn_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~20_combout\ = (\process_2~5_combout\ & (trn_data(17))) # (!\process_2~5_combout\ & (((data(18) & !\update_all~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trn_data(17),
	datab => data(18),
	datac => \process_2~5_combout\,
	datad => \update_all~q\,
	combout => \trn_data~20_combout\);

-- Location: FF_X18_Y19_N27
\trn_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~20_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(18));

-- Location: LCCOMB_X18_Y19_N14
\trn_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~19_combout\ = (\process_2~5_combout\ & (trn_data(18))) # (!\process_2~5_combout\ & (((data(18) & !\update_all~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trn_data(18),
	datab => data(18),
	datac => \process_2~5_combout\,
	datad => \update_all~q\,
	combout => \trn_data~19_combout\);

-- Location: FF_X18_Y19_N15
\trn_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~19_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(19));

-- Location: LCCOMB_X18_Y19_N12
\trn_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~18_combout\ = (\process_2~5_combout\ & (((trn_data(19))))) # (!\process_2~5_combout\ & (!\update_all~q\ & ((data(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => trn_data(19),
	datac => \process_2~5_combout\,
	datad => data(20),
	combout => \trn_data~18_combout\);

-- Location: FF_X18_Y19_N13
\trn_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~18_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(20));

-- Location: LCCOMB_X18_Y19_N28
\trn_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~17_combout\ = (counter(1) & (\process_2~0_combout\ & (\process_2~4_combout\ & trn_data(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \process_2~0_combout\,
	datac => \process_2~4_combout\,
	datad => trn_data(20),
	combout => \trn_data~17_combout\);

-- Location: FF_X18_Y19_N29
\trn_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~17_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(21));

-- Location: LCCOMB_X18_Y19_N10
\trn_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~16_combout\ = (counter(1) & (\process_2~0_combout\ & (\process_2~4_combout\ & trn_data(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \process_2~0_combout\,
	datac => \process_2~4_combout\,
	datad => trn_data(21),
	combout => \trn_data~16_combout\);

-- Location: FF_X18_Y19_N11
\trn_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~16_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(22));

-- Location: LCCOMB_X18_Y19_N30
\trn_data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trn_data~14_combout\ = (counter(1) & (\process_2~0_combout\ & (\process_2~4_combout\ & trn_data(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \process_2~0_combout\,
	datac => \process_2~4_combout\,
	datad => trn_data(22),
	combout => \trn_data~14_combout\);

-- Location: FF_X18_Y19_N31
\trn_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \trn_data~14_combout\,
	ena => \trn_data[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trn_data(23));

-- Location: LCCOMB_X20_Y19_N0
\data_dac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dac~0_combout\ = (\i_rst~input_o\ & (((\data_dac~q\)))) # (!\i_rst~input_o\ & ((\process_2~5_combout\ & (trn_data(23))) # (!\process_2~5_combout\ & ((\data_dac~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => trn_data(23),
	datac => \data_dac~q\,
	datad => \process_2~5_combout\,
	combout => \data_dac~0_combout\);

-- Location: FF_X20_Y19_N1
data_dac : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \data_dac~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_dac~q\);

-- Location: LCCOMB_X20_Y18_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(3) & (counter(6) & (counter(5) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(6),
	datac => counter(5),
	datad => \LessThan0~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y19_N4
\ldac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ldac~0_combout\ = (\State.activ_signals~q\ & (((num_ch(1) & num_ch(0))) # (!\update_all~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_all~q\,
	datab => \State.activ_signals~q\,
	datac => num_ch(1),
	datad => num_ch(0),
	combout => \ldac~0_combout\);

-- Location: LCCOMB_X20_Y18_N10
\ldac~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ldac~1_combout\ = (!counter(2) & (\Equal0~0_combout\ & (\ldac~0_combout\ & counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Equal0~0_combout\,
	datac => \ldac~0_combout\,
	datad => counter(4),
	combout => \ldac~1_combout\);

-- Location: LCCOMB_X20_Y18_N12
\ldac~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ldac~2_combout\ = (\ldac~1_combout\ & ((counter(1) & ((counter(0)) # (!\ldac~q\))) # (!counter(1) & (counter(0) & !\ldac~q\)))) # (!\ldac~1_combout\ & (((!\ldac~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ldac~1_combout\,
	datab => counter(1),
	datac => counter(0),
	datad => \ldac~q\,
	combout => \ldac~2_combout\);

-- Location: LCCOMB_X20_Y18_N20
\ldac~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ldac~3_combout\ = (!\ldac~2_combout\ & !\i_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ldac~2_combout\,
	datad => \i_rst~input_o\,
	combout => \ldac~3_combout\);

-- Location: FF_X20_Y18_N21
ldac : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ldac~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ldac~q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_o_clock_dac <= \o_clock_dac~output_o\;

ww_o_data_dac <= \o_data_dac~output_o\;

ww_o_sync_dac <= \o_sync_dac~output_o\;

ww_o_ldac_dac <= \o_ldac_dac~output_o\;

ww_o_clr_dac <= \o_clr_dac~output_o\;
END structure;


