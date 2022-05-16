
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

package array_of_std_logic_type is
    constant COLS : integer := 8;
    constant ROWS : integer := 8;
    type std_logic_vector_array is array (0 to ROWS-1) of std_logic_vector(COLS-1 downto 0);
    type generic_array is array (0 to 7) of std_logic_vector(7 downto 0);
end package array_of_std_logic_type;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.array_of_std_logic_type.all;

entity testbench_lab1_sec2_parteB is
    generic (
        cant_pwm : integer := 8;
        bus_width : integer := 8;
        data_in_i : generic_array := (
                                    "00000011", --3
                                    "00011110", --30
                                    "01000110", --70
                                    "01111000", --120
                                    "10010110", --150
                                    "10110100", --180
                                    "11010010", --210
                                    "11111010" --250
                                    )
    );
    
--  Port ( );
end testbench_lab1_sec2_parteB;

architecture Behavioral of testbench_lab1_sec2_parteB is
    component N_pwm is
        Port ( 
            duty_cycle : in std_logic_vector_array;
            load : in std_logic;
            reset: in std_logic;
            clock : in std_logic;
            pwm_out : out std_logic_vector(bus_width-1 downto 0)
       );
    end component;
    
    signal tb_clock : std_logic :='0';
    signal tb_reset : std_logic :='0';
    signal tb_load : std_logic :='0';
    signal tb_duty_cycle : std_logic_vector(cant_pwm-1 downto 0);
    signal tb_pwm_out : std_logic_vector(cant_pwm-1 downto 0);

    constant clk_period: time :=  15 ns; 
  
begin
UUT_N1: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(0)=>data_in_i(0),pwm_out(0)=>tb_pwm_out(0));
UUT_N2: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(1)=>data_in_i(1),pwm_out(1)=>tb_pwm_out(1));
UUT_N3: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(2)=>data_in_i(2),pwm_out(2)=>tb_pwm_out(2));
UUT_N4: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(3)=>data_in_i(3),pwm_out(3)=>tb_pwm_out(3));
UUT_N5: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(4)=>data_in_i(4),pwm_out(4)=>tb_pwm_out(4));
UUT_N6: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(5)=>data_in_i(5),pwm_out(5)=>tb_pwm_out(5));
UUT_N7: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(6)=>data_in_i(6),pwm_out(6)=>tb_pwm_out(6));
UUT_N8: N_pwm port map (clock=>tb_clock,reset => tb_reset,load=>tb_load,duty_cycle(7)=>data_in_i(7),pwm_out(7)=>tb_pwm_out(7));        
    
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --T=30nS
    
    process
    begin
        tb_reset <= '0';
        wait for 50 ns;
        tb_reset <= '1'; wait for 1 us;
        tb_reset <= '0'; wait for 60 ns;
        wait for 10 ns;
        tb_load <= '1'; 
        wait for 100 ns;
        tb_load <= '0'; 
        
        wait;
    end process;
end Behavioral;




