library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity scrabble  is
  port (I: in std_logic_vector(3 downto 0); O: out std_logic);
end entity scrabble;
architecture Struct of scrabble is
  signal s1, s2: std_logic;
begin
  g1: XNOR_2 port map (A => I(3), B => I(2), Y => s1);
  g2: XOR_2 port map (A => I(1), B => I(0), Y => s2);
  g3: AND_2  port map (A => s1, B => s2, Y => O);
end Struct;
