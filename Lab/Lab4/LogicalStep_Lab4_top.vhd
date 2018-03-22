
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


-- Comments and notes to self
--	1. RESOLVED -> DUE TO LR INPUTS... STUPID MISTAKE...
--	
-- 2. Need to implement flashing of char during error state (before this, need to fix 1.). to do this we'll need to modify our mux to have a 2 bits select
--		where select is errSig & Main_Clk, thus if errSig is 0, Main_Clk is dont care and the display shall display usual, if errSig = 1 then display shall toggle with main_clk 
--		for displaying 0000 and the actual number.
--


entity LogicalStep_Lab4_top is port (
   clkin_50		: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
);
end LogicalStep_Lab4_top;

architecture SimpleCircuit of LogicalStep_Lab4_top is

-- COMPONENTS DECLARATIONS--------------------------------------------------------------------------------
	component Bidir_shift_reg port (
	CLK	: 	in	std_logic := '0';
	RESET_n	: in std_logic := '0';
	CLK_EN	: in std_logic := '0';
	LEFT0_RIGHT1 : in std_logic := '0';
	REG_BITS		: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component Compx4 port(
	A       :   in  std_logic_vector(3 downto 0);
   B       :   in  std_logic_vector(3 downto 0);
   GT      :   out std_logic;
   EQ      :   out std_logic;
   LE      :   out std_logic
	);
	end component;
	
	component Bin_Counter4bit port(
	Main_clk			: in std_logic := '0';
	Rst_n				: in std_logic := '0';
	clk_en			: in std_logic := '0';
	up1_down0		: in std_logic := '0';
	counter_bits 	: out std_logic_vector (3 downto 0)
	);
	end component;
	
	component mux is port(
	SLCT		: in  std_logic;
	IN1		: in  std_logic_vector(7 downto 0);
	IN2 		: in  std_logic_vector(7 downto 0);
	OTP		: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component muxMod is port(
	SLCT		: in  std_logic_vector(1 downto 0);
	INPT		: in  std_logic_vector(7 downto 0);
	OTP		: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component SevenSegment port (
	hex	   :  in  std_logic_vector(3 downto 0);   
	sevenseg :  out std_logic_vector(6 downto 0)    
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
	
	component MealySM port(
	clk, rst_n		:	in		std_logic;
	e_out				:	in		std_logic;
	xypos				:	in		std_logic_vector(7 downto 0);
	-- xypos 8 bits vector will consist of xMotion & xEQ & xGT & xLT & yMotion & yEQ & yGT & yLT
	--for xMotion and yMotion, we use raw-input from pbs WITHOUT pre-inverting

	xClkEn, yClkEn :	out	std_logic;
	e_en				:	out 	std_logic;
	err				:	out	std_logic;
	xUD, yUD			:	out	std_logic
	);
	end component;
	
	component MooreSM1 port(
	clk_in, Rst_n		:	in		std_logic;
	shiftin				:	in		std_logic_vector(3 downto 0);
	ext_toggl, e_en	:	in		std_logic;
	g_en, e_out			:	out	std_logic;
	bClkEn, LR			:	out	std_logic
	);
	end component;
	
	component MooreSM2 port(
	clkin, Rst_n		: in 	std_logic;
	g_toggl, g_en		: in 	std_logic;
	g_out					: out std_logic
	);
	end component;
	
	
-- Variable declarations -----------------------------------------------------------------------------
	
	CONSTANT	SIM							:  boolean := TRUE; 	
					-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 26;    
					-- size of vectors for the counters
				
				-- main clock to drive sequencing of State Machine
   SIGNAL 	Main_CLK						:  STD_LOGIC; 			

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); 
					-- := to_unsigned(0,CLK_DIV_SIZE); 
					-- reset binary counter to zero
				
				-- target vector for x and y (4 bits)
	signal	xTarget						:	std_logic_vector(3 downto 0);
	signal	yTarget						:	std_logic_vector(3 downto 0);
				
				-- poistion vector for x and y (4 bits), initialized to <0000>
	signal 	xPos							:	std_logic_vector(3 downto 0) := "0000";
	signal 	yPos							:	std_logic_vector(3 downto 0) := "0000";
				
				-- Position Comparison bits for x and y
	signal 	xGt, xEq, xLe				: 	std_logic;
	signal 	yGt, yEq, yLe				: 	std_logic;

				-- Concatenation of x and y comparison bits < EQ & GT & LT > (3 bits)
	signal 	xPosComp						:	std_logic_vector(2 downto 0); 
	signal 	yPosComp						: 	std_logic_vector(2 downto 0);
				
				-- Extender outputs and inputs intermediary bits signals
	signal 	ext_otp, ext_en			: 	std_logic; -- signals for extender
	signal 	XCLKEN, yCLKEN				: 	std_logic; -- X and Y clock enabler
	signal	XUD, YUD						: 	std_logic;	-- X and Y UP/DOWNS
				
				-- BidirShift outputs and inputs intermediary bits signals
	signal	bidir_en, bidirLR			:	std_logic; -- signals for bidirectional shift reg
	signal	bidir_otp					:	std_logic_vector(3 downto 0);
	
				-- Grappler outputs and inputs intermediary bits signals
	signal	grapp_en						:	std_logic;
	
				-- Multiplexer 8 bits intermediary signals
	signal 	muxOtp						: 	std_logic_vector(7 downto 0);
	signal	tempOtp						:	std_logic_vector(7 downto 0);			
				-- Display intermediary signals
	signal 	xdata, ydata 				: std_logic_vector(6 downto 0);
	
				-- Error bits for error state
	signal 	errSig						: std_logic;

	
-- START ARCHITECTURE -------------------------------------------------------------------------------

	-- CLOCKING GENERATOR WHICH DIVIDES THE INPUT CLOCK DOWN TO A LOWER FREQUENCY

begin 

	BinCLK: process(clkin_50, rst_n) is
		begin
			if (rising_edge(clkin_50)) then -- binary counter increments on rising clock edge
				bin_counter <= bin_counter + 1;
			end if;
		end process;

	Clock_Source:
					Main_Clk <= clkin_50 when sim = FALSE else				-- for simulations only
					std_logic(bin_counter(23));				-- for real FPGA operation
					
---------------------------------------------------------------------------------------------------


-- Mealy SM Instance
mealysmInstance : MealySM port map (Main_Clk,rst_n,ext_otp,pb(3) & xPosComp & pb(2) & yPosComp,
												XCLKEN,YCLKEN,ext_en,errSig,XUD,YUD);

--	X and Y Position processing
	-- for x
xTarget <= sw(7 downto 4);
xCountInstance : Bin_Counter4bit port map (Main_Clk,rst_n,XCLKEN,XUD,xPos);
xCompInstance	: 	Compx4 port map	(xPos,xTarget,xGt, xEq, xLe);
xPosComp <= xEq & xGt & xLe;
	
	-- for y
yTarget<= sw(3 downto 0);
yCountInstance : Bin_Counter4bit port map (Main_Clk,rst_n,YCLKEN,YUD,yPos);
yCompInstance	: 	Compx4 port map(yPos,yTarget,yGt, yEq, yLe);
yPosComp <= yEq & yGt & yLe;	
	
	-- just to inspect if errToggl works as intended
leds(0) <= errSig;

--	Character display section
	-- TO-DO: display xPos and yPos when moving else display target
	
	--For x AND y
	-- 4bits mux with not(pb(3) and pb(2))  as select since pbs are active low
	-- select == TRUE => moving data
muxInstance	: 	mux port map(not(pb(3) and pb(2)), xTarget&yTarget, xPos&yPos, tempOtp);		
blinkingMux	:	muxMod port map(errSig&Main_Clk, tempOtp, muxOtp);
		
		-- For x data: muxOtp(7..4) and for y data: muxOtp(4..0)
sevenX : SevenSegment port map(muxOtp(7 downto 4), xdata);
sevenY : SevenSegment port map(muxOtp(3 downto 0), ydata);	
display : segment7_mux port map(clkin_50, xdata,ydata,
										  seg7_data, seg7_char1, seg7_char2);
-- Bidir shift reg
bidirShiftInstance	: Bidir_shift_reg	port map(Main_Clk,rst_n,bidir_en,bidirLR,bidir_otp);
--MooreSM1
extenderInstance		: MooreSM1	port map(Main_Clk,rst_n,bidir_otp,pb(1),ext_en,grapp_en,
														ext_otp,bidir_en,bidirLR);														
leds(7 downto 4) <= bidir_otp;
--MooreSM2
grapplerInstance	: MooreSM2	 port map(Main_Clk,rst_n,pb(0),grapp_en,leds(3));

end SimpleCircuit;
