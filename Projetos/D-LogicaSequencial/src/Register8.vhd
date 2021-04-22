-- Elementos de Sistemas
-- by Luciano Soares
-- Register8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register8 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(7 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(7 downto 0)
	);
end entity;

architecture arch of Register8 is

	component BinaryDigit is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC;
			load:    in STD_LOGIC;
			output: out STD_LOGIC
		);
	end component;

	signal saida, entrada: STD_LOGIC_VECTOR(7 downto 0);

begin

	entrada <= input;

	e0: BinaryDigit port map(clock, entrada(0), load, saida(0));
	e1: BinaryDigit port map(clock, entrada(1), load, saida(1));
	e2: BinaryDigit port map(clock, entrada(2), load, saida(2));
	e3: BinaryDigit port map(clock, entrada(3), load, saida(3));
	e4: BinaryDigit port map(clock, entrada(4), load, saida(4));
	e5: BinaryDigit port map(clock, entrada(5), load, saida(5));
	e6: BinaryDigit port map(clock, entrada(6), load, saida(6));
	e7: BinaryDigit port map(clock, entrada(7), load, saida(7));

	output <= saida;


end architecture;
