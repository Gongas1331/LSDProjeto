library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MaqLavar is
	port(	CLK_50 	: in std_logic;
			KEY		: in std_logic_vector(1 downto 0);
			SW			: in std_logic_vector(3 downto 0);
			LEDR		: out std_logic_vector(0 downto 0);
			LEDG		: out std_logic_vector(3 downto 0);
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			HEX4		: out std_logic_vector(6 downto 0);
			HEX5		: out std_logic_vector(6 downto 0);
			HEX6		: out std_logic_vector(6 downto 0)
			);
end MaqLavar;

architecture Shell of MaqLavar is

signal	s_startstop, s_reset, s_pulse, s_p1, s_p2, s_p3, s_door, s_timeEn : std_logic;
signal	s_prog 		: std_logic_vector(3 downto 0);
signal	s_timeReal 	: std_logic_vector(7 downto 0);

begin
	registerBlock	: entity work.registerUnit(Behavioral)
		port map(
			clk				=> CLK_50,
			door_in			=> SW(0),
			p1_in				=> SW(1),
			p2_in				=> SW(2),
			p3_in				=> SW(3),
			reset_in			=> KEY(0),
			startstop_in	=> KEY(1),
			door_out			=> s_door,
			p1_out			=> s_p1,
			p2_out			=> s_p2,
			p3_out			=> s_p3,
			reset_out		=> s_reset,
			startstop_out	=> s_startstop);
		
	pulseGenUnit	: entity work.PulseGen(Behavioral)
		generic map(
			N => 50000000)
		port map(
			clk	=> CLK_50,
			reset	=> s_reset,
			pulse	=> s_pulse);
		
	displayUnit 	: entity work.Display(Behavioral)
		port map(
			timeReal		=>	s_timeReal,
			timeEn		=>	s_pulse and s_timeEn,
			enDisplay	=>	HEX6,
			program 		=>	s_prog,
			leftDigit	=> HEX5,
			rightDigit	=>	HEX4,
			pDisplay 	=>	HEX1,
			pnDisplay	=> HEX0);
			
end Shell;