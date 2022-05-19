library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity testbench_lab1_sec2_parteA is
    generic(cnt_width: natural:= 8); 

--  Port ( );
end testbench_lab1_sec2_parteA;
------------------------------------------------------------------
 -- Architecture --
------------------------------------------------------------------
architecture Behavioral of testbench_lab1_sec2_parteA is
    component pwm is
        Port ( 
            duty_cycle : in std_logic_vector(cnt_width-1 downto 0);
            load : in std_logic;
            reset: in std_logic;
            clock : in std_logic;
            pwm_out : out std_logic
            );
    end component;
    
    --señales internas para simulación
    signal tb_clock : std_logic :='0';
    signal tb_reset : std_logic :='0';
    signal tb_load : std_logic :='0';
    signal tb_duty_cycle : std_logic_vector(cnt_width-1 downto 0);
    signal tb_pwm_out : std_logic;
    
    constant clk_period: time :=  15 ns; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty
begin
    --Mapeo de puertos de la unit under test (UUT)
    UUT_1: pwm port map (
        clock => tb_clock,
        reset => tb_reset,
        load => tb_load,
        duty_cycle => tb_duty_cycle,
        pwm_out => tb_pwm_out
    );
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty
    
    -- Process --
    process
    begin
------------------------------------Testbench 1--------------------------------------------- 
-- Descripción: Ejecutar este código por 50uS. Se cargan distintos 
--              valores de duty_cycle para verificar su funcionamiento
--------------------------------------------------------------------------------------------     
        --Test 1 -> 0,78% duty cycle
        wait for 50 ns;
        tb_reset <= '1';--reseteo por 1 uS
        wait for 1 us; 
        tb_reset <= '0'; 
        wait for 70 ns;
        tb_load <= '1'; --precargo dato de duty_cycle
        wait for 100 ns;
        tb_duty_cycle <= "00000010"; --decimal 2 (0,78% duty cycle)
        wait for 60 ns; --reseteo por 60nS
        tb_load <= '0';  
        wait for 10 us;
        
        --Test 2 -> 23,53% duty cycle
        wait for 50 ns;
        tb_reset <= '1';--reseteo por 1 uS
        wait for 1 us; 
        tb_reset <= '0';
        wait for 70 ns;
        tb_load <= '1'; --precargo dato de duty_cycle
        wait for 100 ns;
        tb_duty_cycle <= "00111100";  --decimal 60 (23,53% duty cycle)
        wait for 60 ns; 
        tb_load <= '0';  
        wait for 10 us;
        
        --Test 3 -> 47,05% duty cycle
        wait for 50 ns;
        tb_reset <= '1';--reseteo por 1 uS
        wait for 1 us; 
        tb_reset <= '0';
        wait for 70 ns;
        tb_load <= '1'; --precargo dato de duty_cycle
        wait for 100 ns;
        tb_duty_cycle <= "01111001";  --decimal 120 (47,05% duty cycle)
        wait for 60 ns;
        tb_load <= '0';  
        wait for 10 us;
          
        --Test 4 -> 70,58% duty cycle      
        wait for 50 ns;
        tb_reset <= '1'; --reseteo por 1 uS
        wait for 1 us;
        tb_reset <= '0';
        wait for 70 ns;
        tb_load <= '1';  --precargo dato de duty_cycle
        wait for 100 ns;
        tb_duty_cycle <= "10110100"; -- decimal 180 (70,58% duty cycle)
        wait for 60 ns; 
        tb_load <= '0';  
        wait for 10 us;
        
        --Test 5 -> 98,03% duty cycle 
        wait for 50 ns;
        tb_reset <= '1'; --reseteo por 1 uS
        wait for 1 us;
        tb_reset <= '0';
        wait for 70 ns;
        tb_load <= '1';  --precargo dato de duty_cycle
        wait for 100 ns;
        tb_duty_cycle <= "11111010";  -- decimal 250 (98,03% duty cycle)
        wait for 60 ns;
        tb_load <= '0';  
        wait for 10 us;
        
        wait;
    end process;
end Behavioral;






