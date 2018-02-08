library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processor is port(

	pbs		:	in  std_logic_vector(2 downto 0);
	in1		:	in  std_logic_vector(3 downto 0);
	in2		:	in  std_logic_vector(3 downto 0);
	otp		:	out std_logic_vector(7 downto 0)
);
end processor;

architecture logic of processor is

begin
	
	
	with pbs select
	otp <=		
				--Logical expression								-when pb is 
							"00000000"								when "000",
							"0000" & (in1 and in2)				when "001",
							"0000" & (in1 or in2)				when "010",
							"0000" & (in1 xor in2)				when "100",
							"00000000"								when others;
end architecture logic;