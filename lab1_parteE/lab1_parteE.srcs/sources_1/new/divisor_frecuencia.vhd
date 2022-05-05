
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity divisor_frecuencia is
    generic(cnt_width: natural:= 23);
    Port ( 
        input_clk : in STD_LOGIC;
        reset : in std_logic;
        frec_selec : in std_logic_vector(2 downto 0);
        output_clk : out STD_LOGIC;
        fin_cuenta : out std_logic
        );
end divisor_frecuencia;

architecture Behavioral of divisor_frecuencia is

component contador_24bits is
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
end component;

--señales internas (contador)
signal internal_data_counter_in : STD_LOGIC_VECTOR (cnt_width downto 0);
signal internal_data_counter_out : STD_LOGIC_VECTOR (cnt_width downto 0);
signal internal_counter_carry_out : std_logic;
signal internal_pre_load_data : STD_LOGIC;

--signal data_counter  : unsigned(cnt_width downto 0);

begin
    fin_cuenta <= internal_counter_carry_out;
    --Componentes
    --Componente N1: contador de 24bits
     counter1_24bits: contador_24bits port map(
        rst => reset,
        enable => '0',
        data_in => "000000000000000000000000",
        clk => input_clk,
        up_down => '0', --lo uso para que decremente
        load_data => internal_pre_load_data, 
        data_out => internal_data_counter_out,
        carry_out => internal_counter_carry_out
    );

    process (reset,input_clk,frec_selec)
    begin 
    if(reset='0') then
        output_clk <= '0';
    elsif(rising_edge(input_clk)) then 
        case frec_selec is
            when "100" =>--f_sal=5Hz
                if(unsigned(internal_data_counter_out)=0) then
                    internal_pre_load_data <='1';
                    internal_data_counter_in <= "011001011011100110101010";
                elsif(unsigned(internal_data_counter_out)>3333333) then
                    internal_pre_load_data <='0';
                    output_clk <= '0';
                else
                    internal_pre_load_data <='0';
                    output_clk <= '1';
                end if;
                
            --Aqui agrego las otras opciones para otras frecuencias
            --Pero primero quiero probar sobre una al menos 
            
         when others =>
  
             if(unsigned(internal_data_counter_out)=0) then
                    internal_pre_load_data <='1';
                    internal_data_counter_in <= "011001011011100110101010";
                elsif(unsigned(internal_data_counter_out)>3333333) then
                    internal_pre_load_data <='0';
                    output_clk <= '0';
                else
                    internal_pre_load_data <='0';
                    output_clk <= '1';
                end if;

            end case;
        end if;
    end process;
end Behavioral;






--elsif(rising_edge(input_clk) and frec_selec="000") then
--            --f_sal=0.1Hz
--             if(unsigned(internal_data_counter_out)=0) then
--                internal_pre_load_data <='1';
--             elsif(unsigned(internal_data_counter_out)>3333333) then
--                internal_pre_load_data <='0';
--                output_clk <= '0';
--             else
--                internal_pre_load_data <='0';
--                output_clk <= '1';
--             end if;
--     elsif(rising_edge(input_clk) and frec_selec="001") then
--         --f_sal=0.5Hz
--             if(unsigned(internal_data_counter_out)=0) then
--                internal_pre_load_data <='1';
--             elsif(unsigned(internal_data_counter_out)>3333333) then
--                internal_pre_load_data <='0';
--                output_clk <= '0';
--             else
--                internal_pre_load_data <='0';
--                output_clk <= '1';
--             end if;
--         elsif(rising_edge(input_clk) and frec_selec="010") then
--          --f_sal=1Hz
--             if(unsigned(internal_data_counter_out)=0) then
--                internal_pre_load_data <='1';
--             elsif(unsigned(internal_data_counter_out)>3333333) then
--                internal_pre_load_data <='0';
--                output_clk <= '0';
--             else
--                internal_pre_load_data <='0';
--                output_clk <= '1';
--             end if;
--        elsif(rising_edge(input_clk) and frec_selec="100") then --f_sal=2Hz
--             if(unsigned(internal_data_counter_out)=0) then
--                internal_pre_load_data <='1';
--               internal_data_counter_in <= "011001011011100110101010";
--             elsif(unsigned(internal_data_counter_out)>3333333) then
--                internal_pre_load_data <='0';
--                output_clk <= '0';
--             else
--                internal_pre_load_data <='0';
--                output_clk <= '1';
--             end if;
--         else --f_sal=5Hz
--            --####################################simulo sobre esta primero
--             if(unsigned(internal_data_counter_out)=0) then
--                internal_pre_load_data <='1';
--             elsif(unsigned(internal_data_counter_out)>3333333) then
--                internal_pre_load_data <='0';
--                output_clk <= '0';
--             elsif(rising_edge(input_clk)) then 
--                internal_pre_load_data <='0';
--                output_clk <= '1';
--             end if;            

