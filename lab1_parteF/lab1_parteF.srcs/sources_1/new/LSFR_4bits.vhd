library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity LFSR_4bits is
    generic(
        initial_value: std_logic_vector(3 downto 0):= "1000";
        lfsr_width : integer := 4
        );

    port(
        clk : in std_logic;
        rst : in std_logic;
        enable : in std_logic;
        q_lfsr_4b: out std_logic_vector(lfsr_width-1 downto 0)
    );
end LFSR_4bits;
-------------------------------------------------------------------
 -- Architecture --
-------------------------------------------------------------------
architecture beh of LFSR_4bits is
signal q_lfsr_4b_i: std_logic_vector(lfsr_width-1 downto 0);
begin
-- Shifter Process
    lfsr_cnt_proc: process(rst, clk, enable)
    begin
        if(rst='1') then
            q_lfsr_4b_i <= initial_value;
        elsif (enable='1') then
            q_lfsr_4b_i <= q_lfsr_4b_i;
        
        elsif (rising_edge(clk)) then
        -- shift operation: b3->b2, b2->b1, b1->b0
            shifter_loop: for i in 3 downto 1 loop
                q_lfsr_4b_i(i-1) <= q_lfsr_4b_i(i);
            end loop shifter_loop;
         -- Serial Input to the b3 of the LFSR
        q_lfsr_4b_i(3) <= q_lfsr_4b_i(1) xor q_lfsr_4b_i(0);
        end if;
    end process lfsr_cnt_proc;
    q_lfsr_4b <= q_lfsr_4b_i;
end architecture beh;
