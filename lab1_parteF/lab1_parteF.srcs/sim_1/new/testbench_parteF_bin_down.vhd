library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity testbench_parteF_bin_down is
    generic(cnt_width: natural:= 4);
--  Port ( );
end testbench_parteF_bin_down;

architecture Behavioral of testbench_parteF_bin_down is

    component sistema_digital is
    port ( 
        clock : in STD_LOGIC;
        reset : in std_logic;
     --   enable: in std_logic;
        counter_select : in std_logic_vector(1 downto 0);
        counter_output : out std_logic_vector(cnt_width-1 downto 0)
    );
end component;
    signal tb_clock : std_logic :='0';
    signal tb_reset : std_logic :='0';
    signal tb_counter_select : std_logic_vector(1 downto 0);
    signal tb_counter_output : std_logic_vector(cnt_width-1 downto 0);
    constant clk_period: time :=  15 ns; 
        
begin

    UUT_1: sistema_digital port map (
        clock => tb_clock,
        reset => tb_reset,
        counter_select => tb_counter_select,
        counter_output => tb_counter_output
    );
    
 tb_clock <= not(tb_clock) after clk_period; --T=30nS
    process
    begin
        --Esta simulacion esta pensada para operar a 5Hz
    
        wait for 10 us;
        tb_reset <= '1';
         wait for 100 ns; --reseteo por 100nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 70 ns;
        tb_counter_select <= "01";
        wait for 500 ms;
        wait;
   
        
    end process;
 end Behavioral;