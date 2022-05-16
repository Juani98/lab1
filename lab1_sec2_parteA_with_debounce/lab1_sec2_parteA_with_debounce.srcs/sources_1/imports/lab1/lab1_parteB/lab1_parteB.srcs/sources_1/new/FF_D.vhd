library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FF_D is
    Port ( d : in STD_LOGIC;
           en : in std_logic;
           q : out STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC);
end FF_D;

architecture Behavioral of FF_D is

    begin
    process (clk,r,en)
    --variables de process
        begin
        if (r='1') then
            q<='0';
        elsif (rising_edge(clk) and en='1') then
            q<=d;
        end if;
    end process;

end Behavioral;