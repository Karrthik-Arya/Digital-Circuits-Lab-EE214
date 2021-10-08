 library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity shifter is
  port (a: in std_logic_vector(7 downto 0); L,b0,b1,b2: in std_logic; Y: out std_logic_vector(7 downto 0));
end entity shifter;
architecture Struct of shifter is
  signal s1,s2,s3,s4: std_logic_vector(7 downto 0);
begin
	bit_reversal1 : for i in 0 to 7 generate
       m1: MUX_2x1 port map(I0=>a(i), I1=>a(7-i), S=>L, Y=>s1(i) );
    end generate ;
	 
	 n4_bit : for i in 0 to 7 generate

        lsb: if i < 4 generate
            m2: MUX_2x1 port map(I0 => s1(i), I1 => s1(i+4), S => b2, Y => s2(i));
        end generate lsb;

        msb: if i > 3 generate
            m2: MUX_2x1 port map(I0 => s1(i), I1 => '0', S => b2, Y => s2(i));
        end generate msb;

    end generate ;
	 
	 n2_bit : for i in 0 to 7 generate

        lsb: if i < 6 generate
            m1: MUX_2x1 port map(I0 => s2(i), I1 => s2(i+2), S => b1, Y => s3(i));
        end generate lsb;

        msb: if i > 5 generate
            m1: MUX_2x1 port map(I0 => s2(i), I1 => '0', S => b1, Y => s3(i));
        end generate msb;

    end generate ;
	 
	 n1_bit : for i in 0 to 7 generate

        lsb: if i < 7 generate
            m0: MUX_2x1 port map(I0 => s3(i), I1 => s3(i+1), S => b0, Y => s4(i));
        end generate lsb;

        msb: if i > 6 generate
            m0: MUX_2x1 port map(I0 => s3(i), I1 => '0', S => b0, Y => s4(i));
        end generate msb;

    end generate ;
	 
	 bit_reversal2 : for i in 0 to 7 generate
       m1: MUX_2x1 port map(I0=>s4(i), I1=>s4(7-i), S=>L, Y=>Y(i) );
    end generate ;
  
end Struct;
