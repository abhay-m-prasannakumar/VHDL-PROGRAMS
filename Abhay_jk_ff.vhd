----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2025 09:46:36
-- Design Name: 
-- Module Name: Abhay_jk_ff - Behavioral
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

entity Abhay_jk_ff is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           q : out STD_LOGIC;
           qbar : out STD_LOGIC);
end Abhay_jk_ff;

architecture Behavioral of Abhay_jk_ff is
begin
jkff:process(clr,clk)
begin
if (clr='1') then
q<='0';qbar<='0';
elsif(clk='1' and clk'event) then
if(j/=k) then
q<=j;qbar<=not j;
elsif(j='1' and k='1') then
q<='1';qbar<='1';

end if;
end if;
end process jkff;

end Behavioral;
