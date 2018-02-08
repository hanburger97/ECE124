library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux8_2t1 is port(
	
	SLCT		: in  std_logic;
	IN1		: in  std_logic_vector(7 downto 0);
	IN2 		: in  std_logic_vector(7 downto 0);
	OTP		: out std_logic_vector(7 downto 0)
);
end mux8_2t1;

architecture logic of mux8_2t1 is
begin
    -- Checked and verified, IN1 is always set to be sum from Adder

	with SLCT select	 --Output  --SLCT
	OTP	 <= 				IN1 when '0',
							IN2 when '1';
		
end architecture logic;	