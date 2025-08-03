----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.06.2025 12:04:34
-- Design Name: 
-- Module Name: Abhay_mux_tb - Behavioral
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

entity Abhay_mux_tb is
--  Port ( );
end Abhay_mux_tb;

architecture Behavioral of Abhay_mux_tb is
signal data_tb:std_logic_vector(7 downto 0);
signal sel_tb:std_logic_vector(2 downto 0);
signal result_tb:std_logic;
begin
dut:entity work.Abhay_mux port map(
data=>data_tb,
sel=>sel_tb,
result=>result_tb); 

stim_process:process
begin
data_tb<="11000011";
sel_tb<="000";
wait for 10ns;
sel_tb<="001";
wait for 10ns;
sel_tb<="010";
wait for 10ns;
sel_tb<="011";
wait for 10ns;
sel_tb<="100";
wait for 10ns;
sel_tb<="101";
wait for 10ns;
sel_tb<="110";
wait for 10ns;
sel_tb<="111";
wait for 10ns;
wait;
end process;





end Behavioral;
