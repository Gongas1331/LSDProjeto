library IEEE;
use IEEE.std_logic_1164.all;

entity FSM is
	port (
		clk          : in std_logic;
		startstop    : in std_logic; --start and stop
		reset        : in std_logic;
		p1           : in std_logic;
		p2           : in std_logic;
		p3           : in std_logic;
		timeExp      : in std_logic; --'1' when the current task is done
		door         : in std_logic; --checks if door is open
		program      : out std_logic_vector(3 downto 0);
		newTime      : out std_logic;
		timeVal      : out std_logic_vector(7 downto 0); --display total program time when selecting a program and a task's time when running
		timeEn       : out std_logic;                    --enables the time timer
		functionLeds : out std_logic_vector(3 downto 0); --leds for the functions(3:spin, 2:wOut, 1:rns, 0:wIn)
		ledR         : out std_logic;                    --led that indicates if the program is running
		doorLed      : out std_logic;
		equal        : out std_logic_vector(3 downto 0));
end FSM;

architecture Behavioral of FSM is

	--states: waiting for input(idle), water in, rinse, water out, spin, turning off

	type State is (idle, wIn, rns, wOut, spn, off);
	signal pState, nState : State := idle; --present state and next state, by default machine begins in idle

	signal s_program               : std_logic_vector(3 downto 0) := "1111";     --records the program inputed
	signal cycle, programEnd, ison : std_logic                    := '0';        --cycle enables the repetition of the cyle(wIn, rns, wOut); programEnd lets the machine turn off; ison tells if the machine is working
	signal diffState               : std_logic                    := '1';        --indicates if the state has changed
	signal s_timeEn                : std_logic                    := '0';        --enables the timer
	signal s_timeVal               : std_logic_vector(7 downto 0) := "11111111"; --display total program time when selecting a program and a task's time when running

	--time for each task (BCD)

	constant wInTime  : std_logic_vector(7 downto 0) := "00000101"; --5s
	constant rnsTime  : std_logic_vector(7 downto 0) := "00001000"; --9s
	constant wOutTime : std_logic_vector(7 downto 0) := "00000010"; --2s
	constant spnTime  : std_logic_vector(7 downto 0) := "00000100"; --4s
	constant offTime  : std_logic_vector(7 downto 0) := "00000010"; --2s

	--total time for the different programs (BCD)

	constant ptime  : std_logic_vector(7 downto 0) := "11111111"; --display off
	constant p1time : std_logic_vector(7 downto 0) := "00100110"; --38s
	constant p2time : std_logic_vector(7 downto 0) := "00010110"; --22s
	constant p3time : std_logic_vector(7 downto 0) := "00000110"; --06s

begin
	sync_proc : process (clk, reset)
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				pState    <= idle;
				diffState <= '1';
			else
				if (pState = idle) then
					diffState <= '1';
					s_timeEn  <= '0';
				else
					if (pState /= nState) then
						diffState <= '1';
					else
						diffState <= '0';
					end if;

					if (door = '1') then
						s_timeEn <= '0';
					end if;

					if (startstop = '1' and door = '0' and pState /= off) then
						if (s_timeEn = '0') then
							s_timeEn <= '1';
						else
							s_timeEn <= '0';
						end if;
					end if;
				end if;
				pState <= nState; --updates the present state
			end if;
		end if;
	end process;
	comb_proc : process (pState)
	begin
		case (pState) is
			when idle =>
				ison         <= '0';
				functionLeds <= "0000";
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
				if (startstop = '1' and door = '0') then
					if (s_program = "0001") then
						cycle     <= '1';
						nState    <= wIn;
					elsif (s_program = "0010") then
						nState    <= wIn;
					elsif (s_program = "0011") then
						nState    <= spn;
					else
						nState <= idle;
					end if;
				else
					nState <= idle;
				end if;
			when wIn =>
				ison         <= '1';
				functionLeds <= "0001";
				s_timeVal    <= wInTime;

				if (timeExp = '1') then
					nState <= rns;
				else
					nState <= wIn;
				end if;

			when rns =>
				ison         <= '1';
				functionLeds <= "0010";
				
				if (timeExp = '1') then
					nState    <= wOut;
				else
					nState    <= rns;
				end if;
				
			when wOut =>
				ison         <= '1';
				functionLeds <= "0100";
				if (timeExp = '1') then
					if (cycle = '1') then
						cycle     <= '0';
						nState    <= wIn;
					elsif (programEnd = '1') then
						programEnd <= '0';
						nState     <= off;
					else
						nState    <= spn;
					end if;
				else
					nState    <= wOut;
				end if;

			when spn =>
				ison         <= '1';
				functionLeds <= "1000";
				programEnd   <= '1';
				if (timeExp = '1') then
					nState    <= wOut;
				else
					nState    <= spn;
				end if;

			when off =>
				ison         <= '0';
				functionLeds <= "0000";
				if (timeExp = '1') then
					nState    <= idle;
				else
					nState    <= off;
				end if;

		end case;

	end process;

	equal   <= "1" & s_timeEn & "11";
	doorLed <= door;
	ledR    <= ison;
	newTime <= diffState;
	timeEn  <= s_timeEn;
	program <= s_program;
	timeVal <= s_timeVal;

end Behavioral;