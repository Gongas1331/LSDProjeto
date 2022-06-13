library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register is
    port(
        clk : in std_logic;
        startstop : in std_logic;
        ip1 : in std_logic_vector;
        ip2 : in std_logic_vector;
        ip3 : in std_logic_vector;
        ostartstop : out std_logic;
        op1 : out std_logic_vector;
        op2 : out std_logic_vector;
        op3 : out std_logic_vector;
        )
end register;