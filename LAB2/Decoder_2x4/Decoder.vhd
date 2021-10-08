library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Decoder  is
  port (A1, A0, E: in std_logic; Y: out std_logic_vector);
end entity Decoder;
architecture Struct of Decoder is
  signal N0, N1: std_logic;
begin
  and3: AND_3 port map(A=>A0, B=> A1, C=> E, Y => Y(3));
  not0: INVERTER port map(A=>A0, Y => N0);
  not1: INVERTER port map(A=>A1, Y=>N1);
  and0: AND_3 port map(A=>N0, B=> N1, C=> E, Y=> Y(0));
  and1: AND_3 port map(A=>A0, B=> N1, C=>E, Y=> Y(1));
  and2: AND_3 port map(A=>A1, B => N0, C=>E, Y=> Y(2));
end Struct;