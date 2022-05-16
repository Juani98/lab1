
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench_parteC is
--  Port ( );
end testbench_parteC;

architecture Behavioral of testbench_parteC is
    --componentes a probar
    component rst_async_ass_synch_deass is
    Port ( 
        sys_clk : in std_logic;
        sys_rst : in std_logic;
        rst_aa_sd: out std_logic
        );
    end component;
    --asignacion de señales
    signal tb_sys_rst : std_logic :='0';
    signal tb_sys_clk : std_logic :='0';
    signal tb_rst_aa_sd : std_logic :='0';

    constant clk_period: time :=  15 ns; 
    
    begin
    --instanciacion de componentes
    UUT_1: rst_async_ass_synch_deass port map (
        sys_rst => tb_sys_rst,
        sys_clk => tb_sys_clk,
        rst_aa_sd => tb_rst_aa_sd
    );
    --clock 
    tb_sys_clk <= not(tb_sys_clk) after clk_period; --T=100uS
    
    process   
    begin
        tb_sys_rst <= '1';wait for 100 ns;
        tb_sys_rst <= '0'; wait for 200 ns;--reset
        tb_sys_rst <= '1';wait for 200 ns;
        
 
        tb_sys_rst <= '0';wait for 300 ns;
        tb_sys_rst <= '1'; wait for 300 ns;

        
        wait;

    end process;
end Behavioral;
