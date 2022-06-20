library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity bin2bcd is
    port(bin : in std_logic_vector(5 downto 0);
			ten, unit   : out std_logic_vector(3 downto 0));
end bin2bcd;

architecture Behavioral of bin2bcd is
    signal s_ten: std_logic_vector(3 downto 0);
    signal s_unit : std_logic_vector(3 downto 0);
begin
    process(bin)
    begin
		if (bin = "111111") then
			s_ten		<= "1111";
			s_unit 	<= "1111";
		else
			s_ten <= std_logic_vector(unsigned(bin) / to_unsigned(10,6))(3 downto 0);
			s_unit<= std_logic_vector(unsigned(bin) rem to_unsigned(10,6))(3 downto 0);
		end if;
    end process;

    unit<= s_unit ;
    ten <= s_ten ;

end Behavioral;