library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity display is
	port(	program : in std_logic_vector(1 downto 0);
			pdisplay : out std_logic_vector(6 downto 0);
			pndisplay : out std_logic_vector(6 downto 0););