library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Abhay_clockdivider is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        out1  : out STD_LOGIC;  -- Clock / 2
        out2  : out STD_LOGIC   -- Clock / 4
    );
end Abhay_clockdivider;

architecture Behavioral of Abhay_clockdivider is
    signal q1 : STD_LOGIC := '0';
    signal q2 : STD_LOGIC := '0';
begin

    -- First flip-flop: toggles q1 on every rising edge of clk
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                q1 <= '0';
            else
                q1 <= not q1;
            end if;
        end if;
    end process;

    -- Second flip-flop: takes q1 as input, toggles q2 on rising edge of clk
    process(q1)
    begin
        if rising_edge(q1) then
            if reset = '1' then
                q2 <= '0';
            else
                q2 <= not q2;
            end if;
        end if;
    end process;

    -- Assign outputs
    out1 <= q1;  -- Divided clock (clk / 2)
    out2 <= q2;  -- Further divided clock (clk / 4)

end Behavioral;
