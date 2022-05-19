library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity LFSR_Nbits is
    generic(
        lfsr_width_4 : integer := 4;
        lfsr_width_8 : integer := 8;
        lfsr_width_16 : integer := 16;
        lfsr_width_32 : integer := 32;
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
--Constantes y señales internas
constant initial_value: std_logic_vector(max_width-1 downto 0):= (0=>'1',others=>'0');
signal q_lfsr_N_bits_i: std_logic_vector(max_width-1 downto 0);
signal N_bits : std_logic_vector(1 downto 0);
begin
    lfsr_cnt_proc: process(rst, clk, width_select)
    begin
        if(rst='1') then
            q_lfsr_N_bits_i <= initial_value;
        elsif(rising_edge(clk)) then
            if(width_select="00") then --LSFR 4bits
                -- shift operation LSFR 4bits
                    for i in (lfsr_width_4-1) downto 1 loop
                        q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                    end loop;
                 -- Feedback
                q_lfsr_N_bits_i((lfsr_width_4-1)) <= q_lfsr_N_bits_i(1) xor q_lfsr_N_bits_i(0);
            elsif(width_select="01") then --LSFR 8bits
            -- shift operation LSFR 8bits
                for i in (lfsr_width_8-1) downto 1 loop
                    q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                end loop;
                 -- Feedback
                q_lfsr_N_bits_i((lfsr_width_8-1)) <= q_lfsr_N_bits_i(4) xor q_lfsr_N_bits_i(3) xor q_lfsr_N_bits_i(2) xor q_lfsr_N_bits_i(0);
            elsif(width_select="10") then
                for i in (lfsr_width_16-1) downto 1 loop --LSFR 16bits
                -- shift operation LSFR 16bits
                    q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                end loop;
                 -- Feedback
                q_lfsr_N_bits_i((lfsr_width_16-1)) <= q_lfsr_N_bits_i(5) xor q_lfsr_N_bits_i(4) xor q_lfsr_N_bits_i(3) xor q_lfsr_N_bits_i(0);
            else
               for i in (lfsr_width_32-1) downto 1 loop --LSFR 32bits
               -- shift operation LSFR 32bits
                    q_lfsr_N_bits_i(i-1) <= q_lfsr_N_bits_i(i);
                end loop;
                 -- Feedback
                q_lfsr_N_bits_i((lfsr_width_32-1)) <= q_lfsr_N_bits_i(22) xor q_lfsr_N_bits_i(2) xor q_lfsr_N_bits_i(1) xor q_lfsr_N_bits_i(0);
            end if;
        end if;
    end process lfsr_cnt_proc;
    q_lfsr_N_bits <= q_lfsr_N_bits_i;
end architecture beh;
