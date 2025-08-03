----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2025 15:28:19
-- Design Name: 
-- Module Name: Abhay_even_paritychecker - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Abhay_even_paritychecker is
    Port ( a : in STD_LOGIC_vector(3 downto 0);
           p : in STD_LOGIC;
           e : out STD_LOGIC);
end Abhay_even_paritychecker;

architecture Behavioral of Abhay_even_paritychecker is
signal b:std_logic_vector(4 downto 0);
signal c:std_logic;
begin
b<=a & p;
process(b)begin
if((b(0) xor b(1) xor b(2) xor b(3) xor b(4))='0') then
c<='0';
else
c<='1';
end if;
end process;
e<=c;
end Behavioral;
