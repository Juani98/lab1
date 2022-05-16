library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity sistema_pwm is
    generic(cnt_width: natural:= 8); 
    Port(
        sis_duty_cycle : in std_logic_vector(cnt_width-1 downto 0);
        sis_load : in std_logic;
        sis_reset: in std_logic;
        sis_clock : in std_logic;
        sis_pwm_out : out std_logic
    );
end sistema_pwm;





architecture Behavioral of sistema_pwm is

    component pwm is
        Port ( 
            duty_cycle : in std_logic_vector(cnt_width-1 downto 0);
            load : in std_logic;
            reset: in std_logic;
            clock : in std_logic;
            pwm_out : out std_logic
        );
    end component;
    
    component debounce_v2 is
        Port ( 
            debounce_input : in STD_LOGIC;
            clock : in STD_LOGIC;
            reset : in std_logic;
            debounce_output : out STD_LOGIC
        );
    end component;
    signal internal_pre_load:  STD_LOGIC;

begin
     main_pwm: pwm port map(
       duty_cycle => sis_duty_cycle,
       load => internal_pre_load,
       reset => sis_reset,
       clock => sis_clock,
       pwm_out => sis_pwm_out
    );
    
    debounce_input: debounce_v2 port map(
        debounce_input => sis_load,
        clock => sis_clock,
        reset => sis_reset,
        debounce_output => internal_pre_load
    );

end Behavioral;
