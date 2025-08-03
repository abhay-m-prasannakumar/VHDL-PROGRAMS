----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2025 14:20:25
-- Design Name: 
-- Module Name: Abhay_SR_latch - Behavioral
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

entity Abhay_SR_latch is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           q : inout STD_LOGIC;
           qbar : inout STD_LOGIC);
end Abhay_SR_latch;

architecture Behavioral of Abhay_SR_latch is

begin
qbar<=r nand q;
q<= s nand qbar;


end Behavioral;
