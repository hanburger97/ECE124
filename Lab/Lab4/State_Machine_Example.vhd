library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity State_Machine_Example is port
(
 clk_input, rst_n, I0, I1, I2						: IN std_logic;
 output1, output2										: OUT std_logic
 );
end entity;
 

architecture SM of State_Machine_Example is
 
begin

 
type STATE_NAMES is (S0, S1, S2, S3, S4, S5, S6, S7);   -- list all the STATE_NAMES values

 
signal current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 
 -- REGISTER_LOGIC PROCESS:
 
Register_Section: process(clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
begin
	if (rst_n = '0') then
		current_state <= S0;
	elsif(rising_edge(clk_input)) then
		current_state <= next_State;
	end if;
end process;	



-- TRANSITION LOGIC PROCESS

Transition_Section:  process(I0, I1, I2, current_state) 

begin
     case current_state is
         when S0 =>		
				IF(I0='1') THEN
					next_state <= S1;
				ELSE
					next_state <= S0;
				END IF;

         WHEN S1 =>		
					next_state <= S2;

         WHEN S2 =>		
				IF(I0='1') THEN
					next_state <= S6;
				ELSIF(I1='1') THEN
					next_state <= S3;
				ELSE
					next_state <= S2;
				END IF;
				
         WHEN S3 =>		
				IF(I0='1') THEN
					next_state <= S4;
				ELSE
					next_state <= S3;
				END IF;

         WHEN S4 =>		
					next_state <= S5;

         WHEN S5 =>		
					next_state <= S6;
				
         WHEN S6 =>		
				IF(I0='1') THEN
					next_state <= S7;
				ELSE
					next_state <= S6;
				END IF;
				
         WHEN S7 =>		
				IF(I2='1') THEN
					next_state <= S0;
				ELSE
					next_state <= S7;
				END IF;

				WHEN OTHERS =>
               next_state <= S0;
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (I0, I1, I2, current_state) 

BEGIN
     CASE current_state IS
         WHEN S0 =>		
			output1 <= '1';
			output2 <= '0';
			
         WHEN S1 =>		
			output1 <= '0';
			output2 <= '0';

         WHEN S2 =>		
			output1 <= '0';
			output2 <= '0';
			
         WHEN S3 =>		
			output1 <= '0';
			output2 <= '0';

         WHEN S4 =>		
			output1 <= '0';
			output2 <= '0';

         WHEN S5 =>		
			output1 <= '0';
			output2 <= '0';
				
         WHEN S6 =>		
			output1 <= '0';
			output2 <= '1';
				
         WHEN S7 =>		
			output1 <= '0';
			output2 <= '0';
				
         WHEN others =>		
 			output1 <= '0';
			output2 <= '0';
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
