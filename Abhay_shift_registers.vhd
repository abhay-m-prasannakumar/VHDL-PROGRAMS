----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2025 12:19:00
-- Design Name: 
-- Module Name: Abhay_shift_registers - Behavioral
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

entity Abhay_shift_registers is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           en : in STD_LOGIC;
           s : in STD_LOGIC;
           q : out STD_LOGIC_vector(3 downto 0));
end Abhay_shift_registers;

architecture Behavioral of Abhay_shift_registers is
signal qout:std_logic_vector(3 downto 0);
begin
sf:process(clk,clr,en)
begin
if(clr='1') then 
qout<="0000";
elsif(clk='1' and clk'event) then
if(en='1')then
qout(2 downto 0)<=qout(3 downto 1);
qout(3)<=s;
end if;
end if;
end process sf;
q<=qout;
end Behavioral;
