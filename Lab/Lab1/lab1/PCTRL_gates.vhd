library ieee;
use ieee.std_logic_1164.all;

library work;

entity POLARITY_CONTROL is
	port(POLARITY_CTRL, IN_1, IN_2, IN_3, IN_4 : in bit;
			OUT_1, OUT_2, OUT_3, OUT_4: out bit
			);
end entity POLARITY_CONTROL;

architecture PCONTROL of POLARITY_CONTROL is 

begin

OUT_1 <= IN_1 xor POLARITY_CTRL;
OUT_2 <= IN_2 xor POLARITY_CTRL;
OUT_3 <= IN_3 xor POLARITY_CTRL;
OUT_4 <= IN_4 xor POLARITY_CTRL;

end PCONTROL;			
