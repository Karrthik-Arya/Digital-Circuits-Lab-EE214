
library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is

    function sub(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            -- declaring and initializing variables using aggregates 
            variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
            variable carry : std_logic:= '0';
				variable a1: std_logic_vector(operand_width*2-1 downto 0) := "0000"&A;
				variable b1: std_logic_vector(operand_width*2-1 downto 0) := "0000"&B;
        begin
            -- Hint: Use for loop to calculate value of "diff" and "carry" variable
            -- Use aggregates to assign values to multiple bits
				sub_loop : for i in   0 to operand_width*2 - 1 loop
					diff(i) := a1(i) xor b1(i) xor carry;
					carry := ((not a1(i))and carry) or (b1(i) and carry) or (b1(i) and (not a1(i)));
				end loop sub_loop;
            return diff;
    end sub;

     
    function rolf(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
            variable tmp : std_logic := '0';
				variable s: integer := 0;
        begin
            shift(operand_width-1 downto 0):= A;
				shifter_loop: for  i in   0 to operand_width-2 loop
					if (B(i) = '1') then
						s := s+2**i;
					end if;
					end loop shifter_loop; 
					if (s < 5) and  (s > 0) then
						shift(operand_width + s -1  downto s):= shift(operand_width-1 downto 0);
						shift( s -1  downto 0) := (others=>'0');
					elsif (s > 4) then
						shift(2*operand_width-1 downto s) := shift(2*operand_width - 1 - s downto 0);
						shift(s-operand_width-1 downto 0) := shift(operand_width-1 downto 2*operand_width-s);
						shift(operand_width-1 downto s -operand_width) := (others =>'0');
						end if;

        return shift;
    end rolf;
                
begin
alu : process( A, B, sel )
variable n1: std_logic_vector(operand_width-1 downto 0) := (others => '0');
begin
	if (sel = "00") then
		op <= rolf(A,B);
	elsif (sel = "01") then
		op <= sub(A,B);
	elsif (sel = "10") then
		loop_nor: for i in 0 to operand_width-1 loop
			n1(i) := A(i) nor B(i);
		end loop loop_nor;
		op <= "0000"&n1;
	elsif (sel = "11") then
		op<= rolf(A, "0010");
	end if;
    -- complete VHDL code for various outputs of ALU based on select lines
   -- Hint: use if/else statement
   --
   -- sub function usage :
   --   signal_name <= sub(A,B)
   --   variable_name := sub(A,B)
   --
   -- concatenate operator usage:
   --    "0000"&A 
end process ; --alu
end a1 ; -- a1
