----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2025 16:47:50
-- Design Name: 
-- Module Name: Abhay_dffnew - Behavioral
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

entity Abhay_dffnew is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC;
           qbar : out STD_LOGIC);
end Abhay_dffnew;

architecture Behavioral of Abhay_dffnew is
signal q_int:std_logic :='0';
begin
process(clk) 
begin
 if (rising_edge(clk)) then
            if reset = '1' then
                q_int <= '0';
            else
                q_int <= D;
            end if;
        end if;
    end process;

    q    <= q_int;
    qbar <= not q_int;

end Behavioral;
