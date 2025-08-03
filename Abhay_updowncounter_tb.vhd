library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity tb_Abhay_4bit_updown_counter is
-- No ports in a testbench
end tb_Abhay_4bit_updown_counter;

architecture Behavioral of tb_Abhay_4bit_updown_counter is

    -- Component Declaration
    component Abhay_4bit_updown_counter
        Port (
            s   : in  STD_LOGIC;
            clk : in  STD_LOGIC;
            clr : in  STD_LOGIC;
            q   : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Testbench Signals
    signal s_tb   : STD_LOGIC := '0';
    signal clk_tb : STD_LOGIC := '0';
    signal clr_tb : STD_LOGIC := '0';
    signal q_tb   : STD_LOGIC_VECTOR(3 downto 0);

    -- Clock Period
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Abhay_4bit_updown_counter
        Port Map (
            s   => s_tb,
            clk => clk_tb,
            clr => clr_tb,
            q   => q_tb
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk_tb <= '0';
            wait for clk_period / 2;
            clk_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the counter
        clr_tb <= '1';
        wait for clk_period;
        clr_tb <= '0';

        -- Count Up
        s_tb <= '1'; -- up
        wait for 15 * clk_period;

        -- Count Down
        s_tb <= '0'; -- down
        wait for 15 * clk_period;

        -- Apply Reset again
        clr_tb <= '1';
        wait for clk_period;
        clr_tb <= '0';

        -- Count Up again
        s_tb <= '1';
        wait for 5 * clk_period;

        -- Finish simulation
        wait;
    end process;

end Behavioral;
