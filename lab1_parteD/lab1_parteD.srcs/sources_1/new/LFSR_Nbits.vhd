
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LFSR_Nbits is
    Port ( 
        sel_Nbits : in STD_LOGIC_VECTOR (1 downto 0);
        lfsr_out : out STD_LOGIC_VECTOR (31 downto 0)
        );
end LFSR_Nbits;

architecture Behavioral of LFSR_Nbits is
    component FF_D is
        Port ( 
           d : in STD_LOGIC;
           q : out STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC
         );
    end component;
begin
    
end Behavioral;
