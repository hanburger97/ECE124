library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder4 is port(
	sig1		:	in  std_logic_vector(3 downto 0);
	sig2		:	in  std_logic_vector(3 downto 0);
	sum		: 	out std_logic_vector(7 downto 0)

);
end adder4;


architecture logic of adder4 is

	signal l1 : std_logic_vector(7 downto 0);
	signal l2 : std_logic_vector(7 downto 0);
begin
	l1 <= "0000" & sig1;
	l2 <= "0000" & sig2;
	sum <= std_logic_vector(unsigned(l1) + unsigned(l2));
end architecture logic;