library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd is
  port (
    bin : in std_logic_vector(3 downto 0);
    bcd : out std_logic_vector(7 downto 0)
  );
end entity bin2bcd;

architecture Behavioral of bin2bcd is
begin
  process(bin)
    variable temp : integer range 0 to 99;
  begin
    -- Converte o valor binário em decimal
    temp := to_integer(unsigned(bin));

    -- Separa os dígitos do número decimal
    bcd(7 downto 4) <= std_logic_vector(to_unsigned(temp / 10, 4));
    bcd(3 downto 0) <= std_logic_vector(to_unsigned(temp mod 10, 4));
  end process;
end architecture Behavioral;
