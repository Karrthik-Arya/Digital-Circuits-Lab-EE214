-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(11 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component shifter  is
		port (a: in std_logic_vector(7 downto 0); L,b0,b1,b2: in std_logic; Y: out std_logic_vector(7 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   shifter_instance: shifter
			port map (
					
					L => input_vector(11),
					b2 => input_vector(10),
					b1 => input_vector(9),
					b0 => input_vector(8),
					a   => input_vector(7 downto 0),
                                        
					Y => output_vector );

end DutWrap;

