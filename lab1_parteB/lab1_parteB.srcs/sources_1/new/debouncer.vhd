library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity debounce_v2 is
    generic(cnt_width: natural:= 22);
    Port ( 
        debounce_input : in STD_LOGIC;
        clock : in STD_LOGIC;
        reset : in std_logic;
        debounce_output : out STD_LOGIC
        );
           
end debounce_v2;

architecture Behavioral of debounce_v2 is
    --DISEÑO ESTRUCTURAL
    --componentes
    component counter_Nbits is
        Port ( 
            rst : in STD_LOGIC;
            enable : in std_logic;
           data_in : in STD_LOGIC_VECTOR (cnt_width-1 downto 0);
           clk : in STD_LOGIC;
           up_down : in STD_LOGIC;
           load_data : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (cnt_width-1 downto 0);
           carry_out : out std_logic
           
           );
    end component;
    
   component FF_D is
        Port ( r : in STD_LOGIC;
               en : in std_logic;
               clk : in STD_LOGIC;
               d : in STD_LOGIC;
               q : out STD_LOGIC);
    end component;

--señales internas (contador)
signal internal_data_counter_in : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_data_counter_out : STD_LOGIC_VECTOR (cnt_width-1 downto 0);
signal internal_counter_carry_out : std_logic;
signal internal_counter_enable : std_logic;
signal internal_pre_load_data :  STD_LOGIC;
signal internal_start_counter : std_logic;

--señales internas FFlops
signal internal_q1, internal_q2 : std_logic;

begin
    --Componentes
    --Componente N1: contador de 24bits
     counter1_24bits: counter_Nbits port map(
        rst => internal_start_counter,
        enable => internal_counter_carry_out,
        data_in => (others=>'0'),
        clk => clock,
        up_down => '1',
        load_data => '0', 
        data_out => internal_data_counter_out,
        carry_out => internal_counter_carry_out
    );
         
    FF_D1: FF_D port map(
        r => reset,
        d => debounce_input,
        clk => clock,
        q => internal_q1,
        en => '1'
    );
    FF_D2: FF_D port map(
        r => reset,
        d => internal_q1,
        clk => clock,
        q => internal_q2,
        en => '1'
    );
    FF_D3: FF_D port map(
        r => reset,
        d => internal_q2,
        clk => clock,
        q => debounce_output,
        en => internal_counter_carry_out
    );
   
   internal_start_counter <= internal_q1 xor internal_q2;
   
   
   
   
--    process (debounce_input)
--    begin
----        if(reset='0') then
----            internal_start_counter <='1';
----            debounce_output <='0';
----        end if;
--        if(falling_edge(debounce_input)) then
--            debounce_output <='0';
--        end if;
--    end process;
end Behavioral;