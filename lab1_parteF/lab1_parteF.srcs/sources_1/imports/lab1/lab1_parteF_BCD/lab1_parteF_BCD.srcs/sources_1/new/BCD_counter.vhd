library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
-------------------------------------------------------------------
 -- Entity --
-------------------------------------------------------------------
entity BCD_counter is
    generic(cnt_width: natural:= 4);
    port (
        rst : in STD_LOGIC;
        enable: in std_logic;
        clk : in STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR (cnt_width-1 downto 0)
    );
end BCD_counter;
-------------------------------------------------------------------
 -- Architecture --
-------------------------------------------------------------------
architecture Behavioral of BCD_counter is
    signal counter  : unsigned(cnt_width-1 downto 0);
begin
    process (clk,rst,enable,counter)
    begin
        if (rst='1') then --reset activo en alto
            counter <= (others => '0');
        elsif (enable='1') then --si enable=0 cuenta normal, enable=1 retiene cuenta
            counter <= counter;
        elsif(rising_edge(clk)) then
            if(counter>=9)then
                counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    data_out <= std_logic_vector(counter);
end Behavioral;
