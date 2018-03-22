library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MealySM is port(
	clk, Rst_n		:	in		std_logic;
	e_out				:	in		std_logic;
	xypos				:	in		std_logic_vector(7 downto 0);
								-- xypos 8 bits vector will consist of xMotion & xEQ & xGT & xLT & yMotion & yEQ & yGT & yLT
								--	for xMotion and yMotion, we use raw-input from pbs WITHOUT pre-inverting

	xClkEn, yClkEn :	out	std_logic;
	e_en				:	out 	std_logic := '0';
	err				:	out	std_logic;
	xUD, yUD			:	out	std_logic
);
end entity;


architecture msm of MealySM is

type STATES is (s0, s1, s2);
	-- s0 is not moving
	--	s1 is moving
	-- s2 is error

signal curr, nxt : STATES;

begin

RegisterSection: process(clk, Rst_n, nxt)
	begin
		if(Rst_n = '0') then
			curr <= s0;
		elsif(rising_edge(clk)) then
			curr <= nxt;
		end if;
	end process;

TransitionSection: process(curr, xypos, e_out)
	begin
		case curr is
			when s0 =>
				if(e_out = '1' and (xypos(7) = '0' or xypos(3) = '0')) then
					nxt <= s2; -- GOTO error
				elsif(xypos(7) = '0' or xypos(3) = '0') then
					nxt <= s1; -- if xMotion or yMotion then GOTO moving state (recall, pbs are active low)
				else
					nxt <= S0;
				end if;
			when s1 =>
				if (e_out = '1' and (xypos(7) = '0' or xypos(3) = '0') ) then
					nxt <= s2;
				elsif(xypos(7)= '1' and xypos(3) = '1') then
					nxt <= s0; -- GOTO stopped state
				else
					nxt <= s1;
				end if;
			when s2 =>
				if (xypos(7) = '1' and xypos(3)= '1' and e_out='0') then
					nxt <= s0; -- if both x and y comes to full stop, e_out retracted ; GOTO stopped
				--elsif ((xypos(7) = '0' or xypos(3) = '0') and e_out='0') then
					--  nxt <= s1; -- if either X and Y moving AND e_out is not extended anymore then GOTO moving
				else
					nxt<= s2;
				end if;
			
		end case;
	end process;
	
DecoderSection: process(curr, xypos, e_out)
	begin
		if (curr = s0) then -- stopped
			e_en <= xypos(6) and xypos(2); -- when stopped and the RAC at same xy-coord as target > extender becomes enabled
			err <= '0';
			
		elsif (curr = s1) then --moving
			e_en <= '0';
			xClkEn <= not(xypos(7)) and not(xypos(6)); -- xMotion is TRUE (recall Pbs are active low!)
			xUD <= xypos(4); --when x coord falls short, then X-UP/DOWN should be 1, for x to go up
			yClkEn <= not(xypos(3)) and not (xypos(2)); -- yMotion is TRUE, then enable y 
			yUD <= xypos(0); -- when y coord falls short, then Y-UP/DOWN should be 1 to increment else 0 to decrement
			err <= '0';

		else
			err <= '1'; -- if not s1 and not s0; then it implies s2 error state which err sig should reflect the e_out
			e_en <= '1';
		end if;		
	end process;
end architecture msm;