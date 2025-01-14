library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin_to_7seg is
port (SW : in std_logic_vector (3 downto 0);
HEX0 : out std_logic_vector (7 downto 0));
end entity bin_to_7seg;


architecture top_arch of bin_to_7seg is
begin

	decoder: process(SW)
		begin
			case SW is
				when "0000" => HEX0 <= "01000000";		--0
				when "0001" => HEX0 <= "01111001";		--1
				when "0010" => HEX0 <= "00100100";		--2
				when "0011" => HEX0 <= "00110000";		--3
				when "0100" => HEX0 <= "00011001";		--4
				when "0101" => HEX0 <= "00010010";		--5
				when "0110" => HEX0 <= "00000010";		--6
				when "0111" => HEX0 <= "01111000";		--7
				when "1000" => HEX0 <= "00000000";		--8
				when "1001" => HEX0 <= "00010000";		--9
				when "1010" => HEX0 <= "00001000";		--A
				when "1011" => HEX0 <= "00000011";		--B
				when "1100" => HEX0 <= "00100111";		--C
				when "1101" => HEX0 <= "00100001";		--D
				when "1110" => HEX0 <= "00000110";		--E
				when "1111" => HEX0 <= "00001110";		--F
                when others => HEX0 <= "11111111";
		end case;
	end process decoder;
end architecture top_arch;