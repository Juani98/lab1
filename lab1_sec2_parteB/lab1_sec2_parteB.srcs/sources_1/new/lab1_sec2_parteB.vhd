library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity N_pwm is
    generic (
        cant_pwm:integer := 8;
        bus_width:integer := 4
    );
    port(
        duty_cycle : in std_logic_vector(bus_width-1 downto 0);
        load : in std_logic;
        reset: in std_logic;
        clock : in std_logic;
        pwm_out : out std_logic
    );
    end N_pwm;
architecture beh of N_pwm is
-- component declaration
component dff is
port (clk, clr, d, pr: in std_logic;
 q: out std_logic);
end component;
begin
-- component instantiation with generate
reg_xx: for i in d'range generate
bit:dff port map(clk=>clk,clr=>clr,d=>d(i),q=>q(i),pr=>'0');
end generate reg_xx;
end beh;