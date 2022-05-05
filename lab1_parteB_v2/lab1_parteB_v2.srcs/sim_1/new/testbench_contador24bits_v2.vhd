library IEEE;
--library IEEE.STD_LOGIC_1164;
--library IEEE.numeric_std;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity testbench_contador24bits_v2 is
--  Port ( );
end testbench_contador24bits_v2;

architecture Behavioral of testbench_contador24bits_v2 is
    component contador_24bits is
    Port (
           reset : in STD_LOGIC;
      --     enable: in std_logic;
      --    data_in : in STD_LOGIC_VECTOR (23 downto 0);
           clk : in STD_LOGIC;
      --     up_down : in STD_LOGIC;
      --     load_data : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (23 downto 0));
    end component;
     
    signal tb_reset : std_logic :='1';
    signal tb_clock : std_logic :='0';
 --   signal tb_enable : std_logic :='0';
--    signal tb_up_down : std_logic :='1';
--    signal tb_load_data : std_logic :='0';
--    signal tb_data_in : std_logic_vector (23 downto 0):="000000000000000000000000";
    signal tb_data_out: std_logic_vector (23 downto 0);
    
    constant clk_period: time :=  50 us; 
begin
  --  UUT_1: numeric_std.contador_24bits port map (
      UUT_1: contador_24bits port map (
        reset => tb_reset,
 --       enable => tb_enable,
        clk => tb_clock,
 --       data_in => tb_data_in,
  --      up_down => tb_up_down,
   --     load_data => tb_load_data,
        data_out => tb_data_out
    );
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --T=30nS
    
    process
    begin
          
--           --generacion de se�ale
--        --reset
        tb_reset <= '0'; wait for 10 us;
                wait for 20 us;
       tb_reset <= '1'; wait for 40 us;
wait;
--        wait for 10 us;
--        tb_load_data <= '1'; wait for 10 us;
--        tb_data_in <= "000000000000000000000000"; wait for 100 us;
--        tb_load_data <= '0';
--        wait for 50 us;
--        tb_enable <='0';
--        wait;
        
    end process;
end Behavioral;