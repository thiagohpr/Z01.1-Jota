library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuito is
	port (
    A,B,C : in  STD_LOGIC;
    x     : out STD_LOGIC);
end entity;

architecture arch of circuito is

begin

    x <= not((B and C) or not(A)) and B and A;

end architecture;
