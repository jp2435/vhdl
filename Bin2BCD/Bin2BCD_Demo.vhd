library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bin2BCD_Demo is
	port(SW: in std_logic_vector(3 downto 0);
			LEDR: out std_logic_vector(7 downto 0));
end Bin2BCD_Demo;

architecture Shell of Bin2BCD_Demo is
begin
	core: entity work.Bin2BCD(Behavioral)
		port map (bin => SW,
					bcd => LEDR);
end Shell;
