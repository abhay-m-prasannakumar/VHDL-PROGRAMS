library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Abhay_exp2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           f : out STD_LOGIC);
end Abhay_exp2;

architecture Structural of Abhay_exp2 is

    -- Component Declarations
    component big_or
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            C : in STD_LOGIC;
            F : out STD_LOGIC
        );
    end component;

    component small_or
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            F : out STD_LOGIC
        );
    end component;

    component big_and
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            C : in STD_LOGIC;
            F : out STD_LOGIC
        );
    end component;

    -- Internal Signals
    signal A_out, B_out, C_out : STD_LOGIC;

begin

    -- Instantiations
    X1: big_or
        port map (
            A => b,
            B => c,
            C => d,
            F => B_out
        );

    X2: small_or
        port map (
            A => a,
            B => b,
            F => A_out
        );

    X3: small_or
        port map (
            A => a,
            B => d,
            F => C_out
        );

    X4: big_and
        port map (
            A => A_out,
            B => B_out,
            C => C_out,
            F => f
        );

end Structural;
