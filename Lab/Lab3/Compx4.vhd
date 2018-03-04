library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Compx4 is port(
    A       :   in  std_logic_vector(3 downto 0);
    B       :   in  std_logic_vector(3 downto 0);
    GT      :   out std_logic;
    EQ      :   out std_logic;
    LE      :   out std_logic
);
end Compx4;

architecture logicCompx4 of Compx4 is

    component Compx1 port(
        ai  :   in  std_logic := '0';
        bi  :   in  std_logic := '0';

        gi  :   in  std_logic := '0';
        ei  :   in  std_logic := '1';
        li  :   in  std_logic := '0';

        go  :   out std_logic;
        eo  :   out std_logic;
        lo  :   out std_logic
    );
    end component;

    -- For each bit's output by index
	 signal init : std_logic_vector(2 downto 0);
	 
    signal g3, g2, g1, g0 : std_logic;
    signal e3, e2, e1, e0 : std_logic;
    signal l3, l2, l1, l0 : std_logic;


	 
begin
	 
	 init <= "010";

    -- Cascading, start with MSB then cascade down

    b3      : Compx1 port map(A(3), B(3), init(2), init(1), init(0), g3, e3, l3);
    b2      : Compx1 port map(A(2), B(2), g3, e3, l3, g2, e2, l2);
    b1      : Compx1 port map(A(1), B(1), g2, e2, l1, g1, e1, l1);
    b0      : Compx1 port map(A(0), B(0), g1, e1, l1, g0, e0, l0);

    EQ  <= e0;
    GT  <= g0;
    LE  <= l0;



end architecture logicCompx4;