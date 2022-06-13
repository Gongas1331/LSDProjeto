library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FSM is
	port(	clk : in std_logic;
			ststp : in std_logic;
			p1 : in std_logic;
			p2 : in std_logic;
			p3 : in std_logic;
			reset : in std_logic;
			);
end FSM;

architecture Behavioral of FSM is

constant water_in : std_logic_vector(6 downto 0):= "0010010";	--5s
constant rinse : std_logic_vector(6 downto 0):="0010000";		--9s
constant water_out : std_logic_vector(6 downto 0):="0100100";	--2s
constant spin : std_logic_vector(6 downto 0):="0011001";			--4s

constant p1time : std_logic_vector(6 downto 0):="";
constant p2time : std_logic_vector(6 downto 0):="";
constant p3time : std_logic_vector(6 downto 0):="";

begin process
end Behavioral;