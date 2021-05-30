library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity moduldac_tb is
end moduldac_tb;

architecture beexam of moduldac_tb is

component moduldac_wrap is


port (
		o_clock_dac 	: out  std_logic := '1';
		o_data_dac  	: out  std_logic := '0';
		o_sync_dac  	: out  std_logic := '1';
		o_ldac_dac  	: out  std_logic := '1';
		o_clr_dac   	: out  std_logic := '1';
		i_clk      	   : in   std_logic := '0';
		i_rst     	   : in   std_logic := '0';
		i_update    	: in   std_logic := '0';
		i_data_att1_dac: in std_logic_vector(11 downto 0) := (others=> '0');
		i_data_att2_dac: in std_logic_vector(11 downto 0) := (others=> '0');
		i_data_maam_i  : in std_logic_vector(11 downto 0) := (others=> '0');
		i_data_maam_g  : in std_logic_vector(11 downto 0) := (others=> '0');
		i_channel      : in std_logic_vector(2 downto 0) := (others=> '0')
);

end component;

signal clk_100_mhz,update  : std_logic := '0';
signal channel 				: std_logic_vector(2 downto 0) := (others=> '0');
signal data_att1_dac			:  std_logic_vector(11 downto 0) := (others=> '0');
signal data_att2_dac			:  std_logic_vector(11 downto 0) := (others=> '0');
signal data_maam_i			: std_logic_vector(11 downto 0) := (others=> '0');
signal data_maam_g			: std_logic_vector(11 downto 0) := (others=> '0');

begin

data_init : process
begin

wait for 70000 ns;

data_att1_dac <= "010101010101";
data_att2_dac <= (others=> '0');
data_maam_i <= (others=> '0');
data_maam_g <= (others=> '0');

wait for 17710 ns;

data_att1_dac <= "111111111110";
data_att2_dac <= "000011110000";
data_maam_i <="001100110011";
data_maam_g <="110011111111";

wait for 80000 ns;

data_att1_dac <= (others=> '0');
data_att2_dac <= (others=> '0');
data_maam_i <= (others=> '0');
data_maam_g <= "000011110000";

wait for 100 ms;

end process;

clk_100mhz_init : process
begin
    clk_100_mhz <= '0';
    
    wait for 80 ns;
    loop
        wait for 5 ns;
            clk_100_mhz <= '1';
        wait for 5 ns;
            clk_100_mhz <= '0';
    end loop;
end process;

update_init : process
begin
	update <= '0';
	wait for 70000 ns;
	
	--loop
			update <= '1';
		wait for 10 ns;
			update <= '0';
		wait for 17700 ns;
			update <= '1';
		wait for 10 ns;
			update <= '0';
		wait for 700 ns;
			update <= '1';
		wait for 10 ns;
			update <= '0';
		
		
		
		wait for 100 ms;
	--end loop;
end process;


channel_init : process
begin
		channel <= "111";
	wait for 70000 ns;
		channel <= "000";
	wait for 17710 ns;
		channel <= "100";
	wait for 80000 ns;
		channel <= "011";
		
	wait for 12710 ms;
end process;


moduldac: moduldac_wrap
port map (
	i_clk => clk_100_mhz,
	i_update => update,
	i_channel => channel,
	i_data_att1_dac => data_att1_dac, 
	i_data_att2_dac => data_att2_dac,
	i_data_maam_i => data_maam_i,
	i_data_maam_g => data_maam_g
);

end beexam;
