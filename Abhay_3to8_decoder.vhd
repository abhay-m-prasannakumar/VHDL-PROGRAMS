library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Abhay_3to8_decoder is
    Port ( 
        s0 : in STD_LOGIC;
        s1 : in STD_LOGIC;
        s2 : in STD_LOGIC;
        d0 : out STD_LOGIC;
        d1 : out STD_LOGIC;
        d2 : out STD_LOGIC;
        d3 : out STD_LOGIC;
        d4 : out STD_LOGIC;
        d5 : out STD_LOGIC;
        d6 : out STD_LOGIC;
        d7 : out STD_LOGIC
    );
end Abhay_3to8_decoder;

architecture Behavioral of Abhay_3to8_decoder is

    component big_and
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            C : in STD_LOGIC;
            F : out STD_LOGIC
        );
    end component;
 signal ns0, ns1, ns2 : STD_LOGIC;
begin
ns0 <= not s0;
    ns1 <= not s1;
    ns2 <= not s2;

    -- d0 = NOT s2 AND NOT s1 AND NOT s0
    and0: big_and port map (
        A => ns2,
        B =>  ns1,
        C =>  ns0,
        F => d0
    );

    -- d1 = NOT s2 AND NOT s1 AND s0
    and1: big_and port map (
        A => ns2,
        B => ns1,
        C => s0,
        F => d1
    );

    -- d2 = NOT s2 AND s1 AND NOT s0
    and2: big_and port map (
        A => ns2,
        B => s1,
        C => ns0,
        F => d2
    );

    -- d3 = NOT s2 AND s1 AND s0
    and3: big_and port map (
        A => ns2,
        B => s1,
        C => s0,
        F => d3
    );

    -- d4 = s2 AND NOT s1 AND NOT s0
    and4: big_and port map (
        A => s2,
        B => ns1,
        C => ns0,
        F => d4
    );

    -- d5 = s2 AND NOT s1 AND s0
    and5: big_and port map (
        A => s2,
        B => ns1,
        C => s0,
        F => d5
    );

    -- d6 = s2 AND s1 AND NOT s0
    and6: big_and port map (
        A => s2,
        B => s1,
        C => ns0,
        F => d6
    );

    -- d7 = s2 AND s1 AND s0
    and7: big_and port map (
        A => s2,
        B => s1,
        C => s0,
        F => d7
    );

end Behavioral;
