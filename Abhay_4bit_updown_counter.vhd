library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity Abhay_4bit_updown_counter is
    Port (
        s   : in  STD_LOGIC; -- '1' for up, '0' for down
        clk : in  STD_LOGIC;
        clr : in  STD_LOGIC;
        q   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end Abhay_4bit_updown_counter;

architecture Behavioral of Abhay_4bit_updown_counter is
    signal temp: std_logic_vector(3 downto 0); -- start at 0
begin
    process(clk, clr)
    begin 
        if clr = '1' then
            temp <="0000";
        elsif rising_edge(clk) then
            if s = '1' then
                temp <= temp + 1;
            else
                temp <= temp - 1;
            end if;
        end if;
    end process;

    q <=temp;
end Behavioral;
