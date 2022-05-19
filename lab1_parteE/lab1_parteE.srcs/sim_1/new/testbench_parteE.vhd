library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity testbench_parteE is
--  Port ( );
end testbench_parteE;
-------------------------------------------------------------------
 -- Architecture --
-------------------------------------------------------------------
architecture Behavioral of testbench_parteE is
    component divisor_frecuencia is
    Port ( 
        input_clk : in STD_LOGIC;
        frec_selec : in std_logic_vector(2 downto 0);
        reset : in std_logic;
        output_clk : out STD_LOGIC
        );
    end component;
    signal tb_input_clk : std_logic :='0';
    signal tb_reset : std_logic :='0';
    signal tb_frec_selec : std_logic_vector(2 downto 0);
    signal tb_output_clk : std_logic;  
    constant clk_period: time :=  15 ns; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty
begin
    -- Unit Under Test: Divisor de frecuencia
    UUT_1: divisor_frecuencia port map (
        input_clk => tb_input_clk,
        reset => tb_reset,
        frec_selec => tb_frec_selec,
        output_clk => tb_output_clk
    );
    --Clock 
    tb_input_clk <= not(tb_input_clk) after clk_period; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty  
    process
    begin
 ------------------------------------Testbench 1-------------------------------------------------    
--  Descripción: Este código se uso para realizar las gráficas del informe. 
--               Esta simulacion, por 400mS, selecciona una señal de 5Hz.
--               Luego de 400mS, por 1000mS, se selecciona una frecuencia de 2Hz.
--               Puede elegirse el resto de los divisores variando "tb_frec_selec"
--               tb_frec_selec = "000" -> f=5Hz     
--               tb_frec_selec = "001" -> f=2Hz   
--               tb_frec_selec = "010" -> f=1Hz   
--               tb_frec_selec = "011" -> f=0.5Hz   
--               tb_frec_selec = "100" (and others) -> f=0.1Hz       
--  Nota: Ejecutar la simulación 1500mS      
-------------------------------------------------------------------------------------------------   
 
        --Testeo para frecuencia 5Hz
        wait for 100 ns;
        tb_reset <= '1';
        wait for 100 ns; --reseteo por 100nS
        tb_reset <= '0';
        wait for 100 ns;
        tb_frec_selec <= "000"; --Selección de frecuencia de salida 5Hz
        wait for 400 ms;
        
        --Testeo para frecuencia 2Hz
        wait for 100 ns;
        tb_reset <= '1';
        wait for 100 ns; --reseteo por 100nS
        tb_reset <= '0';
        wait for 100 ns;
        tb_frec_selec <= "001";  --Selección de frecuencia de salida 2Hz
        wait for 1000 ms;
        wait;
    
    end process;
end Behavioral;
