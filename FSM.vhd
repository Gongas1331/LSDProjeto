library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity FSM is
	port(	clk			: in std_logic;
			ststp			: in std_logic; 								--start and stop
			p1 			: in std_logic;
			p2 			: in std_logic;
			p3 			: in std_logic;
			reset 		: in std_logic;
			timeExp	 	: in std_logic;								--'1' when the current task is done
			door			: in std_logic; 								--checks if door is open
			program 		: out std_logic_vector(3 downto 0);
			newTime		: out std_logic;
			timeVal		: out std_logic_vector(7 downto 0);		--display total program time when selecting a program and a task's time when running
			timeEn		: out std_logic;
			waterValve	: out std_logic;
			rinse			: out std_logic;
			waterPump	: out std_logic;
			spin			: out std_logic;
			ledOn			: out std_logic);
end FSM;

architecture Behavioral of FSM is

type State is (idle, wIn, rns, wOut, spn, off);					--states: waiting for input(idle), water in, rinse, water out, spin, turning off
signal pSt, nSt	: State	:=	idle; 								--present state and next state, by default machine begins in idle

signal s_program : std_logic_vector(3 downto 0):="1111";		--records the program inputed
signal cycle, finish, running, ison : std_logic:= '0';
signal diffSt		: std_logic := '1';								--indicates if the state has changed
signal s_timeVal : std_logic_vector(7 downto 0):= "11111111";				--signal for timeVal, if machine is idle

--time for each task (BCD)

constant wInTime 	: std_logic_vector(7 downto 0):= "00000101";	--5s
constant rnsTime	: std_logic_vector(7 downto 0):=	"00001001";	--9s
constant wOutTime : std_logic_vector(7 downto 0):=	"00000010";	--2s
constant spnTime 	: std_logic_vector(7 downto 0):=	"00000100";	--4s
constant offTime 	: std_logic_vector(7 downto 0):=	"00000010";	--2s

--total time for the different programs (BCD)

constant ptime 	: std_logic_vector(7 downto 0):= "11111111";		--display off
constant p1time 	: std_logic_vector(7 downto 0):= "00111000"; 	--38s
constant p2time 	: std_logic_vector(7 downto 0):= "00100010"; 	--22s
constant p3time 	: std_logic_vector(7 downto 0):= "00000110"; 	--06s

begin
	sync_proc : process(clk)
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				pSt <= idle;
				diffSt <= '1';
				running <= '0';
			else
			--if(ststp = '1') then (possivel?)
				--running <= not running;
				if (pSt /= nSt or pSt = idle) then
					diffSt <= '1';
				else
					diffSt <= '0';
				pSt <= nSt;
				end if;
			end if;
		end if;
	end process;
	
	comb_proc : process(pSt, timeExp)
	begin
		case (pSt) is
		when idle =>
			s_timeVal	<= ptime;
			ison			<= '0';
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '0';
			spin			<= '0';
			if(ststp = '1') then
				running <= not running;
			end if;
			if (p1 = '1' and p2 = '0' and p3 = '0') then
				s_program <= "0001";
				s_timeVal <= p1time;
			elsif (p1 = '0' and p2 = '1' and p3 = '0') then
				s_program <= "0010";
				s_timeVal <= p2time;
			elsif (p1 = '0' and p2 = '0' and p3 = '1') then
				s_program <= "0011";
				s_timeVal <= p3time;
			else
				s_program <= "1111";
				s_timeVal <= ptime;
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
			ison			<= '1';
			waterValve	<= '1';
			rinse			<= '0';
			waterPump	<= '0';
			spin 			<= '0';
			s_timeVal <= wInTime;
			if(ststp = '1') then
				running <= not running;
			end if;
		when rns =>
			ison			<= '1';
			waterValve	<= '0';
			rinse			<= '1';
			waterPump	<= '0';
			spin			<= '0';
			s_timeVal <= rnsTime;
			if(ststp = '1') then
				running <= not running;
			end if;
			
		when wOut =>
			ison			<= '1';
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '1';
			spin			<= '0';
			s_timeVal <= wOutTime;
			if(ststp = '1') then
				running <= not running;
			end if;
		
		
		when spn =>
			ison			<= '1';
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '0';
			spin			<= '1';
			finish 		<= '1';
			if(ststp = '1') then
				running <= not running;
			end if;
			if (timeExp = '1' and ison='1') then
				nSt <= wOut;
			else
				nSt <= pSt;
			end if;
		when off =>
			ison			<= '0';
			running		<= '0';
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '0';
			spin			<= '0';
			s_timeVal <= offTime;
		end case;
		
	end process;
	
	timeEn 	<= running;
	ledOn 	<= ison;
	newTime	<= diffSt;
	timeVal	<= s_timeVal;
		
end Behavioral;