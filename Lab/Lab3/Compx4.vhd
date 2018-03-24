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
        ai  :   in  std_logic;
        bi  :   in  std_logic;


        go  :   out std_logic;
        eo  :   out std_logic;
        lo  :   out std_logic
    );
    end component;

    -- For each bit's output by index

    signal g3, g2, g1, g0 : std_logic;
    signal e3, e2, e1, e0 : std_logic;
    signal l3, l2, l1, l0 : std_logic;


	 
begin
	 
	inst0   : Compx1 port map(A(0), B(0), g0, e0, l0);
	inst1   : Compx1 port map(A(1), B(1), g1, e1, l1);
	inst2   : Compx1 port map(A(2), B(2), g2, e2, l2);
	inst3   : Compx1 port map(A(3), B(3), g3, e3, l3);

    EQ  <= e0 and e1 and e2 and e3;
    GT  <= g3 or
                (e3 and g2) or
                (e3 and e2 and g1)  or
                (e3 and e2 and e1 and g0);
    LE  <= l0 or
            (e3 and l2) or
            (e3 and e2 and l1) or
            (e3 and e2 and e1 and l0);



end architecture logicCompx4;