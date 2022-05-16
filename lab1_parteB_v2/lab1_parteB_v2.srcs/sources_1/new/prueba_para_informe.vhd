library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity prueba_para_informe is
    Port ( debounce_input : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in std_logic;
           debounce_output : out STD_LOGIC);
end prueba_para_informe;

architecture Behavioral of prueba_para_informe is
    --DISEÑO ESTRUCTURAL
    --componentes
    component contador_24bits is
        Port ( reset : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (23 downto 0);
           clk : in STD_LOGIC;
           up_down : in STD_LOGIC;
           load_data : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (23 downto 0));
    end component;
    
--    component comparador_24bits is
--    Port ( data_A : in STD_LOGIC_VECTOR (23 downto 0);
--           data_Ref : in STD_LOGIC_VECTOR (23 downto 0);
--           clk : in std_logic;
--           output : out STD_LOGIC);
--    end component;
    
--señales internas (contador)
signal internal_data_counter_in : STD_LOGIC_VECTOR (23 downto 0);
signal internal_data_counter_out : STD_LOGIC_VECTOR (23 downto 0);
signal internal_pre_load_data :  STD_LOGIC;
signal internal_start_counter : std_logic;

signal internal_flag_signal : std_logic;
--señales internas (comparador)
--signal internal_output_comp : std_logic;



begin
    --Componentes
    --Componente N1: contador de 24bits
    counter1_24bits: contador_24bits port map(
        reset => internal_start_counter,
        data_in => internal_data_counter_in,
        clk => clock,
        up_down => '1',
        load_data => internal_pre_load_data, 
        data_out => internal_data_counter_out
    );
    
    --Componente N2: comparador de 24bits
--    comparador1_24bits : comparador_24bits port map(
--        data_A => internal_data_counter_out,
--        data_Ref => X"CB7355",
--        clk => clock,
--        output => internal_output_comp
--    );
     
   
    process (clock, debounce_input,reset,internal_start_counter)
    begin
    if(reset='0') then
     debounce_output <='0';   
    else
        if(rising_edge(debounce_input) and internal_start_counter = '0') then
                internal_start_counter <= '1';
            
        end if;
        if(rising_edge(clock)) then
                if(unsigned(internal_data_counter_out)>13333333 and debounce_input='1') then--pregunto si termino la cuenta
                    internal_start_counter <='0';
                    internal_pre_load_data <='1';
                    internal_data_counter_in <= X"000000";
                    internal_flag_signal <= '1';
                    debounce_output <= '1';
                elsif(debounce_input='1' and internal_flag_signal='1') then
                   debounce_output <= '1';
                else
                    debounce_output <= '0';
                    internal_flag_signal <= '0';
                end if;
            end if;
    end if;
    end process;
end Behavioral;

