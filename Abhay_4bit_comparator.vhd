library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Added for numeric operations

entity Abhay_4bit_comparator is
    Port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           b : in STD_LOGIC_VECTOR(3 downto 0);
           a_gt_b : out STD_LOGIC;
           a_eq_b : out STD_LOGIC;
           a_lt_b : out STD_LOGIC);
end Abhay_4bit_comparator;

architecture Behavioral of Abhay_4bit_comparator is
signal t1, t2, t3 : STD_LOGIC;
begin
    process(a, b)
    begin
        if (a > b) then
            t1 <= '1'; t2 <= '0'; t3 <= '0';
        elsif (a = b) then
            t1 <= '0'; t2 <= '1'; t3 <= '0';
        else
            t1 <= '0'; t2 <= '0'; t3 <= '1';
        end if;
    end process;

    a_gt_b <= t1;
    a_eq_b <= t2;
    a_lt_b <= t3;
end Behavioral;
