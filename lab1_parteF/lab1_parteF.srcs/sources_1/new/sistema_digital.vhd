library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
-------------------------------------------------------------------
 -- Entity --
-------------------------------------------------------------------
entity sistema_digital is
    generic(
        cnt_width: natural:= 4;
        initial_value: std_logic_vector(3 downto 0):= (0=>'1',others=>'0')
    );
    Port ( 
        clock : in STD_LOGIC;
        reset : in std_logic;
        counter_select : in std_logic_vector(1 downto 0);
        counter_output : out std_logic_vector(cnt_width-1 downto 0)
    );
end sistema_digital;
-------------------------------------------------------------------
 -- Architecture --
-------------------------------------------------------------------
architecture Behavioral of sistema_digital is
    --Componentes
    --Contador binario de 4bits
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
    --Contador BCD de 4bits
    component BCD_counter is 
        Port (
            rst : in STD_LOGIC;
            enable: in std_logic;
            clk : in STD_LOGIC;
            data_out : out STD_LOGIC_VECTOR (cnt_width-1 downto 0)
        );
     end component;
    --LFSR de 4bits
    component LFSR_4bits is
        port(
            clk : in std_logic;
            rst : in std_logic;
            enable : in std_logic;
            q_lfsr_4b: out std_logic_vector(cnt_width-1 downto 0)
        );
    
    end component;   
    --Sincronizador de se�ales asinc�nicas    
    component synchronizer is
        Port ( 
            reset : in STD_LOGIC;
            clock : in STD_LOGIC;
            async_input : in STD_LOGIC;
            sync_output : out STD_LOGIC
        );
    end component;
    --Reset con act. asincr�nica y desact. sincr�nica   
    component rst_async_ass_synch_deass is
    generic(
        rst_width: integer:=2
    );
    port(
        sys_clk : in std_logic;
        sys_rst : in std_logic;
        rst_aa_sd: out std_logic
    );
    end component;
    --Divisor de frecuencia
    component divisor_frecuencia is
    Port ( 
        input_clk : in STD_LOGIC;
        reset : in std_logic;
        frec_selec : in std_logic_vector(2 downto 0);
        output_clk : out STD_LOGIC
        );
    end component;
--se�ales internas (contador BINARIO)
signal internal_counter_carry_out_bin : std_logic;
signal internal_up_down : std_logic;
signal internal_counter_carry_out : std_logic;

--se�ales de habilitaci�n a los contadores
signal internal_enable_LFSR_counter : std_logic;
signal internal_enable_BCD_counter: std_logic;
signal internal_enable_bin_counter : std_logic;

--se�ales de reset a los contadores
signal internal_reset_LFSR_counter : std_logic;
signal internal_reset_BCD_counter: std_logic;
signal internal_reset_bin_counter : std_logic;

--se�ales (vectores) de cuenta de salida de cada contador
signal internal_data_counter_out_bin : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_data_counter_out_BCD : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_data_counter_out_LFSR : STD_LOGIC_VECTOR (cnt_width-1 downto 0);

--internal counter select es la seleccion de entradas que son asincronicas (ahora sincronizadas)
signal internal_counter_select : std_logic_vector(1 downto 0);

signal internal_clock : std_logic; --clock de 1Hz
signal internal_reset : std_logic; --reset con PowerOnReset
begin
    --Componentes
    --Componente N1: contador de 4bits
     counter1_binario: counter_Nbits port map(
        rst => internal_reset_bin_counter,
        enable => internal_enable_bin_counter,
        data_in => (others=>'0'),
        clk => internal_clock,
        up_down => internal_up_down, --lo uso para que decremente
        load_data => '0', 
        data_out => internal_data_counter_out_bin,
        carry_out => internal_counter_carry_out
    );
   --Componente N2: contador de BCD 4bits
    counter2_BCD: BCD_counter port map(
        rst => internal_reset_BCD_counter,
        enable => internal_enable_BCD_counter,
        clk => internal_clock,
        data_out => internal_data_counter_out_BCD
    );
    --Componente N3: contador de LFSR 4bits
    counter3_LFSR: LFSR_4bits port map(
        rst => internal_reset_LFSR_counter,
        clk => internal_clock,
        enable => internal_enable_LFSR_counter,
        q_lfsr_4b => internal_data_counter_out_LFSR
    );
    --Componente N4: Sincronizador 1
    synchronizer1: synchronizer port map(
        reset => internal_reset,
        clock => clock,
        async_input => counter_select(0), --entrada asincronica
        sync_output => internal_counter_select(0)
    );   
    --Componente N5: Sincronizador 2
    synchronizer2: synchronizer port map(
        reset => internal_reset,
        clock => clock,
        async_input => counter_select(1), --entrada asincronica
        sync_output => internal_counter_select(1)
    ); 
    --Componente N6: Reset act async y desact. sync
    rst_async_ass_synch_deass1: rst_async_ass_synch_deass port map(
        sys_clk => clock,
        sys_rst => reset,
        rst_aa_sd => internal_reset --reset sincronico
    );   
   --Componente N7: Divisor de frecuencia
   divisor_frecuencia1: divisor_frecuencia port map(
        input_clk => clock,
        reset => internal_reset,
        frec_selec => "010", --010 -> 1Hz (configurado a 1Hz)
        output_clk => internal_clock
    );   
 --Selecci�n de contador seg�n la se�al sincronizada internal_counter_select
    with internal_counter_select select
        counter_output <=   internal_data_counter_out_bin when "00",
                            internal_data_counter_out_bin when "01",
                            internal_data_counter_out_BCD when "10",
                            internal_data_counter_out_LFSR when others;     
    process(reset,internal_reset) 
    begin
        if(internal_reset='1') then --reset sincronizado (activo en alto)
            internal_reset_LFSR_counter <='1';
            internal_reset_bin_counter <='1';
            internal_reset_BCD_counter <='1';
        else
            --Se coloc� else para evitar latch
            internal_reset_LFSR_counter <='0';
            internal_reset_bin_counter <='0';
            internal_reset_BCD_counter <='0';
        end if;
    end process;
    --Se usa 2 process para evitar multi-driven
    process(internal_counter_select)
    begin
        case internal_counter_select is
            when "00" => --contador bin. ascendente
               --ENABLES
                internal_enable_LFSR_counter <= '1';
                internal_enable_BCD_counter <= '1';
                internal_enable_bin_counter <= '0';
                --selecciono ascendente
                internal_up_down <= '1';
             when "01" => --contador bin. descendente
               --ENABLES
                internal_enable_LFSR_counter <= '1';
                internal_enable_BCD_counter <= '1';
                internal_enable_bin_counter <= '0';
                --contador descendente
                internal_up_down <= '0';      
            when "10" => --contador bcd ascendente
                internal_enable_LFSR_counter <= '1';
                internal_enable_bin_counter <= '1';
                internal_enable_BCD_counter <= '0';
                internal_up_down <= '1';
            when others => --LFSR 4bits
                internal_enable_LFSR_counter <= '0';
                internal_enable_BCD_counter <= '1';
                internal_enable_bin_counter <= '1';     
                internal_up_down <= '1';
        end case;
    end process;  
end Behavioral;
