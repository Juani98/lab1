library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

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


architecture Behavioral of sistema_digital is

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
    
    component BCD_counter is 
        Port (
            rst : in STD_LOGIC;
            enable: in std_logic;
            clk : in STD_LOGIC;
            data_out : out STD_LOGIC_VECTOR (cnt_width-1 downto 0)
        );
     end component;
    
    component LFSR_4bits is
        port(
            clk : in std_logic;
            rst : in std_logic;
            enable : in std_logic;
            q_lfsr_4b: out std_logic_vector(cnt_width-1 downto 0)
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
    generic(
        rst_width: integer:=2
     --   rst_active_value: std_logic:='0'
    );
    port(
        sys_clk : in std_logic;
        sys_rst : in std_logic;
        rst_aa_sd: out std_logic
    );
    end component;


    component divisor_frecuencia is
   -- generic(cnt_width: natural:= 28);
    Port ( 
        input_clk : in STD_LOGIC;
        reset : in std_logic;
        frec_selec : in std_logic_vector(2 downto 0);
        output_clk : out STD_LOGIC
--        fin_cuenta : out std_logic
        );
    end component;
--señales internas (contador BINARIO)
signal internal_counter_carry_out_bin : std_logic;
signal internal_up_down : std_logic;
signal internal_counter_carry_out : std_logic;

signal internal_enable_LFSR_counter : std_logic;
signal internal_enable_BCD_counter: std_logic;
signal internal_enable_bin_counter : std_logic;

signal internal_reset_LFSR_counter : std_logic;
signal internal_reset_BCD_counter: std_logic;
signal internal_reset_bin_counter : std_logic;

signal internal_data_counter_out_bin : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_data_counter_out_BCD : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_data_counter_out_LFSR : STD_LOGIC_VECTOR (cnt_width-1 downto 0);

--internal counter select es la seleccion de entradas que son asincronicas (ahora sincronizadas)
signal internal_counter_select : std_logic_vector(1 downto 0);

signal internal_clock : std_logic; --clock de 1Hz
signal internal_reset : std_logic; --reset con PowerOnReset
begin
    --Componentes
    --Componente N1: contador de 24bits
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

    counter2_BCD: BCD_counter port map(
        rst => internal_reset_BCD_counter,
        enable => internal_enable_BCD_counter,
        clk => internal_clock,
        data_out => internal_data_counter_out_BCD
    );

    counter3_LFSR: LFSR_4bits port map(
        rst => internal_reset_LFSR_counter,
        clk => internal_clock,
        enable => internal_enable_LFSR_counter,
        q_lfsr_4b => internal_data_counter_out_LFSR
    );

    synchronizer1: synchronizer port map(
        reset => internal_reset,
        clock => clock,
        async_input => counter_select(0), --entrada asincronica
        sync_output => internal_counter_select(0)
    );   
    synchronizer2: synchronizer port map(
        reset => internal_reset,
        clock => clock,
        async_input => counter_select(1), --entrada asincronica
        sync_output => internal_counter_select(1)
    ); 

    rst_async_ass_synch_deass1: rst_async_ass_synch_deass port map(
        sys_clk => clock,
        sys_rst => reset,
        rst_aa_sd => internal_reset --reset sincronico
    );   

  divisor_frecuencia1: divisor_frecuencia port map(
        input_clk => clock,
        reset => internal_reset,
        frec_selec => "010", --010 -> 1Hz
        output_clk => internal_clock
    );   
    
 --OUTPUTS    
    with internal_counter_select select
        counter_output <=   internal_data_counter_out_bin when "00",
                            internal_data_counter_out_bin when "01",
                            internal_data_counter_out_BCD when "10",
                            internal_data_counter_out_LFSR when others;     

    process(reset,internal_reset) 
    begin
        if(internal_reset='1') then --reset sincronizado
            internal_reset_LFSR_counter <='1';
            internal_reset_bin_counter <='1';
            internal_reset_BCD_counter <='1';
            --counter_output <= (others=>'0');
        else
            internal_reset_LFSR_counter <='0';
            internal_reset_bin_counter <='0';
            internal_reset_BCD_counter <='0';
        end if;
    end process;
    process(internal_counter_select)
    begin
        case internal_counter_select is
            when "00" =>
               --ENABLES
   
                internal_enable_LFSR_counter <= '1';
                internal_enable_BCD_counter <= '1';
                internal_enable_bin_counter <= '0';
                --RESETS
--                internal_reset_LFSR_counter <='1';
--                internal_reset_BCD_counter <='0';
--                internal_reset_bin_counter <='1';
                internal_up_down <= '1';
             when "01" =>
             

               --ENABLES
                internal_enable_LFSR_counter <= '1';
                internal_enable_BCD_counter <= '1';
                internal_enable_bin_counter <= '0';
                --RESETS
--                internal_reset_LFSR_counter <='1';
--                internal_reset_BCD_counter <='0';
--                internal_reset_bin_counter <='1';
                internal_up_down <= '0';      
            when "10" =>
                internal_enable_LFSR_counter <= '1';
                internal_enable_bin_counter <= '1';
                internal_enable_BCD_counter <= '0';
                
 
                --RESETS
--                internal_reset_LFSR_counter <='1';
--                internal_reset_BCD_counter <='0';
--                internal_reset_bin_counter <= '1';
                internal_up_down <= '1';
            when others =>

                internal_enable_LFSR_counter <= '0';
                internal_enable_BCD_counter <= '1';
                internal_enable_bin_counter <= '1';    
                --RESETS
--                internal_reset_LFSR_counter <='0';
--                internal_reset_BCD_counter <='1';
--                internal_reset_bin_counter <='1';    
                internal_up_down <= '1';
        end case;
    end process;  
end Behavioral;
