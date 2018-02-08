library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder4 is port(
	sig1		:	in  std_logic_vector(3 downto 0);
	sig2		:	in  std_logic_vector(3 downto 0);
	sum		: 	out std_logic_vector(7 downto 0)

);

architecture logic of adder4 is
begin
	
	sum <= std_logic_vector(unsigned(sig1) + unsigned(sig2));
end logic;