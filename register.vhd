library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register is
    port(
        clk : in std_logic;
        startstop : in std_logic;
        p1 : in std_logic_vector;
        p2 : in std_logic_vector;
        p3 : in std_logic_vector;
        startstop : out std_logic;
        p1 : out std_logic_vector;
        p2 : out std_logic_vector;
        p3 : out std_logic_vector;
        )
end register;