library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Compx4 is port(
    A4      :   in  std_logic_vector(3 downto 0);
    B4      :   in  std_logic_vector(3 downto 0);
    GT4     :   out std_logic;
    EQ4     :   out std_logic;
    LE4     :   out std_logic
);
end Compx4;

architecture logicCompx4 of Compx4 is

    component Compx1 port(
        A   :   in  std_logic;
        B   :   in  std_logic;
        GT  :   out std_logic;
        EQ  :   out std_logic;
        LE  :   out std_logic
    );
    end component;

    signal res      :   std_logic_vector(3 downto 0);
    -- This is to represent the result for 3 states "100", "010","001" for GT, EQ, LE

    begin






    GT <= res(2);
    EQ <= res(1);
    LE <= res(0);


end architecture logicCompx4;