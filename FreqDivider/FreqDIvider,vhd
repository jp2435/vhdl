library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider is
	generic(k		: positive := 10);
	port(	clkIn 	: in std_logic;
			clkOut 	: out std_logic);
end FreqDivider;

architecture Behavioral of FreqDivider is
	signal s_counter : unsigned(31 downto 0);
	signal s_halfWay : unsigned(31 downto 0);
	signal s_end	  : unsigned(31 downto 0);
	
begin

	s_halfWay <= ((to_unsigned(k,32) / 2));
	s_end <= (to_unsigned(k,32));
	
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
		
			s_counter <= s_counter + 1;
			
			if (s_counter >= s_end - 1) then
				clkOut <= '0';
				s_counter <= (others => '0');
			
			elsif (s_counter = s_halfway - 1) then
					clkOut <= '1';
					s_counter <= s_counter + 1;
			end if;
		end if;
	end process;	
end Behavioral;
