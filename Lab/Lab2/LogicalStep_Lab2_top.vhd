library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb					: in	std_logic_vector(3 downto 0);
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is


---- Components Used ---------------------------------------------------------------------- 
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
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
	
	component mux8_2t1 port(
	SLCT			:	in  std_logic;
	IN1			:	in  std_logic_vector(7 downto 0);
	IN2			:  in  std_logic_vector(7 downto 0);
	OTP			:  out std_logic_vector(7 downto 0)
	);
	end component;
	
	component adder4 port(
	sig1			:	in  std_logic_vector(3 downto 0);
	sig2			:	in  std_logic_vector(3 downto 0);
	sum			:	out std_logic_vector(7 downto 0)
	);
	end component;
	
	component processor port(
	pbs			:	in  std_logic_vector(2 downto 0);
	in1				:	in  std_logic_vector(3 downto 0);
	in2				:	in  std_logic_vector(3 downto 0);
	otp			:	out std_logic_vector(7 downto 0)
	);
	end component;
	
-- Create any signals, or temporary variables to be used

--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR

	signal seg7_A		: std_logic_vector(6 downto 0);
	signal hex_A		: std_logic_vector(3 downto 0);
	
	signal seg7_B		: std_logic_vector(6 downto 0);
	signal hex_B		: std_logic_vector(3 downto 0);
	
	-- For concatenation of hex_A and hex_B
	signal hexAB		: std_logic_vector(7 downto 0);
	
	-- For 4 bit adder
	signal sum			: std_logic_vector(7 downto 0);
	
	-- For MUX 8 bit : 2 to 1
	signal muxslct 	: std_logic;
	signal muxinA		: std_logic_vector(7 downto 0);
	signal muxinB		: std_logic_vector(7 downto 0);
	signal muxout		: std_logic_vector(7 downto 0);
	
	-- For Logic Processor
	signal pout			: std_logic_vector(7 downto 0);
	signal zeros		: std_logic_vector(3 downto 0);
	
-- Here the circuit begins

begin
	
	-- Assigning values to variables
	hex_A <= sw(3 downto 0);
	hex_B <= sw(7 downto 4);
	muxslct <= pb(3);	
	
	--===================================== Logic Processor ===================================================
	
	-- Assigning zeros to zeros
	zeros	<= "0000";
	
	pinst					: processor port map(pb(2 downto 0), hex_A, hex_B, pout);
	
	
	--===================================== SEG7 Display Section===================================================
	
	-- Concatenation of hex_A and hex_B
	hexAB <= hex_B & hex_A;
	-- Adder 4 bit
	adderInst			: adder4 port map(hex_A, hex_B, sum);
	
	-- Multiplexer 8 bits
	muxInst2				: mux8_2t1 port map(muxslct, sum, pout, leds(7 downto 0));

	muxInst 				: mux8_2t1 port map(muxslct, sum, hexAB, muxout);
	
	
															-- outputs from MUX
	INST1					: SevenSegment port map(muxout(3 downto 0), seg7_B);
	INST2					: SevenSegment port map(muxout(7 downto 4), seg7_A);
	
	
	INST3					: segment7_mux port map(
															clkin_50, 
															seg7_A,
															seg7_B,
															seg7_data, 
															seg7_char1, 
															seg7_char2
															);
 
end SimpleCircuit;

