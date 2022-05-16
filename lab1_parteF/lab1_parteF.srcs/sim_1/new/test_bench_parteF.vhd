library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity test_bench_parteF is
    generic(cnt_width: natural:= 4);

end test_bench_parteF;

-------------------------------------------------------------------
 -- Architecture --
-------------------------------------------------------------------
architecture Behavioral of test_bench_parteF is
    component sistema_digital is
    port ( 
        clock : in STD_LOGIC;
        reset : in std_logic;
        counter_select : in std_logic_vector(1 downto 0);
        counter_output : out std_logic_vector(cnt_width-1 downto 0)
    );
end component;
    signal tb_clock : std_logic :='0';
    signal tb_reset : std_logic :='0';
    signal tb_counter_select : std_logic_vector(1 downto 0);
    signal tb_counter_output : std_logic_vector(cnt_width-1 downto 0);
    constant clk_period: time :=  15 ns; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty
        
begin
    -- Unit Under Test: sistema digital
    UUT_1: sistema_digital port map (
        clock => tb_clock,
        reset => tb_reset,
        counter_select => tb_counter_select,
        counter_output => tb_counter_output
    );
    
 tb_clock <= not(tb_clock) after clk_period; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty
    process
    begin
    
------------------------------------Testbench 1-------------------------------------------------    
--  Descripción: Este código se uso para realizar las gráficas del informe. 
--               Esta simulacion esta pensada para operar a una frecuencia de 5 Hz
--
--        wait for 100 ns;
--        tb_reset <= '1';
--        wait for 100 ns; --reseteo por 100nS
--        tb_reset <= '0';
--        wait for 100 ns;
--        tb_counter_select <= "00"; --Seleccion de contador. Cambiar por cada simulación.
--        wait for 450 ms; --retardo 0,45 segundos
--        wait;
--
--------------------------------------------------------------------------------------------    

  
------------------------------------Testbench 2--------------------------------------------- 
-- Descripción: Este código está pensado para realizar una simulación completa del sistema digital
--              Utilizar una frecuencia de 1Hz
-- Observación: Retardos de 5 segundos. En total 20 segundos. 
--------------------------------------------------------------------------------------------  

        -- Test: Contador binario ascendente
        wait for 10 us;
        tb_reset <= '1';
         wait for 100 ns; --reseteo por 100nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 70 ns;
        tb_counter_select <= "00"; --selecciono contador binario ascendente
        wait for 5000 ms; --retardo de 5 segundos
        
        -- Test: Contador binario descendente
        wait for 10 us;
        tb_reset <= '1';
         wait for 100 ns; --reseteo por 100nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 70 ns;
        tb_counter_select <= "01"; --selecciono contador binario descendente
        wait for 5000 ms; --retardo de 5 segundos
        
        -- Test: Contador BCD ascendente
        wait for 10 us;
        tb_reset <= '1';
         wait for 100 ns; --reseteo por 100nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 70 ns;
        tb_counter_select <= "10"; --selecciono contador BCD
        wait for 5000 ms; --retardo de 5 segundos
        
        -- Test: LFSR de 4bits
        wait for 10 us;
        tb_reset <= '1';
         wait for 100 ns; --reseteo por 100nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 70 ns;
        tb_counter_select <= "11"; --selecciono LFSR
        wait for 5000 ms; --retardo de 5 segundos
        wait;

 
        
    end process;
 end Behavioral;




