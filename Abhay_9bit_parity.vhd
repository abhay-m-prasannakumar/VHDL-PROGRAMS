----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2025 14:35:10
-- Design Name: 
-- Module Name: Abhay_9bit_parity - Behavioral
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

entity Abhay_9bit_parity is
    Port ( D : in STD_LOGIC_VECTOR (8 downto 0);
           even : out STD_LOGIC;
           odd : inout STD_LOGIC);
end Abhay_9bit_parity;

architecture Behavioral of Abhay_9bit_parity is
signal e0,e1,e2,e3,f0,f1,h0: std_logic;
begin
e0<=d(0)xor d(1);
e1<=d(2)xor d(3);
e2<=d(4)xor d(5);
e3<=d(6)xor d(7);
f0<=e0 xor e1;
f1<=e2 xor e3;
h0<=f0 xor f1;
odd<=d(8) xor h0;
even <= not odd;


end Behavioral;
