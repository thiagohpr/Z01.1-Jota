library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way is
	port (
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			e:   in  STD_LOGIC;
			f:   in  STD_LOGIC;
			g:   in  STD_LOGIC;
			h:   in  STD_LOGIC;
			q:   out STD_LOGIC);
end entity;

architecture arch of Or8Way is

signal aux1 : std_logic;
signal aux2 : std_logic;
signal aux3 : std_logic;
signal aux4 : std_logic;
signal aux5 : std_logic;
signal aux6 : std_logic;

begin
		aux1<=a or b;
		aux2<=c or d;
		aux3<=e or f;
		aux4<=g or h;
		
		aux5<=aux1 or aux2;
		aux6<=aux3 or aux4;
		
		q<=aux5 or aux6;

end architecture;
