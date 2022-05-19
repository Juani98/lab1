library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.array_of_std_logic_type.all;
--se usa un package para definir un arreglo de 7 filas
--de 7 vectores de std_logic_vector

------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity lab1_sec2_parteB is
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
    end lab1_sec2_parteB;
------------------------------------------------------------------
 -- Architecture --
------------------------------------------------------------------    
architecture beh of lab1_sec2_parteB is
    -- Component declaration: PWM
    component pwm is
        port (
            duty_cycle : in std_logic_vector(bus_width-1 downto 0);
            load : in std_logic;
            reset: in std_logic;
            clock : in std_logic;
            pwm_out : out std_logic
        );
    end component;
    begin
    -- component instantiation with generate
    -- genero 8 pwms
    N_pwm: for i in 0 to 7 generate
        bit:pwm port map(
            duty_cycle => duty_cycle(i),
            load => load,
            reset => reset,
            clock => clock,
            pwm_out => pwm_out(i)
        );
    end generate N_pwm;
end beh;