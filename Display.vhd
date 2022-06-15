library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity display is
	port(	timeReal 	: in std_logic_vector(7 downto 0);
			timeEn		: in std_logic;
			enDisplay 	: out std_logic(6 downto 0); -- displays = if the program is paused
			program 		: in std_logic_vector(3 downto 0); -- current program
			pDisplay 	: out std_logic_vector(6 downto 0):= "0001100"; --displays P, assigned to hex1
			pnDisplay 	: out std_logic_vector(6 downto 0);); --displays the program number, asigned to hex0
			
end display;

architecture Behavioral of display is
begin
		if (timeEn='0') then
			enDisplay <= "0110111";
		else
			enDisplay <= "11111111";

	bcd7segProgram : entity work.bcd7seg(Behavioral)
			port map(
				bcd => program,
				seg7 => pnDisplay);
	

end Behaviour;