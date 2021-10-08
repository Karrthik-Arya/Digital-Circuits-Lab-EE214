library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Decoder_3x8  is
  port (A2, A1, A0, E: in std_logic; Y: out std_logic_vector(7 downto 0));
end entity Decoder_3x8;
architecture Struct of Decoder_3x8 is
  signal N, S1, S2: std_logic;
begin
  not1: INVERTER port map(A=>A2, Y=>N);
  and1: AND_2 port map(A=>N, B=>E, Y=> S1);
  and2 : AND_2 port map(A=>A2, B=>E, Y=>S2);
  d1: Decoder port map(A0=>A0, A1=>A1, E=> S1, Y=>Y(3 downto 0));
  d2: Decoder port map(A0=>A0, A1=>A1, E=>S2, Y=>Y(7 downto 4));
end Struct;