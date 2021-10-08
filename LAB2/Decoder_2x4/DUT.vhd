library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component Decoder is
     port (A1, A0, E: in std_logic; Y: out std_logic_vector);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   decoder_instance: Decoder
			port map (
					A1 => input_vector(2),
					A0 => input_vector(1),
					E => input_vector(0),
					
					Y(3) => output_vector(3),
					Y(2) => output_vector(2),
					Y(1) => output_vector(1),
					Y(0) => output_vector(0));

end DutWrap;