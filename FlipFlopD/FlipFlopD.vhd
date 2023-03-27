library IEEE;
use IEEE.std_logic_1164.all;


entity FlipFlopD is
	port(clk: in std_logic;
			d: in std_logic;
			reset: in std_logic;
			set: in std_logic;
			q: out std_logic);

end FlipFlopD;

architecture BehavioralSimple of FlipFlopD is
begin
	process(reset,clk)
	begin
		if(rising_edge(clk)) then
               q <= d;
		end if;
	end process;
end BehavioralSimple;

architecture Behavioral of FlipFlopD is
begin
	process(reset,clk)
	begin
		if (rising_edge(clk)) then
      if (reset = '1') then
        q<= '0';
      elsif (set = '1') then
        q <= '1';
      else
	      q<=d;
      end if;
    end if;
	end process;
end Behavioral;
