
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity testbench_parteE is
--  Port ( );
end testbench_parteE;

architecture Behavioral of testbench_parteE is
    component divisor_frecuencia is
    Port ( 
        input_clk : in STD_LOGIC;
        frec_selec : in std_logic_vector(2 downto 0);
        reset : in std_logic;
        output_clk : out STD_LOGIC
  --      fin_cuenta : out std_logic
        );
    end component;
    signal tb_input_clk : std_logic :='0';
    signal tb_reset : std_logic :='0';
    signal tb_frec_selec : std_logic_vector(2 downto 0);
    signal tb_output_clk : std_logic;
  --  signal tb_fin_cuenta : std_logic;
    
    constant clk_period: time :=  15 ns; 
begin

    UUT_1: divisor_frecuencia port map (
        input_clk => tb_input_clk,
        reset => tb_reset,
        frec_selec => tb_frec_selec,
        output_clk => tb_output_clk
 
    );
    --clock 
    tb_input_clk <= not(tb_input_clk) after clk_period; --T=30nS
    
    process
    begin
        wait for 20 ns;
        tb_reset <= '1'; wait for 60 ns; --reseteo por 60nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 10 ns;
        tb_frec_selec <= "000";
        wait for 400ms;
        
        tb_reset <= '1'; wait for 60 ns; --reseteo por 60nS
        tb_reset <= '0'; wait for 60 ns;
        tb_frec_selec <= "001";
        wait for 1000ms;
        
        wait;
    
    end process;
end Behavioral;
