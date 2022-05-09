library IEEE;
--library IEEE.STD_LOGIC_1164;
--library IEEE.numeric_std;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity testbench_parteD is
    generic(
    --    lfsr_width : integer := 8;
        max_width : integer :=32

        );
--  Port ( );
end testbench_parteD;

architecture Behavioral of testbench_parteD is
    component LFSR_Nbits is

    Port (
        clk : in std_logic;
        rst : in std_logic;
        width_select : in std_logic_vector(1 downto 0);
       
        q_lfsr_N_bits: out std_logic_vector(max_width-1 downto 0)
        );
    end component;
     
    signal tb_reset : std_logic :='0';
    signal tb_clock : std_logic :='0';
    signal tb_width_select : std_logic_vector (1 downto 0);
    signal tb_q_lfsr_N_bits: std_logic_vector (max_width-1 downto 0);
    constant clk_period: time :=  30 ns;
begin

      UUT_1: LFSR_Nbits port map (
        rst => tb_reset,
        clk => tb_clock,
        width_select => tb_width_select,
        q_lfsr_N_bits => tb_q_lfsr_N_bits
    );
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --T=100uS

    process
    begin
          
--      --generacion de señale
--      --reset
       tb_width_select <= "11";
        wait for 20 ns;
        tb_reset <= '1'; wait for 10 ns;
        wait for 20 ns;
        tb_reset <= '0'; wait for 40 ns;
 
        wait for 500 ns;

        wait;
        
    end process;
end Behavioral;
