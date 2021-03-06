 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity mux  is
  port (a,b,c,d: in std_logic_vector(3 downto 0); S1,S0: in std_logic; Y: out std_logic_vector(3 downto 0));
end entity mux;
architecture Struct of mux is
  signal o1,o2: std_logic;
begin
  m1: MUX_4x1 port map(I3=>d(3), I2=>c(3), I1=>b(3), I0=>a(3), S2=>S1, S1=>S0, Y=> Y(3));
  m2: MUX_4x1 port map(I3=>d(2), I2=>c(2), I1=>b(2), I0=>a(2), S2=>S1, S1=>S0, Y=> Y(2));
  m3: MUX_4x1 port map(I3=>d(1), I2=>c(1), I1=>b(1), I0=>a(1), S2=>S1, S1=>S0, Y=> Y(1));
  m4: MUX_4x1 port map(I3=>d(0), I2=>c(0), I1=>b(0), I0=>a(0), S2=>S1, S1=>S0, Y=> Y(0));
end Struct;
