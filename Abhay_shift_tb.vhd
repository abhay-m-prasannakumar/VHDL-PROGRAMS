----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.06.2025 11:17:31
-- Design Name: 
-- Module Name: Abhay_shift_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Abhay_shift_tb is
--  Port ( );
end Abhay_shift_tb;

architecture Behavioral of Abhay_shift_tb is
component Abhay_shift_registers  Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           en : in STD_LOGIC;
           s : in STD_LOGIC;
           q : out STD_LOGIC_vector(5 downto 0));
end component;
signal clk_tb,clr_tb,en_tb,s_tb:std_logic;
signal q_tb:std_logic_vector(5 downto 0);
begin
uut: Abhay_shift_registers
port map(
clk=>clk_tb,
clr=>clr_tb,
en=>en_tb,
s=>s_tb,
q=>q_tb);
clk_clock:process
begin
while true loop
clk_tb<='0';
wait for 10ns;
clk_tb<='1';
wait for 10ns;
end loop;
end process;
stim_process:process
begin
s_tb<='0';
clr_tb<='1';
en_tb<='1';
wait for 10ns;
clr_tb<='0';
s_tb<='1';
wait;
end process;
end Behavioral;
