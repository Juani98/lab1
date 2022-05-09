library ieee;
use ieee.std_logic_1164.all;
-------------------------------------------------------------------
 -- Enitiy --
-------------------------------------------------------------------
entity otro_lfsr is
     generic(
        lfsr_width : natural := 32 --ancho máximo
        );
     port(
        clk : in std_logic;
        rst : in std_logic;
        
        width_select : in std_logic_vector(1 downto 0);
        
        q_lfsr_4b: out std_logic_vector(lfsr_width-1 downto 0);
        q_lfsr_8b: out std_logic_vector(lfsr_width-1 downto 0);
        q_lfsr_16b: out std_logic_vector(lfsr_width-1 downto 0);
        q_lfsr_32b: out std_logic_vector(lfsr_width-1 downto 0)
        
        );
end otro_lfsr;
-----------------------------------------------------------------------------------
 -- Architecture --
-----------------------------------------------------------------------------------
architecture beh of otro_lfsr is
-- constant declarations
constant max_width : natural := 32; -- max # of registers in the LFSR
constant initial_value: std_logic_vector(lfsr_width-1 downto 0) := (0=>'1', others =>'0');

type feedback_array_type is array (4 to max_width) of std_logic_vector(max_width-1 downto 0);

--PREGUNTAR SI EL ARREGLO ES DE 0 a 4

constant feedback_equation: feedback_array_type :=
   (
    4 => (1 | 0 => '1', others => '0'),
    8 => (4 | 3 | 2 | 0 => '1', others => '0'),
  -- 12 => (6 | 4 | 1 | 0 => '1', others => '0'),
    16 => (5 | 4 | 3 | 0 => '1', others => '0'),
    32 => (22 | 2 | 1 | 0 => '1', others => '0')
    );
    
-- signal declarations
signal q_lfsr_4b_i : std_logic_vector(lfsr_width-1 downto 0);
signal nor_detect_0s: std_logic;
signal serial_in : std_logic;
signal feedback : std_logic;

signal N_bits : integer;
begin

    with width_select select
    N_bits<=4 when "00",
            8 when "01",
           16 when "10",
           32 when others;
------------------------------------------------------------
-- Process to get feedback XOR from the feedback equation --
    feedb_proc: process(q_lfsr_4b_i)
-- process local declarations
    constant tap_constant: std_logic_vector(max_width-1 downto 0):= feedback_equation(N_bits);
    variable tmp: std_logic;
    begin
        tmp := '0';
        bit_xor: for i in 0 to N_bits-1 loop
            tmp := tmp xor (q_lfsr_4b_i(i) and tap_constant(i));
        end loop bit_xor;
        feedback <= tmp;
    end process feedb_proc;
    -------------------------------------------------------------
    -------------------------------------------------------------
    -- Shifter Process
    lfsr_cnt_proc: process(rst, clk)
    
    begin

    if(rst= '1' ) then
        q_lfsr_4b_i <= initial_value;
    elsif (rising_edge(clk)) then
    -- shift operation: b3->b2, b2->b1, b1->b0
        shifter_loop: for i in N_bits downto 1 loop
            q_lfsr_4b_i(i-1) <= q_lfsr_4b_i(i);
        end loop shifter_loop;
        -- Serial Input to the b3 of the LFSR
            q_lfsr_4b_i(q_lfsr_4b_i'high) <= serial_in;
    end if;
    end process lfsr_cnt_proc;
    q_lfsr_4b <= q_lfsr_4b_i;

    serial_in <= feedback;

end architecture beh;


