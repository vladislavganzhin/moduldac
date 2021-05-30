library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity moduldac_wrap is


port (
		o_clock_dac : out  std_logic := '1';
		o_clock_dac2 : out  std_logic_vector(23 downto 0) := (others=> '0');
		o_data_dac  : out  std_logic := '0';
		o_sync_dac  : out  std_logic := '1';
		o_ldac_dac  : out  std_logic := '0';
		o_clr_dac   : out  std_logic := '1';
		i_clk       : in   std_logic := '0';
		i_rst       : in   std_logic := '0';
		i_update    : in   std_logic := '0'                         
 
);

end moduldac_wrap;

architecture beexam of moduldac_wrap is
 
signal start,data_dac		: std_logic := '0';
signal sync_dac,clock_dac 	: std_logic := '1';
signal data			: std_logic_vector(23 downto 0) := (others=> '0');
signal counter 	: unsigned(3 downto 0) := (others=> '0'); 
signal counter_fr : unsigned(1 downto 0) := (others=> '0');
signal c_data		: unsigned(4 downto 0) := (others=> '0');
signal tx 		: unsigned(1 downto 0) := (others=> '0');

begin

	process (i_clk, i_rst, i_update) begin
		if (i_rst = '1') then
			tx <= "00";
			sync_dac <= '1';
			counter <= (others=> '0');
			data <= "000011000000000000000100";
			clock_dac <= '1';
			counter_fr <= (others=> '0');
			start <= '0';
		
		elsif falling_edge(i_clk) then
		
			--change frequency
			if (start = '1') then
				if (counter_fr = "10") then
					clock_dac <= NOT(clock_dac);
					counter_fr <= (others=> '0');
				else
					counter_fr <= counter_fr + "1";
				end if;
			end if;
		   
			--state machine
			case tx is
			data <= "000011000000000000000100";	
				--activate sync, clock 25 MHz
				--write the first byte
				when "00" =>
				
					counter <= counter+"1";
					
						if (counter = "1010") then --wait 10 clock
							sync_dac <= '0';
							data_dac <= data(0); --get data in order
						
						elsif (counter = "1100") then --wait 12 clock
							start <= '1';
							
						elsif (counter = "1110") then --wait 14 clock
							c_data <= (others=> '0');
							tx <= "01";
							counter <= (others=> '0');
							
						end if;
				
				--write bytes
				when "01" =>
					
					if(counter = "0100") then 
						c_data <= c_data + "1";
						counter <= "0001";
						data_dac <= data(to_integer(unsigned(c_data)));
						
							
					end if;
					
					if (c_data = "10111") then --23
						tx <= "10";
						-- ?? data_dac <= nobody
						counter <= (others=> '0');
						
					end if;
					
					counter <= counter + "0001";
					
				 --deactivate sync, clock 25 MHz
				 when others =>
				 
					if (counter = "0100") then --4
							start <= '0';
							sync_dac <= '1';
							
					end if;
					
					counter <= counter+"0001";
									
				end case;
				
		end if;
	  
	end process;

	o_clock_dac <= clock_dac;
	o_sync_dac <= sync_dac;
	o_data_dac <= data_dac;
	

end beexam;