library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MaqLavar is
	port (
		CLOCK_50 : in std_logic;
		KEY      : in std_logic_vector(1 downto 0);
		SW       : in std_logic_vector(3 downto 0);
		LEDR     : out std_logic_vector(3 downto 0);
		LEDG     : out std_logic_vector(7 downto 0);
		HEX0     : out std_logic_vector(6 downto 0);
		HEX1     : out std_logic_vector(6 downto 0);
		HEX4     : out std_logic_vector(6 downto 0);
		HEX5     : out std_logic_vector(6 downto 0);
		HEX6     : out std_logic_vector(6 downto 0)
	);
end MaqLavar;

architecture Shell of MaqLavar is

	signal s_startstop, s_reset, s_pulse, s_p1, s_p2, s_p3, s_door, s_timeEn, s_running, s_timeExp, s_newTime : std_logic;
	signal s_program, s_equal                                                                                 : std_logic_vector(3 downto 0);
	signal s_timeReal, s_timeVal                                                                              : std_logic_vector(7 downto 0);

begin
	process (CLOCK_50, s_program)
	begin
		if (rising_edge(CLOCK_50)) then
			if (s_program = "0001") then
				LEDR(3 downto 1) <= "001";
			elsif (s_program = "0010") then
				LEDR(3 downto 1) <= "010";
			elsif (s_program = "0011") then
				LEDR(3 downto 1) <= "100";
			else
				LEDR(3 downto 1) <= "000";
			end if;
		end if;
	end process;
	registerBlock : entity work.registerUnit(Behavioral)
		port map(
			clk           => CLOCK_50,
			door_in       => SW(0),
			p1_in         => SW(1),
			p2_in         => SW(2),
			p3_in         => SW(3),
			reset_in      => KEY(0),
			startstop_in  => KEY(1),
			door_out      => s_door,
			p1_out        => s_p1,
			p2_out        => s_p2,
			p3_out        => s_p3,
			reset_out     => s_reset,
			startstop_out => s_startstop);

	FSMUnit : entity work.FSM(Behavioral)
		port map(
			clk          => CLOCK_50,
			startstop    => s_startstop,
			p1           => s_p1,
			p2           => s_p2,
			p3           => s_p3,
			reset        => s_reset,
			timeExp      => s_timeExp,
			door         => s_door,
			program      => s_program,
			newTime      => s_newTime,
			timeVal      => s_timeVal,
			timeEn       => s_timeEn,
			functionLeds => LEDG(3 downto 0),
			ledR         => LEDR(0),
			doorLed      => LEDG(7),
			equal        => s_equal);

	timerAux : entity work.Timer(Behavioral)
		port map(
			reset    => s_reset,
			clk      => CLOCK_50,
			timeEn   => s_pulse and s_timeEn,
			newTime  => s_newTime,
			timeVal  => s_timeVal,
			timeExp  => s_timeExp,
			timeReal => s_timeReal);

	pulseGenUnit : entity work.PulseGen(Behavioral)
		generic map(
			N => 50000000)
		port map(
			clk   => CLOCK_50,
			reset => s_reset,
			pulse => s_pulse);

	displayUnit : entity work.Display(Behavioral)
		port map(
			timeReal     => s_timeReal,
			equal        => s_equal,
			equalDisplay => HEX6,
			program      => s_program,
			leftDigit    => HEX5,
			rightDigit   => HEX4,
			pDisplay     => HEX1,
			pnDisplay    => HEX0);
	LEDG(6 downto 4) <= "000";
end Shell;