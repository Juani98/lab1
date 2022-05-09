library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity LFSR_Nbits is
    generic(
  --      lfsr_width : integer := 8;
        max_width : integer :=32

        );

    port(
        clk : in std_logic;
        rst : in std_logic;
        width_select : in std_logic_vector(1 downto 0);
        q_lfsr_N_bits: out std_logic_vector(max_width-1 downto 0)

        );
end LFSR_Nbits;
-------------------------------------------------------------------
 -- Architecture --
-------------------------------------------------------------------
architecture beh of LFSR_Nbits is

    --  constant  max_width : natural := 32;
        
       constant initial_value: std_logic_vector(max_width-1 downto 0):= (0=>'1',others=>'0');


signal q_lfsr_N_bits_i: std_logic_vector(max_width-1 downto 0);
signal N_bits : std_logic_vector(1 downto 0);
begin

--    with width_select select
--    N_bits <= "00" when "00",
--              "01" when "01",
--              "10" when "10",
--              "11" when others;
-- Shifter Process
    lfsr_cnt_proc: process(rst, clk, width_select)
    begin
        
        if(rst='1') then
            q_lfsr_N_bits_i <= initial_value;
        elsif(rising_edge(clk)) then
            if(width_select="00") then
                           
                -- shift operation: b3->b2, b2->b1, b1->b0
                    for i in 3 downto 1 loop
                        q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                    end loop;
                 -- Serial Input to the b3 of the LFSR
                q_lfsr_N_bits_i(3) <= q_lfsr_N_bits_i(1) xor q_lfsr_N_bits_i(0);
        
            elsif(width_select="01") then
                -- shift operation: b3->b2, b2->b1, b1->b0
                for i in 7 downto 1 loop
                    q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                end loop;
                 -- Serial Input to the b3 of the LFSR
                q_lfsr_N_bits_i(7) <= q_lfsr_N_bits_i(4) xor q_lfsr_N_bits_i(3) xor q_lfsr_N_bits_i(2) xor q_lfsr_N_bits_i(0);

            elsif(width_select="10") then
                for i in 15 downto 1 loop
                    q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                end loop;
                 -- Serial Input to the b3 of the LFSR
                q_lfsr_N_bits_i(15) <= q_lfsr_N_bits_i(5) xor q_lfsr_N_bits_i(4) xor q_lfsr_N_bits_i(3) xor q_lfsr_N_bits_i(0);

             
            else
               for i in 31 downto 1 loop
                    q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                end loop;
                 -- Serial Input to the b3 of the LFSR
                q_lfsr_N_bits_i(31) <= q_lfsr_N_bits_i(22) xor q_lfsr_N_bits_i(2) xor q_lfsr_N_bits_i(1) xor q_lfsr_N_bits_i(0);

            end if;
            

        end if;
    end process lfsr_cnt_proc;
    q_lfsr_N_bits <= q_lfsr_N_bits_i;
end architecture beh;
