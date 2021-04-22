-- Elementos de Sistemas
-- by Luciano Soares
-- Register64.vhd

 
-- Elementos de Sistemas
-- by Luciano Soares
-- Register64.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register64 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(63 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(63 downto 0)
	);
end entity;

architecture arch of Register64 is

	component Register32 is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC_VECTOR(31 downto 0);
			load:    in STD_LOGIC;
			output: out STD_LOGIC_VECTOR(31 downto 0)
      );
	end component;

	SIGNAL output1, output2, input1, input2: std_logic_vector(31 downto 0);

begin
	input1 <= input(63 downto 32);
	input2 <= input(31 downto 0);
	output <= output1 & output2 ;

	register1: Register32 Port Map (clock, input1, load, output1);
	register2: Register32 Port Map (clock, input2, load, output2);

end architecture;