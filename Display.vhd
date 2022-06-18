library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity display is
	port(	timeReal 	: in std_logic_vector(7 downto 0);
			equal			: in std_logic_vector(3 downto 0);
			equalDisplay: out std_logic_vector(6 downto 0); 	-- displays = if the program is paused, assign to hex6
			program 		: in std_logic_vector(3 downto 0); 		-- current program
			leftDigit	: out std_logic_vector(6 downto 0); 	-- assign to hex5
			rightDigit	: out std_logic_vector(6 downto 0); 	-- assign to hex4
			pDisplay 	: out std_logic_vector(6 downto 0); 	--displays P, assign to hex1
			pnDisplay 	: out std_logic_vector(6 downto 0)); 	--displays the program number, asign to hex0
			
end display;

architecture Behavioral of display is

begin
	
	bcd7segEqual	: entity work.bcd7seg(Behavioral)
			port map(
				bcd => equal,
				seg7=> equalDisplay);

	bcd7segProgram : entity work.bcd7seg(Behavioral)
			port map(
				bcd => program,
				seg7 => pnDisplay);
				
	bcd7segTimeL: entity work.bcd7seg(Behavioral)
			port map(
				bcd => timeReal(7 downto 4),
				seg7 => leftDigit);
	
	bcd7segTimeR: entity work.bcd7seg(Behavioral)
			port map(
				bcd => timeReal(3 downto 0),
				seg7 => rightDigit);
	
	pDisplay <= "0001100";

end Behavioral;