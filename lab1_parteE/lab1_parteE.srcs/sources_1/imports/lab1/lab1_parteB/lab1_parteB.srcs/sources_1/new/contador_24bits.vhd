
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity contador_24bits is
    generic(cnt_width: natural:= 23);
    Port ( 
        rst : in STD_LOGIC;
        enable: in std_logic;
        data_in : in STD_LOGIC_VECTOR (cnt_width downto 0);
        clk : in STD_LOGIC;
        up_down : in STD_LOGIC;
        load_data : in STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR (cnt_width downto 0);
        carry_out : out std_logic
        );
end contador_24bits;

architecture Behavioral of contador_24bits is

    signal counter  : unsigned(cnt_width downto 0);

begin

    process(clk,rst,enable,counter)
    --COUNTER DEBERÍA IR EN LA LISTA SENSITIVA?
    begin
        if (rst='1') then --reset activo en alto
            counter <= (others => '0');
            carry_out <= '0';
        elsif (enable='1') then
            counter <= counter;
        
        elsif(rising_edge(clk)) then
            if(load_data='1') then --load data activo en alto
                counter <= unsigned(data_in);
                
            else
                if (up_down='1') then --cuenta ascendente en 1, descendente en 0
                    counter <= counter + 1;
                else
                    counter <= counter - 1;
                end if;
                if (counter=16777215) then -- dec de ffffff
                    carry_out <= '1';
                else
                    carry_out <= '0';
                end if;
            end if;
        end if;
    end process;

    data_out <= std_logic_vector(counter);
    
end Behavioral;
