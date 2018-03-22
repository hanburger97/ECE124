library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is port(
	
	SLCT		: in  std_logic;
	IN1		: in  std_logic_vector(7 downto 0);
	IN2 		: in  std_logic_vector(7 downto 0);
	OTP		: out std_logic_vector(7 downto 0)
);
end mux;

architecture logic of mux is
begin

    -- IN1 should be the element to be selected when PB is pushed (since active low)

	with SLCT select	 --Output  --SLCT
	OTP	 <= 	IN1 when '0',
					IN2 when '1';
		
end architecture logic;	