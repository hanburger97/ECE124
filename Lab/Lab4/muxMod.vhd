library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxMod is port(
	
	SLCT		: in  std_logic_vector(1 downto 0);
	INPT		: in  std_logic_vector(7 downto 0);
	OTP		: out std_logic_vector(7 downto 0)
);
end muxMod;

architecture logic of muxMod is
begin

    -- INPT should be passed when errSig is 0, and when errSig=1 AND clkin=0
				-- For flash functionality
				--SLCT is errSig&clkin
	with SLCT select	 --Output  --SLCT
	OTP	 <= 	INPT when "10",
					"00000000" when "11",
					INPT when others;
		
end architecture logic;	