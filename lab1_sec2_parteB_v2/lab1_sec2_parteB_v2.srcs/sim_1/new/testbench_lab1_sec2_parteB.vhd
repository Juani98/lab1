library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.array_of_std_logic_type.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity testbench_lab1_sec2_parteB is
    generic (
        cant_pwm : integer := 8;
        bus_width : integer := 8;
        data_in_i : generic_array := ( 
                                 -- 8 Duty Cycles distintos para los 8 Pwms --     
                                    "11111010", --dec 250 (98,03% duty_cycle)
                                    "11010010", --dec 210 (82,35% duty_cycle)
                                    "10110100", --dec 180 (70,58% duty_cycle)
                                    "10010110", --dec 150 (58,82% duty_cycle)
                                    "01111000", --dec 120 (47,05% duty_cycle)
                                    "01000110", --dec 70  (27,45% duty_cycle)
                                    "00011110", --dec 30  (11,76% duty_cycle)
                                    "00000011" --dec 3    ( 1,17% duty_cycle)
                                    )
    );
end testbench_lab1_sec2_parteB;
------------------------------------------------------------------
 -- Architecture --
------------------------------------------------------------------
architecture Behavioral of testbench_lab1_sec2_parteB is
    component pwm is
        port (
            duty_cycle : in std_logic_vector(bus_width-1 downto 0);
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
    signal tb_pwm_out : std_logic_vector(cant_pwm-1 downto 0);
    
    constant clk_period: time :=  15 ns; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty
begin
--Generación de 8 UUT (8 PWMs)
PWM_N: for i in 0 to 7 generate    
    UUT_N1: pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle=>data_in_i(i),pwm_out=>tb_pwm_out(i));
end generate PWM_N;
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --Tclk=30nS -> Ton = Toff = 15nS - 50% duty
    process
    begin
------------------------------------Testbench 1--------------------------------------------- 
-- Descripción: Este código ejecuta 8 pwms de distintos duty_cycles
--              Ejecutar la simulación por 50uS
--------------------------------------------------------------------------------------------  
        tb_reset <= '0';
        wait for 50 ns;
        tb_reset <= '1';
        --se resetea
        wait for 1 us;
        tb_reset <= '0';
        wait for 70 ns;
        tb_load <= '1';
        --se precarga duty_cycle una sola vez
        wait for 100 ns;
        tb_load <= '0'; 
        wait for 50 us;
        wait;
    end process;
end Behavioral;






