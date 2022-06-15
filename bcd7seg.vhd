library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bcd7seg is
Port ( 	bcd : in STD_LOGIC_VECTOR (3 downto 0);
			seg7 : out STD_LOGIC_VECTOR (6 downto 0));
end bcd7seg;
 
architecture Behavioral of bcd7seg is
 
begin
 
process(bcd)
begin
 
case bcd is
	when "0000" =>
		seg7 <= "0000001"; --0
	when "0001" =>
		seg7 <= "1001111"; --1
	when "0010" =>
		seg7 <= "0010010"; --2
	when "0011" =>
		seg7 <= "0000110"; --3
	when "0100" =>
		seg7 <= "1001100"; --4
	when "0101" =>
		seg7 <= "0100100"; --5
	when "0110" =>
		seg7 <= "0100000"; --6
	when "0111" =>
		seg7 <= "0001111"; --7
	when "1000" =>
		seg7 <= "0000000"; --8
	when "1001" =>
		seg7 <= "0000100"; --9
	when others =>
		seg7 <= "1111111"; --null
	end case;
 
end process;
 
end Behavioral;
