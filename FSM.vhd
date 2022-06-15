library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity FSM is
	port(	ststp			: in std_logic; 								--start and stop
			p1 			: in std_logic;
			p2 			: in std_logic;
			p3 			: in std_logic;
			reset 		: in std_logic;
			timeExp	 	: in std_logic;								--'1' when the current task is done
			door			: in std_logic; 								--checks if door is open
			program 		: out std_logic_vector(3 downto 0);
			newTime		: out std_logic;
			timeVal		: out std_logic_vector(7 downto 0);
			timeEn		: out std_logic;
			waterValve	: out std_logic;
			rinse			: out std_logic;
			waterPump	: out std_logic;
			spin			: out std_logic;
			);
end FSM;

architecture Behavioral of FSM is

type State is (idle, wIn, rns, wOut, spn, off);				--states: waiting for input(idle), water in, rinse, water out, spin, turning off
signal pSt, nSt	: State	:=	ini; 								--present state, next state, by default machine is idle

signal s_program : std_logic_vector(3 downto 0):="1111"; --records the program inputed
signal cycle, finish, running, ison , diffSt: std_logic:= '0';

--time for each task

constant wInTime 	: std_logic_vector(3 downto 0):= "00000101";	--5s
constant rnsTime	: std_logic_vector(3 downto 0):=	"00001001";	--9s
constant wOutTime : std_logic_vector(3 downto 0):=	"00000010";	--2s
constant spnTime 	: std_logic_vector(3 downto 0):=	"00000100";	--4s
constant offTime 	: std_logic_vector(3 downto 0):=	"00000010";	--2s

--total time for the different programs
constant ptime 	: std_logic_vector(7 downto 0):="11111111";	--display off
constant p1time 	: std_logic_vector(7 downto 0):="00111000"; 	--38s
constant p2time 	: std_logic_vector(7 downto 0):="00100010"; 	--22s
constant p3time 	: std_logic_vector(7 downto 0):="00000110"; 	--06s

begin
	sync_proc : process(clk)
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				pSt <= idle;
				running <= '0';
			else
				pSt <= nSt;
		end if;
	end process;
	
	comb_proc : process(pSt, timeExp)
	begin
		case (pSt) is
		when idle =>
			s_program <= "1111";
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '0';
			spin			<= '0';
			if(ststp = '1') then
				running <= not running;
			end if;
			if (p1 = '1' and p2 = '0' and p3 = '0') then
				s_program <= "0001";
			elsif (p1 = '0' and p2 = '1' and p3 = '0') then
				s_program <= "0010";
			elsif (p1 = '0' and p2 = '0' and p3 = '1') then
				s_program <= "0011";
			else
				s_program <="1111"
			end if;
			program <= s_program;
			if (running = '1') then
				if (s_program = "1111") then
					nSt <= idle;
				elsif (s_program = "0001") then
					nSt <= wIn;
					cycle <= '1';
				elsif (s_program = "0010") then
					nSt <= wIn;
				elsif (s_program = "0011") then
					nSt <= spn;
				end if;
			end if;
			
		when wIn =>
			waterValve	<= '1';
			rinse			<= '0';
			waterPump	<= '0';
			spin 			<= '0';
			if(ststp = '1') then
				running <= not running;
	
	
		when rns =>
			waterValve	<= '0';
			rinse			<= '1';
			waterPump	<= '0';
			spin			<= '0';
			if(ststp = '1') then
				running <= not running;
			
			
		when wOut =>
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '1';
			spin			<= '0';
			if(ststp = '1') then
				running <= not running;
		
		
		when spn =>
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '0';
			spin			<= '1';
			finish <= '1';
			if(ststp = '1') then
				running <= not running;
			end if;
			if (timeExp = '1' and ison='1') then
				nSt <= wOut;
			else
				nSt <= pSt;
		when off =>
			ison			<= '0';
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '0';
			spin			<= '0';
		
	end process;
	
	timeEn 	<= running;
	ledOn 	<= ison;
		
end Behavioral;