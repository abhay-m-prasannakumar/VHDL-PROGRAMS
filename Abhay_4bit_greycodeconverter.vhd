----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2025 15:03:52
-- Design Name: 
-- Module Name: Abhay_4bit_greycodeconverter - Behavioral
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

entity Abhay_4bit_greycodeconverter is
    Port ( a : in STD_LOGIC_vector(3 downto 0);
           b : out STD_LOGIC_vector(3 downto 0));
end Abhay_4bit_greycodeconverter;

architecture Behavioral of Abhay_4bit_greycodeconverter is

begin
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2025 15:03:52
-- Design Name: 
-- Module Name: Abhay_4bit_greycodeconverter - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
b(3)<= a(3);
b(2)<=a(2)xor a(3);
b(1)<=a(2)xor a(1);
b(0)<=a(1) xor a(0);
end Behavioral;


