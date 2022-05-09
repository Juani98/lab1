

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity testbench_lab1_sec2_parteA is
    generic(cnt_width: natural:= 8); 

--  Port ( );
end testbench_lab1_sec2_parteA;

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
    
    signal tb_clock : std_logic :='0';
    signal tb_reset : std_logic :='0';
    signal tb_load : std_logic :='0';
    signal tb_duty_cycle : std_logic_vector(cnt_width-1 downto 0);
    signal tb_pwm_out : std_logic;
  --  signal tb_fin_cuenta : std_logic;
    
    constant clk_period: time :=  15 ns; 

begin
    UUT_1: pwm port map (
        clock => tb_clock,
        reset => tb_reset,
        load => tb_load,
        duty_cycle => tb_duty_cycle,
        pwm_out => tb_pwm_out
 
    );

    --clock 
    tb_clock <= not(tb_clock) after clk_period; --T=30nS
    
    process
    begin
    
        wait for 50 ns;
        tb_reset <= '1'; wait for 1 us; --reseteo por 60nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 10 ns;
        tb_load <= '1'; 
        wait for 100 ns;
        tb_duty_cycle <= "00000010";   --dec 2
        wait for 60 ns; --reseteo por 60nS
        tb_load <= '0';  
        
        wait for 10 ms;
        
        wait for 50 ns;
        tb_reset <= '1'; wait for 1 us; --reseteo por 60nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 10 ns;
        tb_load <= '1'; 
        wait for 100 ns;
        tb_duty_cycle <= "00111100";  --dec 60
        wait for 60 ns; --reseteo por 60nS
        tb_load <= '0';  
        
        wait for 10 ms;
        
        wait for 50 ns;
        tb_reset <= '1'; wait for 1 us; --reseteo por 60nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 10 ns;
        tb_load <= '1'; 
        wait for 100 ns;
        tb_duty_cycle <= "01111001";  --(dec 120 )
        wait for 60 ns; --reseteo por 60nS
        tb_load <= '0';  
        
        wait for 10 ms;
                
        wait for 50 ns;
        tb_reset <= '1'; wait for 1 us; --reseteo por 60nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 10 ns;
        tb_load <= '1'; 
        wait for 100 ns;
        tb_duty_cycle <= "10110100";  
        wait for 60 ns; --reseteo por 60nS
        tb_load <= '0';  
        
        wait for 10 ms;
        
        wait for 50 ns;
        tb_reset <= '1'; wait for 1 us; --reseteo por 60nS
        tb_reset <= '0'; wait for 60 ns;
        wait for 10 ns;
        tb_load <= '1'; 
        wait for 100 ns;
        tb_duty_cycle <= "11111010";  --dec 250
        wait for 60 ns; --reseteo por 60nS
        tb_load <= '0';  
        
        wait;
    end process;
end Behavioral;






