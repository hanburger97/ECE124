library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MooreSM1 is port(
	clk_in, Rst_n		:	in		std_logic;
	shiftin				:	in		std_logic_vector(3 downto 0);
	ext_toggl, e_en	:	in		std_logic;
	g_en, e_out			:	out	std_logic;
	bClkEn, LR			:	out	std_logic
);
end entity;


architecture mosm1 of MooreSM1 is

type STATES is (EXT1, EXT2, EXT3, EXTENDED, RETRACTED, RET1, RET2, RET3);

signal curr : STATES	:= RETRACTED; 
signal nxt : STATES;

begin

register_section : process(clk_in, Rst_n, e_en, nxt)
begin
	if (Rst_n = '0') then
		curr <= RETRACTED;
	elsif(rising_edge(clk_in) and e_en = '1') then
		curr <= nxt;	
	end if;
end process;

transition_section : process(curr, shiftin, ext_toggl, e_en)
begin
	case curr is 
		when RETRACTED	 =>
			if (ext_toggl = '0') then
				nxt <= EXT1;
			else
				nxt <= RETRACTED;
			end if;
		when EXT1 =>
			nxt <= EXT2;
		when EXT2 =>
			nxt <= EXT3;
		when EXT3 =>
			nxt <= EXTENDED;
		when EXTENDED =>
			if (ext_toggl = '0') then
				nxt <= RET3;
			else
				nxt <= EXTENDED;
			end if;
		when RET3 =>
			nxt <= RET2;
		when RET2 =>
			nxt <= RET1;
		when RET1 =>
			nxt <= RETRACTED;
	end case;
end process;

decoder_section : process(curr)
begin
	if (curr = 	RETRACTED) then
		e_out <= '0';
		g_en <= '0';
		bClkEn <= '1';
		LR <= '1'; 
	elsif (curr = EXT1) then
		e_out <= '1';
		g_en <= '0';
		bClkEn <= '1';
		LR <= '0';
	elsif (curr = EXT2) then
		e_out <= '1';
		g_en <= '0';
		bClkEn <= '1';
		LR <= '0';
	elsif (curr = EXT3) then
		e_out <= '1';
		g_en <= '0';
		bClkEn <= '1';
		LR <= '0';
	elsif (curr = EXTENDED) then
		e_out <= '1';
		g_en <= '1';
		bClkEn <= '1';
		LR <= '0';
	elsif (curr = RET3) then
		e_out <= '1';
		g_en <= '0';
		bClkEn <= '1';
		LR <= '1';
	elsif (curr = RET2) then
		e_out <= '1';
		g_en <= '0';
		bClkEn <= '1';
		LR <= '1';
	elsif (curr = RET1) then
		e_out <= '1';
		g_en <= '0';
		bClkEn <= '1';
		LR <= '1';
	end if;
end process;

end architecture mosm1;
