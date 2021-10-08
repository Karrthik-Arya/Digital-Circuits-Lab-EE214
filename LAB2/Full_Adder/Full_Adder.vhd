library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Full_Adder  is
  port (A, B, Cin: in std_logic; Sum, Cout: out std_logic);
end entity Full_Adder;
architecture Struct of Full_Adder is
  signal S: std_logic_vector(7 downto 0);
begin
  de1: Decoder_3x8 port map(A2=>Cin, A0=>A, A1=> B, Y=> S, E=> '1');
  o1 : OR_4 port map (A=>S(1), B=>S(2), C=>S(4), D=> S(7), Y=> Sum);
  o2: OR_4 port map(A=>S(3), B=> S(5), C=> S(6), D=> S(7), Y=>Cout);
  
end Struct;
