
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity pwm is
    generic(cnt_width: natural:= 8); 

    Port(
        duty_cycle : in std_logic_vector(cnt_width-1 downto 0);
        load : in std_logic;
        reset: in std_logic;
        clock : in std_logic;
        pwm_out : out std_logic
    );
end pwm;
------------------------------------------------------------------
 -- Architecture --
------------------------------------------------------------------
architecture Behavioral of pwm is
    --Componentes
    --Contador binario de 8bits para definir el duty cycle
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
    --signal internal_enable : std_logic;
signal internal_data_out: std_logic_vector(cnt_width-1 downto 0);
signal internal_data_in: std_logic_vector(cnt_width-1 downto 0);
signal internal_carry_out : std_logic;
signal internal_pwm_output : std_logic;  
signal internal_pre_load_data: std_logic; 
begin
    --Mapeo de puertos
    --Componente N1: Contador binario de 8bits
    counter1: counter_Nbits port map(
        rst => reset,
        enable => '0', --habilitado siempre
        data_in => internal_data_in,
        clk => clock,
        up_down => '0', --cuenta descendente
        load_data => internal_pre_load_data,
        data_out => internal_data_out,
        carry_out => internal_carry_out
    );
    -- Process --
    process (clock,reset,load,internal_carry_out,duty_cycle)
    begin
        if(reset='1') then
            internal_pwm_output <= '0'; 
        elsif(rising_edge(clock)) then
            if(load='1') then --hay un pido de carga de nuevo duty-cycle
                internal_data_in <= duty_cycle; --le paso el dato nuevo al contador 
                internal_pre_load_data <= '1';  --habilito la precarga del contador
                
            elsif (internal_carry_out='1') then --si terminó la cuenta
                internal_pre_load_data <= '1'; -- le aviso al contador que quiero cargar un nuevo dato
                internal_data_in <= not(internal_data_in); -- le paso el complemento del último valor cargado                          
                internal_pwm_output <= not(internal_pwm_output); --invierto la señal de salida
                -- Nota: el complemento del último valor cargado 
                --       puede adoptar solo 2 posibles valores
                --       duty_cycle o not(duty_cycle)
            else
                -- sino, solo cuento y deshabilito la precarga
                 internal_pre_load_data <= '0';
            end if;
        end if;
    end process; 
    --paso la señal correspondiente de salida a la salida
    pwm_out <= not(internal_pwm_output);
end Behavioral;
