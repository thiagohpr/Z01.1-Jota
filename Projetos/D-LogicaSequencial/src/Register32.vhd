-- Elementos de Sistemas
-- by Luciano Soares
-- Register32.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register32 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(31 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end entity;

architecture arch of Register32 is

	component Register16 is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC_VECTOR(15 downto 0);
			load:    in STD_LOGIC;
			output: out STD_LOGIC_VECTOR(15 downto 0)
      );
	end component;
	signal entrada: STD_LOGIC_VECTOR(31 downto 0);
	signal saida: STD_LOGIC_VECTOR(31 downto 0);
	

begin
	entrada <= input;
	
	
	register1: Register16
	port map(
		clock, entrada(31 downto 16), load, saida(31 downto 16)); 
	

	register2: Register16
	port map(
		clock, entrada(15 downto 0), load, saida(15 downto 0));
		
	output <= saida;
		
end architecture;
