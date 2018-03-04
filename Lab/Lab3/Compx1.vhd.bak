library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Compx1 is port(
    ai      :   in  std_logic;
    bi      :   in  std_logic;

    gi      :   in  std_logic;
    ei      :   in  std_logic;
    li      :   in  std_logic;

    go      :   out std_logic;
    eo      :   out std_logic;
    lo      :   out std_logic
);
end Compx1;

architecture logicCompx1 of Compx1 is

begin


    eo <= (ei and not(ai xor bi));
    go <= (gi or (ei and ai and not(bi));
    lo <= (li or (ei and not(ai) and bi);

end architecture logicCompx1;


