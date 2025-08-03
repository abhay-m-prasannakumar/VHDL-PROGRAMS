----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2025 15:30:49
-- Design Name: 
-- Module Name: Abhay_t_flipflop - Behavioral
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

entity Abhay_t_flipflop is
    Port ( T : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : in STD_LOGIC;
           Q : out STD_LOGIC);
end Abhay_t_flipflop;

architecture Behavioral of Abhay_t_flipflop is
signal Qtemp: std_logic := '0'; 

begin
tff:process(S,Clk)
begin
if(S='0')then
Qtemp<='1';
elsif (rising_edge(Clk)) then
Qtemp<= T xor Qtemp;
end if;

end process tff;
Q<=Qtemp;



end Behavioral;
