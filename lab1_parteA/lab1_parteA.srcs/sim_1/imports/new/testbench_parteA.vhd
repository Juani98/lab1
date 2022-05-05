
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench_parteA is
--  Port ( );
end testbench_parteA;

architecture Behavioral of testbench_parteA is
    --componentes a probar
    component synchronizer is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           async_input : in STD_LOGIC;
           sync_output : out STD_LOGIC);
    end component;
    --asignacion de señales
    signal tb_reset : std_logic :='0';
    signal tb_clock : std_logic :='0';
    signal tb_async_input : std_logic :='0';
    signal tb_sync_output : std_logic;
    constant clk_period: time :=  50 us; 
    
    begin
    --instanciacion de componentes
    UUT_1: synchronizer port map (
        reset => tb_reset,
        clock => tb_clock,
        async_input => tb_async_input,
        sync_output => tb_sync_output
    );
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --T=100uS
    
    process   
    begin
        --generacion de señale
        --reset
       -- tb_reset <= '0'; wait for 10 us;
        wait for 10 us;
        tb_reset <= '1'; wait for 10 us;

        --dato en D
        wait for 29 us;
        tb_async_input <= '1'; wait for 51 us;
        tb_async_input <= '0';

    end process;
end Behavioral;
