library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity divisor_frecuencia is
    generic(cnt_width: natural:= 28);
    Port ( 
        input_clk : in STD_LOGIC;
        reset : in std_logic;
        frec_selec : in std_logic_vector(2 downto 0);
        output_clk : out STD_LOGIC
--        fin_cuenta : out std_logic
        );
end divisor_frecuencia;

architecture Behavioral of divisor_frecuencia is

component counter_Nbits is
    Port ( 
        rst : in STD_LOGIC;
        enable: in std_logic;
        data_in : in STD_LOGIC_VECTOR (cnt_width-1 downto 0);
        clk : in STD_LOGIC;
        up_down : in STD_LOGIC;
        load_data : in STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR (cnt_width-1 downto 0);
        carry_out : out std_logic
        );
end component;
    component synchronizer is
        Port ( 
            reset : in STD_LOGIC;
            clock : in STD_LOGIC;
            async_input : in STD_LOGIC;
            sync_output : out STD_LOGIC
        );
    end component;

    component rst_async_ass_synch_deass is
--    generic(
--        rst_width: integer:=2;
--        rst_active_value: std_logic:='1'
--    );
    port(
        sys_clk : in std_logic;
        sys_rst : in std_logic;
        rst_aa_sd: out std_logic
    );
    end component;
    
    
--señales internas (contador)
signal internal_data_counter_in : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_data_counter_out : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_counter_carry_out : std_logic;
signal internal_pre_load_data : STD_LOGIC;

--signal data_counter  : unsigned(cnt_width downto 0);
signal internal_output : std_logic; --salida por LED0 (para cada señal de distinta frecuencia)
signal internal_reset : std_logic;-- reset con activacion asincronica y desactivacion sincronica
signal internal_frec_selec : std_logic_vector(2 downto 0); -- seleccion de frecuencia sincronizada
begin
   -- fin_cuenta <= internal_counter_carry_out;
    --Componentes
    --Componente N1: contador de 24bits
     counter1: counter_Nbits port map(
        rst => internal_reset,
        enable => '0',
        data_in => internal_data_counter_in,
        clk => input_clk,
        up_down => '0', --lo uso para que decremente
        load_data => internal_pre_load_data, 
        data_out => internal_data_counter_out,
        carry_out => internal_counter_carry_out
    );

    rst_async_ass_synch_deass1: rst_async_ass_synch_deass port map(
        sys_clk => input_clk,
        sys_rst => reset,
        rst_aa_sd => internal_reset --reset sincronico
    );  
    
    synchronizer1: synchronizer port map(
        reset => internal_reset,
        clock => input_clk,
        async_input => frec_selec(0), --entrada asincronica
        sync_output => internal_frec_selec(0)
    );   
    synchronizer2: synchronizer port map(
        reset => internal_reset,
        clock => input_clk,
        async_input => frec_selec(1), --entrada asincronica
        sync_output => internal_frec_selec(1)
    );
    synchronizer3: synchronizer port map(
        reset => internal_reset,
        clock => input_clk,
        async_input => frec_selec(2), --entrada asincronica
        sync_output => internal_frec_selec(2)
    );

    with internal_frec_selec select

--        internal_data_counter_in <= "00000100110001001011010000000" when "000",  --f=5Hz
--                                    "00001011111010111100001000000" when "001",  --f=2Hz
--                                    "00010111110101111000010000000" when "010",  --f=1Hz
--                                    "00101111101011110000100000000" when "011",  --f=0.5Hz
--                                    "11101110011010110010100000000" when others; --f=0.1Hz


        internal_data_counter_in <= "0000001100101101110011010101" when "000",  --f=5Hz
                                    "0000011111110010100000010101" when "001",  --f=2Hz
                                    "0000111111100101000000101010" when "010",  --f=1Hz
                                    "0001111111001010000001010101" when "011",  --f=0.5Hz
                                    "1001111011110010000110101010" when others; --f=0.1Hz
    process (internal_reset,input_clk,internal_counter_carry_out)
    begin 
    if(internal_reset='1') then
       -- output_clk <= '0';
        internal_output <='0';
    elsif(rising_edge(input_clk)) then 
              if(internal_counter_carry_out='1') then --finalizó la cuenta
                    internal_pre_load_data <='1';
                    internal_output <= not(internal_output);
                else
                    internal_pre_load_data <='0';
                end if;
 
        end if;
    end process;
    output_clk <= internal_output;
end Behavioral;



