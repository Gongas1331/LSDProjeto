library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity FSM std_logic;
			ststp			: in std_logic;
			p1 			: in std_logic;
			p2 			: in std_logic;
			p3 			: in std_logic;
			reset 		: in std_logic;
			timeExp	 	: in std_logic;
			door			: in std_logic; --checks if door is open
			program 		: out std_logic_vector(3 downto 0);
			newTime		: out std_logic;
			timeVal		: out std_logic;
			timeEn		: out std_logic;
			waterValve	: out std_logic;
			rinse			: out std_logic;
			waterPump	: out std_logic;
			spin			: out std_logic; 
			);
end FSM;

architecture Behavioral of FSM is

type State is (idle, wIn, rns, wOut, spn, off);		--states: waiting for input(idle), water in, rinse, water out, spin, turning off
signal pSt, nSt	: State	:=	ini; --present state, next state, by default machine is idle

signal s_program : std_logic_vector(13 downto 0):="00011001111111"; --records the program inputed
signal cycle, finish, ison : std_logic:= '0';

--time for each task

constant wInTime : std_logic_vector(6 downto 0):= "0010010";	--5s
constant rnsTime : std_logic_vector(6 downto 0):="0010000";		--9s
constant wOutTime : std_logic_vector(6 downto 0):="0100100";	--2s
constant spnTime : std_logic_vector(6 downto 0):="0011001";			--4s
constant offTime : std_logic_vector(6 downto 0):="0100100";	--2s

--total time for the different programs

constant p1time : std_logic_vector(13 downto 0):="01100000000000"; --38s
constant p2time : std_logic_vector(13 downto 0):="01001000100100"; --22s
constant p3time : std_logic_vector(13 downto 0):="11111110000010"; --6s

begin
	sync_proc : process(clk)
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				pSt <= idle;
			else
			pSt <= nSt;
		end if;
	end process;
	
	comb_proc : process(pSt, timeExp)
	begin
		case (pSt) is
		when idle =>
			s_program <= "0000";
			waterValve	<='0';
			rinse			<='0';
			waterPump	<='0';
			spin			<='0';
			if (p1 = '1' and p2 = '0' and p3 = '0') then
				s_program <= "0001";
			elsif (p1 = '0' and p2 = '1' and p3 = '0') then
					s_program <= "0010";
			elsif (p1 = '0' and p2 = '0' and p3 = '1') then
						s_program <= "0011";
			end if;
			program <= s_program;
			if (ststp='1') then
				if (s_program = "00011001111111") then
					nSt <= idle;
				else
					nSt <= wIn;
					if (s_program = "00011001111001") then
						nSt <= wIn;
						cycle <= '1';
					elsif (s_program = "00011000100100") then
						nSt <= wIn;
					elsif (s_program = "00011000110000") then
						nSt <= spn;
					end if;
				end if;
			end if;
			
		when wIn =>
	
	
		when rns =>
			
			
		when wOut =>
		
		
		when spn =>
			finish <= '1';
			if (timeExp = '1') then
				nSt <= wOut;
			else
				nSt <= pSt;
		when off =>
		
		
	end process;
		
end Behavior;