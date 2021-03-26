-- Elementos de Sistemas
-- by Luciano Soares
-- Add16.vhd

-- Soma dois valores de 16 bits
-- ignorando o carry mais significativo

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Add16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

  signal carries: STD_LOGIC_VECTOR(14 downto 0);

  component FullAdder is
    port(
      a,b,c:      in STD_LOGIC;   -- entradas
      soma,vaium: out STD_LOGIC   -- sum e carry
    );
  end component;

begin
  -- Implementação vem aqui!
  u0: FullAdder port map(
    a => a(0), 
    b => b(0), 
    c => '0', 
    vaium => carries(0), 
    soma => q(0)
  );

  u1: FullAdder port map(
    a => a(1),
    b => b(1),
    c => carries(0),
    vaium => carries(1),
    soma => q(1)
  );

  u2: FullAdder port map(
    a => a(2),
    b => b(2),
    c => carries(1),
    vaium => carries(2),
    soma => q(2)
  );

  u3: FullAdder port map(
    a => a(3),
    b => b(3),
    c => carries(2),
    vaium => carries(3),
    soma => q(3)
  );

  u4: FullAdder port map(
    a => a(4),
    b => b(4),
    c => carries(3),
    vaium => carries(4),
    soma => q(4)
  );

  u5: FullAdder port map(
    a => a(5),
    b => b(5),
    c => carries(4),
    vaium => carries(5),
    soma => q(5)
  );

  u6: FullAdder port map(
    a => a(6),
    b => b(6),
    c => carries(5),
    vaium => carries(6),
    soma => q(6)
  );

  u7: FullAdder port map(
    a => a(7),
    b => b(7),
    c => carries(6),
    vaium => carries(7),
    soma => q(7)
  );

  u8: FullAdder port map(
    a => a(8),
    b => b(8),
    c => carries(7),
    vaium => carries(8),
    soma => q(8)
  );

  u9: FullAdder port map(
    a => a(9),
    b => b(9),
    c => carries(8),
    vaium => carries(9),
    soma => q(9)
  );

  u10 : FullAdder port map(
    a => a(10),
    b => b(10),
    c => carries(9),
    vaium => carries(10),
    soma => q(10)
  );

  u11 : FullAdder port map(
    a => a(11),
    b => b(11),
    c => carries(10),
    vaium => carries(11),
    soma => q(11)
  );

  u12 : FullAdder port map(
    a => a(12),
    b => b(12),
    c => carries(11),
    vaium => carries(12),
    soma => q(12)
  );

  u13 : FullAdder port map(
    a => a(13),
    b => b(13),
    c => carries(12),
    vaium => carries(13),
    soma => q(13)
  );

  u14 : FullAdder port map(
    a => a(14),
    b => b(14),
    c => carries(13),
    vaium => carries(14),
    soma => q(14)
  );

  u15 : FullAdder port map(
    a => a(15),
    b => b(15),
    c => carries(14),
    vaium => OPEN,
    soma => q(15)
  );

end architecture;
