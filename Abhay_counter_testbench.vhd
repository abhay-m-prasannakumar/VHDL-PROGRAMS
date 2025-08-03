library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
end tb_counter;

architecture behavior of tb_counter is

    signal s    : STD_LOGIC := '1';
    signal clk  : STD_LOGIC := '0';
    signal clr  : STD_LOGIC := '1';
    signal q    : STD_LOGIC_VECTOR(3 downto 0);

    component Abhay_4bit_updown_counter
        Port (
            s   : in  STD_LOGIC;
            clk : in  STD_LOGIC;
            clr : in  STD_LOGIC;
            q   : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

begin

    -- Instantiate the counter
    uut: Abhay_4bit_updown_counter
        port map (
            s   => s,
            clk => clk,
            clr => clr,
            q   => q
        );

    -- Clock generation: 20 ns period
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Stimulus
    stim_proc: process
    begin
        -- Reset for 20 ns
        clr <= '1';
        wait for 20 ns;
        clr <= '0';

        -- Count up for 200 ns
        s <= '1';
        wait for 200 ns;

        -- Count down for 200 ns
        s <= '0';
        wait for 200 ns;

        -- Stop simulation
        wait;
    end process;

end behavior;
