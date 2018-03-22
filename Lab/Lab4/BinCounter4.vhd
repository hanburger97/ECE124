library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Bin_Counter4bit is port
	(
		Main_clk			: in std_logic := '0';
		rst_n				: in std_logic := '0';
		clk_en			: in std_logic := '0';
		up1_down0		: in std_logic ;
		counter_bits 	: out std_logic_vector (3 downto 0)
	);
end entity;
	
architecture one of Bin_Counter4bit is
	
	signal ud_bin_counter 	: unsigned(3 downto 0);
	
begin 

	process (Main_clk, rst_n, Up1_down0) is
	begin
		if (rst_n = '0') then
			ud_bin_counter <= "0000";
		
		elsif (rising_edge(Main_clk)) then
	
			if((up1_down0 = '1') and (clk_en = '1')) then
				ud_bin_counter <= (ud_bin_counter + 1);
			elsif ((up1_down0 = '0') and (clk_en = '1')) then 
				ud_bin_counter <= (ud_bin_counter - 1);
			end if;
		
		end if;
	
	counter_bits <= std_logic_vector(ud_bin_counter);
	
	end process;
end architecture;