library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--TODO: Register Quartus project
    -- Name: LogicalStep_3
    -- Top Level: LogicalStep_3_top
--TODO: Run TCL script


entity LogicalStep_Lab3_top is port (
    clkin_50	: in	std_logic;
    pb			: in	std_logic_vector(3 downto 0);
 	sw   		: in    std_logic_vector(7 downto 0);       -- The switch inputs
    leds		: out   std_logic_vector(7 downto 0);	    -- for displaying the switch content
    seg7_data 	: out   std_logic_vector(6 downto 0);       -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	
); 
end LogicalStep_Lab3_top;

architecture Energy_Monitor of LogicalStep_Lab3_top is

-- Components Used

    component Compx4 port(
        A       :   in  std_logic_vector(3 downto 0);
        B       :   in  std_logic_vector(3 downto 0);
        GT      :   out std_logic;
        EQ      :   out std_logic;
        LE      :   out std_logic
    );
    end component;



	
	
-- Create any signals, or temporary variables to be used
	
	gt      : std_logic;
	eq      : std_logic;
	le      : std_logic;


-- Here the circuit begins

begin

    Comp4Inst   : Compx4 port map(sw(3 downto 0), sw(7 downto 4), gt, eq, le);
 
end Energy_Monitor;

