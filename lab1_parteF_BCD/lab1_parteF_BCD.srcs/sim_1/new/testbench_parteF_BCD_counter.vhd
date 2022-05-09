library IEEE;
--library IEEE.STD_LOGIC_1164;
--library IEEE.numeric_std;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity testbench_parteF_BCD_counter is
    generic(cnt_width: natural:= 4);
--  Port ( );
end testbench_parteF_BCD_counter;

architecture Behavioral of testbench_parteF_BCD_counter is
    component BCD_counter is

    Port (
        rst : in STD_LOGIC;
        enable: in std_logic;
        clk : in STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR (cnt_width-1 downto 0)

           );
    end component;
     
    signal tb_reset : std_logic :='0';
    signal tb_clock : std_logic :='0';
    signal tb_enable : std_logic :='0';
    signal tb_data_out: std_logic_vector (cnt_width-1 downto 0);
    
    constant clk_period: time :=  30 ns; 
begin

      UUT_1: BCD_counter port map (
        rst => tb_reset,
        enable => tb_enable,
        clk => tb_clock,
        data_out => tb_data_out
    );
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --T=100uS
    
    process
    begin
          
--           --generacion de señale
--        --reset
        wait for 20 ns;
        tb_reset <= '1'; wait for 10 ns;
        wait for 20 ns;
        tb_reset <= '0'; wait for 40 ns;

        wait for 300 ns;
        tb_enable <='1';
        wait for 500 ns;
        tb_enable <='0';
        wait;
        
    end process;
end Behavioral;
