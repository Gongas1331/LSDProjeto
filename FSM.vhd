library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FSM is
	port(	clk			: in std_logic;	
			running		: in std_logic; 									--start and stop
			p1 			: in std_logic;
			p2 			: in std_logic;
			p3 			: in std_logic;
			reset 		: in std_logic;
			timeExp	 	: in std_logic;									--'1' when the current task is done
			door			: in std_logic; 									--checks if door is open
			program 		: out std_logic_vector(3 downto 0);
			newTime		: out std_logic;
			timeVal		: out std_logic_vector(7 downto 0);			--display total program time when selecting a program and a task's time when running
			timeEn		: out std_logic;
			waterValve	: out std_logic;
			rinse			: out std_logic;
			waterPump	: out std_logic;
			spin			: out std_logic;
			ledOn			: out std_logic;
			doorLed		: out std_logic);
end FSM;

architecture Behavioral of FSM is

type State is (idle, wIn, rns, wOut, spn, off);						--states: waiting for input(idle), water in, rinse, water out, spin, turning off
signal pSt, nSt	: State	:=	idle; 									--present state and next state, by default machine begins in idle

signal s_program : std_logic_vector(3 downto 0) := "1111";			--records the program inputed
signal cycle, finish, ison : std_logic:= '0';
signal diffSt		: std_logic := '1';									--indicates if the state has changed
signal s_timeVal : std_logic_vector(7 downto 0):= "11111111";	--signal for timeVal, if machine is idle

--time for each task (BCD)

constant wInTime 	: std_logic_vector(7 downto 0):= "00000101";	--5s
constant rnsTime	: std_logic_vector(7 downto 0):=	"00001000";	--9s
constant wOutTime : std_logic_vector(7 downto 0):=	"00000010";	--2s
constant spnTime 	: std_logic_vector(7 downto 0):=	"00000100";	--4s
constant offTime 	: std_logic_vector(7 downto 0):=	"00000010";	--2s

--total time for the different programs (BCD)

constant ptime 	: std_logic_vector(7 downto 0):= "11111111";	--display off
constant p1time 	: std_logic_vector(7 downto 0):= "00111000"; --38s
constant p2time 	: std_logic_vector(7 downto 0):= "00100010"; --22s
constant p3time 	: std_logic_vector(7 downto 0):= "00000110"; --06s

begin
	sync_proc : process(clk, reset)
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				pSt <= idle;
			else
				if (pSt /= nSt) then
					diffSt <= '1';
				else
					diffSt <= '0';
				end if;
			pSt <= nSt;
			end if;
			if (pSt = idle) then
				newTime <= '1';
			else
				newTime <= diffSt;
			end if;
		end if;
	end process;
	
	
	comb_proc : process(pSt,timeExp, running, door)
	begin
		case (pSt) is
		when idle =>
			timeEn <= '0';
			ledOn			<= '0';
			waterValve	<= '0';
			rinse			<= '0';
			waterPump	<= '0';
			spin			<= '0';
			
			if (p1 = '1' and p2 = '0' and p3 = '0') then
				s_program <= "0001";
				timeVal <= p1time;
				
			elsif (p1 = '0' and p2 = '1' and p3 = '0') then
				s_program <= "0010";
				timeVal <= p2time;
				
			elsif (p1 = '0' and p2 = '0' and p3 = '1') then
				s_program <= "0011";
				timeVal <= p3time;
			else
				s_program <= "1111";
				timeVal <= ptime;
			end if;
			
			if (running = '1' and door= '0') then
				timeEn 	<= '1';
				if (s_program = "0001") then
					nSt <= wOut;
					cycle <= '1';
				elsif (s_program = "0010") then
					nSt <= wIn;
				elsif (s_program = "0011") then
					nSt <= spn;
				else	
					nSt <= idle;
				end if;
			else
				timeEn 	<= '0';
			end if;
			
			program	<= s_program;
			
		when wIn =>
			ledOn			<= '1';
			waterValve	<= '1';
			rinse			<= '0';
			waterPump	<= '0';
			timeVal 	<= wInTime;
			if (running = '1' and door= '0') then
				timeEn 	<= '1';
				if (timeExp = '1') then
					nSt <= rns;
				else
					nSt <= wIn;
				end if;
			else
				timeEn 	<= '0';
			end if;
			
		when rns =>
			waterValve	<= '0';
			rinse			<= '1';
			timeVal <= rnsTime;
			if (running = '1' and door= '0') then
				timeEn 	<= '1';
				if (timeExp = '1') then
					nSt <= wOut;
				else
					nSt <= rns;
				end if;
			else
				timeEn 	<= '0';
			end if;
			
		when wOut =>
			rinse			<= '0';
			waterPump	<= '1';
			spin			<= '0';
			timeVal <= wOutTime;
			if (running = '1' and door= '0') then
				timeEn 	<= '1';
				if (timeExp = '1') then
					if (cycle = '1') then
						nSt 	<= Win;
						cycle <= '0';
					elsif (cycle = '0') then
						nSt <= spn;
					elsif(finish = '1') then
						nSt <= off;
					end if;
				else
					nSt <= wOut;
				end if;
			else
				timeEn 	<= '0';
			end if;
		
		when spn =>
			ledOn			<= '1';
			waterPump	<= '0';
			spin			<= '1';
			finish 		<= '1';
			if (running = '1' and door= '0') then
				timeEn 	<= '1';
				if (timeExp = '1') then
					nSt <= wOut;
				else
					nSt <= spn;
				end if;
			else
				timeEn 	<= '0';
			end if;
			
		when off =>
			ledOn			<= '0';
			waterPump	<= '0';
			finish		<= '0';
			timeVal 	<= offTime;
			if (running = '1' and door= '0') then
				timeEn 	<= '1';
				if (timeExp = '1') then
					nSt <= idle;
				else
					nSt <= off;
				end if;
			else
				timeEn 	<= '0';
			end if;
			
		end case;
		
	end process;
	
	doorLed 	<= door;
		
end Behavioral;