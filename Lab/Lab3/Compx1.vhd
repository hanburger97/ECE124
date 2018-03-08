library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Compx1 is port(
    ai      :   in  std_logic;
    bi      :   in  std_logic;


    go      :   out std_logic;
    eo      :   out std_logic;
    lo      :   out std_logic
);
end Compx1;

architecture logicCompx1 of Compx1 is

begin


    eo <= (ai and bi) or (not(ai) and not(bi));
    go <= ai and not(bi);
    lo <= not(ai) and bi;

end architecture logicCompx1;


