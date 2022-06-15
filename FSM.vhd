library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity FSM lin std_logic;
			ststp			: in std_logic;
			p1 			: in std_logic;
			p2 			: in std_logic;
			p3 			: in std_logic;
			reset 		: in std_logic;
			time_exp	 	: in std_logic;
			door			: in std_logic; --checks if door is open
			program 		: out std_logic_vector(13 downto 0);
			new_time		: out std_logic;
			time_value	: out std_logic;
			time_en		: out std_logic;
			water_valve	: out std_logic;
			rinse			: out std_logic;
			water_pump	: out std_logic;
			spin			: out std_logic; 
			);
end FSM;

architecture Behavior of FSM is

type State is (idle, win, rns, wout, spn, off);		--states: waiting for input(idle), water in, rinse, water out, spin, turning off
signal pSt, nSt	: State	:=	ini; --present state, next state, by default machine is idle

signal s_program : std_logic_vector(13 downto 0):="00011001111111"; --records the program inputed
signal cycle, finish, ison : std_logic:= '0';

--time for each task

constant win_t : std_logic_vector(6 downto 0):= "0010010";	--5s
constant rns_t : std_logic_vector(6 downto 0):="0010000";		--9s
constant wout_t : std_logic_vector(6 downto 0):="0100100";	--2s
constant spn_t : std_logic_vector(6 downto 0):="0011001";			--4s
constant off_t : std_logic_vector(6 downto 0):="0100100";	--2s

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
				if (ststp='1') then
					if ison='0' then
						ison<='1';
					elsif ison='1' then
						ison='0';
					end if;
				end if;
				if ison='0' then
					time_en <= '0';
					nSt <= pSt;
				end if;
				pSt <= nSt;
			end if;
		end if;
	end process;
	
	comb_proc : process(pSt, timeExp)
	begin
		case (pSt) is
		when idle =>
			s_program <= "00011001111111";
			water_valve	<='0';
			rinse			<='0';
			water_pump	<='0';
			spin			<='0';
			if (p1 = '1' and p2 = '0' and p3 = '0') then
				s_program <= "00011001111001";
			elsif (p1 = '0' and p2 = '1' and p3 = '0') then
					s_program <= "00011000100100";
			elsif (p1 = '0' and p2 = '0' and p3 = '1') then
						s_program <= "00011000110000";
			end if;
			program <= s_program;
			if (ststp='1') then
				if (s_program = "00011001111111") then
					nSt <= idle;
				else
					nSt <= win;
					if (s_program = "00011001111001") then
						nSt <= win;
						cycle <= '1';
					elsif (s_program = "00011000100100") then
						nSt <= win;
					elsif (s_program = "00011000110000") then
						nSt <= spn;
					end if;
				end if;
			end if;
			
		when win =>
	
	
		when rns =>
			
			
		when wout =>
		
		
		when spn =>
			finish <= '1';
			if time_exp = '1' then
				nSt <= wout;
			else
				nSt <= pSt;
		when off =>
		
		
	end process;
		
end Behavior;