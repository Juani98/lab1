
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

entity testbench_lab1_sec2_parteA is
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
end testbench_lab1_sec2_parteA;

architecture Behavioral of testbench_lab1_sec2_parteA is
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
  --  signal tb_fin_cuenta : std_logic;
    
    constant clk_period: time :=  15 ns; 
    signal a : std_logic_vector(7 downto 0);
    
begin
    t: for i in a'range generate
        UUT_N1: N_pwm port map (
            clock => tb_clock,
            reset => tb_reset,
            load => tb_load,
            --duty_cycle(i) => data_in_i(i),
            duty_cycle(i) => (others=>'1'),
            pwm_out(i) => tb_pwm_out(i)
    );
    end generate t;
    
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





