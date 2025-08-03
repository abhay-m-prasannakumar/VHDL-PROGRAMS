library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Abhay_mux is
    Port (
        data   : in  STD_LOGIC_VECTOR(7 downto 0);
        sel    : in  STD_LOGIC_VECTOR(2 downto 0);
        result : out STD_LOGIC
    );
end Abhay_mux;

architecture Behavioral of Abhay_mux is
begin
    process(data, sel)
    begin
        case sel is
            when "000" => result <= data(0);
            when "001" => result <= data(1);
            when "010" => result <= data(2);
            when "011" => result <= data(3);
            when "100" => result <= data(4);
            when "101" => result <= data(5);
            when "110" => result <= data(6);
            when "111" => result <= data(7);
            when others => result <= '0';  -- Safety net for invalid inputs
        end case;
    end process;
end Behavioral;
