library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register is
    port(
        clk : in std_logic;
        ststp_in : in std_logic;
        p1_in : in std_logic;
        p2_in : in std_logic;
        p3_in : in std_logic;
        reset_in : in std_logic;
		  ststp_out : out std_logic;
        p1_out : out std_logic;
        p2_out : out std_logic;
        p3_out : out std_logic;
		  reset_out : out std_logic;
        )
end register;
architecture Behav of Register is
	signal ison : std_logic:='0';
	signal ss : std_logic;
    begin
        process(clk)
        begin
            if rising_edge(clk) then
					
				/*
                if reset = '1' then
                    op1 <= '0';
                    op2 <= '0';
                    op3 <= '0';
						  ison<='0';
						  ststp <= '0';
                else
						ststp <= startstop;
						if ststp ='1' then
							if ison ='0' then
								ison<='1';
								op1 <= p1;
								op2 <= p2;
								op3 <= p3;
								ststp <= '1';
							elsif ison ='1' then
								ison<='0';
								op1 <= '0';
								op2 <= '0';
								op3 <= '0';
								ststp <= '0';
							end if;
						end if;
					 end if;
					 */
            end if;
        end process;
    end Behav;