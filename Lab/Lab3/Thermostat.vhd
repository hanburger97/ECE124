library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Thermostat is port(
	CT	:	in  std_logic_vector(3 downto 0);
	DT	:	in  std_logic_vector(3 downto 0);
	OP	:	in	 std_logic_vector(2 downto 0);
	
	OTP :	out std_logic_vector(6 downto 0)
	
);
end Thermostat;

architecture Logic of Thermostat is
	
	component Compx4 port(
        A       :   in  std_logic_vector(3 downto 0);
        B       :   in  std_logic_vector(3 downto 0);
        GT      :   out std_logic;
        EQ      :   out std_logic;
        LE      :   out std_logic
    );
    end component;
	 
	 signal gt, eq, le : std_logic;
	 signal tmp : std_logic_vector(2 downto 0);
	 signal all_closed : std_logic;
	 signal ctrl: std_logic_vector(3 downto 0);
	 signal doors: std_logic_vector(2 downto 0);                

begin
	
	compx4inst : Compx4 port map(CT, DT, gt, eq, le);
	-- Comparing current temp with desired temp
	tmp <= gt & eq & le;
	doors <= not(OP(2)) & not(OP(1)) & not(OP(0));
	all_closed <= OP(2) and OP(1) and OP(0);
	-- Since PBs are active-low, we don't need to NAND it
	with tmp&all_closed select							
				--LEDS[7..0]			tmp : gt&eq&le&ALL_CLOSED
	ctrl	<=		"1001"	 when		 			"0011",  -- Furnace ON
					"1100"	 when		 			"1001",  -- A/C ON
					"0010"	 when					"0101",
					"0010"	 when					"0100",	
					"0000"	 when		 			others;							
	OTP <= doors & ctrl;
end architecture Logic;