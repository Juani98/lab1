library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity FF_D is
    Port ( d : in STD_LOGIC;
           en : in std_logic;
           q : out STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC);
end FF_D;
------------------------------------------------------------------
 -- Architecture --
------------------------------------------------------------------
architecture Behavioral of FF_D is
    begin
    process (clk,r,en)
    --variables de process
        begin
        if (r='0') then --reset activo en bajo
            q<='0';
        elsif (rising_edge(clk) and en='1') then --enable activo en alto
            q<=d;
        end if;
    end process;
end Behavioral;