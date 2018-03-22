library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity MooreSM2 is port(
	clkin, Rst_n		: in 	std_logic;
	g_toggl, g_en		: in 	std_logic;
	g_out					: out std_logic
);
end entity;


architecture mosm2 of MooreSM2 is

type STATES is (GON, GOFF);

signal curr, nxt : STATES;
	
begin

registerSection : process(clkin, Rst_n, g_en, nxt)
begin
	if (Rst_n = '0') then
		curr <= GON;
	elsif (rising_edge(clkin) and g_en = '1' ) then
		curr <= nxt;
	end if;
end process;

transitionSection : process(curr, nxt, g_toggl)
begin
	case curr is
		when GON =>
			if (g_toggl = '0') then -- Careful with active low
				nxt <= GOFF;
			else
				nxt <= GON;
			end if;
		when GOFF =>
			if (g_toggl = '0') then --careful with active low
				nxt <= GON;
			else 
				nxt <= GOFF;
			end if;
	end case;
end process;

decoderSection	: process(curr)
begin	
	case curr is
		when GON =>
			g_out <= '1';
		when GOFF =>
			g_out <='0';
	end case;
end process;

end architecture mosm2;
