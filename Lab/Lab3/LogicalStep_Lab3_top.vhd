library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--TODO: Register Quartus project
    -- Name: LogicalStep_3
    -- Top Level: LogicalStep_3_top
--TODO: Run TCL script


entity LogicalStep_Lab3_top is port (
   clkin_50		: in	std_logic;
   pb				: in	std_logic_vector(3 downto 0);
	sw   			: in  std_logic_vector(7 downto 0);       -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	    -- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0);       -- 7-bit outputs to a 7-segment
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
	 
	 component SevenSegment port (
		 hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
		 sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
	 ); 
	 end component;
	 
	component segment7_mux port(
		clk			:	in	 std_logic := '0';
		DIN2			:	in	 std_logic_vector(6 downto 0);
		DIN1			:	in  std_logic_vector(6 downto 0);
		DOUT			:	out std_logic_vector(6 downto 0);
		DIG2			:	out std_logic;
		DIG1			:	out std_logic
	);
	end component;
	
	component Thermostat port(
		CT	:	in  std_logic_vector(3 downto 0);
		DT	:	in  std_logic_vector(3 downto 0);
		OP	:	in	 std_logic_vector(2 downto 0);
		OTP :	out std_logic_vector(6 downto 0)
	);
	end component;

	
	
-- Create any signals, or temporary variables to be used
	
	signal thermo_otp : std_logic_vector(6 downto 0);
	
	signal char1 : std_logic_vector(6 downto 0);
	signal char2 : std_logic_vector(6 downto 0);
	
	

-- Here the circuit begins

begin
		
	
    --Comp4Inst   : Compx4 port map(sw(3 downto 0), sw(7 downto 4), leds(2), leds(1), leds(0));
	 -- ^ Currently the COMPX4 simulation is wrong for LESS signal... need re-checking...
	 
	 thermostatInstance : Thermostat port map(sw(3 downto 0), sw(7 downto 4), pb(2 downto 0), leds(6 downto 0)); 
	 
	 -- Displaying current and desired temperatures
	 sevenmux1 : SevenSegment port map(sw(7 downto 4), char1);
	 sevenmux2 : SevenSegment port map(sw(3 downto 0), char2);
	 
	 display : segment7_mux port map(
												clkin_50, 
												char1,
												char2,
												seg7_data, 
												seg7_char1, 
												seg7_char2
												);
	 
	 
 
end Energy_Monitor;

