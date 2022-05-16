
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity pwm is
    generic(cnt_width: natural:= 8); 

    Port(
        duty_cycle : in std_logic_vector(cnt_width-1 downto 0);
        load : in std_logic;
        reset: in std_logic;
        clock : in std_logic;
        pwm_out : out std_logic
    );
end pwm;



architecture Behavioral of pwm is
    component counter_Nbits is
        Port ( 
            rst : in STD_LOGIC;
            enable: in std_logic;
            data_in : in STD_LOGIC_VECTOR (cnt_width-1 downto 0);
            clk : in STD_LOGIC;
            up_down : in STD_LOGIC;
            load_data : in STD_LOGIC;
            data_out : out STD_LOGIC_VECTOR (cnt_width-1 downto 0);
            carry_out : out std_logic
        );
    end component;
    --signal internal_enable : std_logic;
    signal internal_data_out: std_logic_vector(cnt_width-1 downto 0);
    
   signal internal_data_in: std_logic_vector(cnt_width-1 downto 0);
  
  
  signal internal_carry_out : std_logic;
  signal internal_pwm_output : std_logic;  
    signal internal_pre_load_data: std_logic; 
begin
    counter1: counter_Nbits port map(
        rst => reset,
        enable => '0', --habilitado siempre
        data_in => internal_data_in,
        clk => clock,
        up_down => '0', --cuenta descendente
        load_data => internal_pre_load_data,
        data_out => internal_data_out,
        carry_out => internal_carry_out
    );

      
--    process (duty_cycle)
--    begin
--    internal_duty_cycle <= ("11111111" - duty_cycle);
--    end process;

    process (clock,reset,load,internal_carry_out,duty_cycle)
    
    begin
--        if(load='1' or internal_carry_out='1')then
--            internal_pre_load_data <= '1';
--        else
--            internal_pre_load_data <= '0';
--        end if;
        if(reset='1') then
            internal_pwm_output <= '0'; 
    --        internal_carry_out <= '0';
     --       internal_pre_load_data <= '0';
        elsif(rising_edge(clock)) then
            if(load='1') then
                internal_data_in <= duty_cycle;
                internal_pre_load_data <= '1';
            elsif (internal_carry_out='1') then --termino la cuenta
                internal_pre_load_data <= '1';
                internal_data_in <= not(internal_data_in);
                internal_pwm_output <= not(internal_pwm_output);
                
            else
                 internal_pre_load_data <= '0';
            end if;
        end if;
    end process; 

    pwm_out <= not(internal_pwm_output);
end Behavioral;
