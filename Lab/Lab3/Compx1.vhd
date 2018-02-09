library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Compx1 is port(
    A       :   in  std_logic;
    B       :   in  std_logic;
    GT      :   out std_logic;
    EQ      :   out std_logic;
    LE      :   out std_logic
);
end Compx1;

architecture logic of Compx1 is

begin
    EQ <= (A='1' and B='1') or (A='0' and B='0');
    GT <= (A='1' and B='0');
    LE <= (A='0' and B='1');
end architecture logic;

