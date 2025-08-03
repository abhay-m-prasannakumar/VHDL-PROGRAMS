----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.06.2025 13:38:20
-- Design Name: 
-- Module Name: Abhay_decoder_tb - Behavioral
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

entity Abhay_decoder_tb is
--  Port ( );
end Abhay_decoder_tb;

architecture Behavioral of Abhay_decoder_tb is
signal s0_tb,s1_tb,s2_tb,d0_tb,d1_tb,d2_tb,d3_tb,d4_tb,d5_tb,d6_tb,d7_tb:std_logic;
begin
dut:entity work.Abhay_3to8_decoder port map(
s0=>s0_tb,s1=>s1_tb,s2=>s2_tb,d0=>d0_tb,d1=>d1_tb,d2=>d2_tb,d3=>d3_tb,d4=>d4_tb,d5=>d5_tb,d6=>d6_tb,d7=>d7_tb);
stim_process:process
begin
s0_tb<='0';s1_tb<='0';s2_tb<='0';
wait for 10ns;
s0_tb<='0';s1_tb<='0';s2_tb<='0';
wait for 10ns;
s0_tb<='1';s1_tb<='0';s2_tb<='0';
wait for 10ns;
s0_tb<='0';s1_tb<='1';s2_tb<='0';
wait for 10ns;
s0_tb<='1';s1_tb<='1';s2_tb<='0';
wait for 10ns;
s0_tb<='0';s1_tb<='0';s2_tb<='1';
wait for 10ns;
s0_tb<='1';s1_tb<='0';s2_tb<='1';
wait for 10ns;
s0_tb<='0';s1_tb<='1';s2_tb<='1';
wait for 10ns;
s0_tb<='1';s1_tb<='1';s2_tb<='1';
wait for 10ns;
wait;
end process;

end Behavioral;
