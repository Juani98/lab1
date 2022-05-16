
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

package array_of_std_logic_type is
    constant COLS : integer := 8;
    constant ROWS : integer := 8;
    type std_logic_vector_array is array (0 to ROWS-1) of std_logic_vector(COLS-1 downto 0);
end package array_of_std_logic_type;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.array_of_std_logic_type.all;


entity N_pwm is
    generic (
        cant_pwm : integer := 8;
        bus_width : integer := 8
    );
    port(
        duty_cycle : in std_logic_vector_array;
        load : in std_logic;
        reset: in std_logic;
        clock : in std_logic;
        pwm_out : out std_logic_vector(bus_width-1 downto 0)
    );
    end N_pwm;
    
architecture beh of N_pwm is
    -- component declaration
    component pwm is
        port (
            duty_cycle : in std_logic_vector(bus_width-1 downto 0);
            load : in std_logic;
            reset: in std_logic;
            clock : in std_logic;
            pwm_out : out std_logic
        );
    end component;
    signal a : std_logic_vector(7 downto 0);
    
    begin
    -- component instantiation with generate
    N_pwm: for i in a'range generate
        bit:pwm port map(
            duty_cycle => duty_cycle(i),
            load => load,
            reset => reset,
            clock => clock,
            pwm_out => pwm_out(i)
        );


    end generate N_pwm;
    
end beh;