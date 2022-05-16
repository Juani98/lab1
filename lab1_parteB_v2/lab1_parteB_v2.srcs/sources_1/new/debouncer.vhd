library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity debouncer is
    Port ( debounce_input : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in std_logic;
           debounce_output : out STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is
    --DISEÑO ESTRUCTURAL
    --componentes
    component contador_24bits is
        Port (            
         rst : in STD_LOGIC;
           enable: in std_logic;
           data_in : in STD_LOGIC_VECTOR (23 downto 0);
           clk : in STD_LOGIC;
           up_down : in STD_LOGIC;
           load_data : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (23 downto 0);
           carry_out : out std_logic);
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
        rst => internal_start_counter,
        data_in => internal_data_counter_in,
        clk => clock,
        up_down => '1',
        load_data => internal_pre_load_data, 
        data_out => internal_data_counter_out,
        carry_out => open,
        enable => '0'
    );
    
    --Componente N2: comparador de 24bits
--    comparador1_24bits : comparador_24bits port map(
--        data_A => internal_data_counter_out,
--        data_Ref => X"CB7355",
--        clk => clock,
--        output => internal_output_comp
--    );
    
   process (debounce_input,internal_start_counter,reset)
        begin
        if(reset='0') then
            debounce_output <='0';            
        elsif(rising_edge(debounce_input) and internal_start_counter='0') then 
        --si es 0, es el primer flanco
            internal_start_counter <='1'; 
            -- inicio el contador
            internal_flag_signal <='0';
            debounce_output <= '0'; 
            --la salida sigue en '0' y no se entera de cambios en la entrada
        end if;
        end process;
        
      process (clock,debounce_input,internal_start_counter,reset)
      begin
      if(reset='0') then
            debounce_output <='0';
      elsif (rising_edge(clock)) then
            if(internal_start_counter='0' and debounce_input='1') then
                debounce_output <='0'; --la salida esta en 0 (cond inicial)
            elsif(internal_start_counter='0' and internal_flag_signal='1' and debounce_input='1') then
            debounce_output <='1';
            elsif(internal_start_counter='1') then
                if(unsigned(internal_data_counter_out)>X"CB7355") then--pregunto si termino la cuenta
                    internal_start_counter <='0';
                    internal_pre_load_data <='1';
                    internal_data_counter_in <= X"000000";
                    internal_flag_signal <= '1';
                else
                    internal_start_counter <='1';
                   --sigue con la cuenta 
            end if;
        end if;
        end if;
    end process;
    
    
end Behavioral;