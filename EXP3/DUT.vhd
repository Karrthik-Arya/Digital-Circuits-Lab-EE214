-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component mux  is
		port (a,b,c,d: in std_logic_vector(3 downto 0); S1,S0: in std_logic; Y: out std_logic_vector(3 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   mux_instance: mux
			port map (
					
					d => input_vector(17 downto 14),
					c   => input_vector(13 downto 10),
					b => input_vector(9 downto 6),
					a   => input_vector(5 downto 2),
					S1   => input_vector(1),
					S0  => input_vector(0),
                                        
					Y => output_vector );

end DutWrap;

