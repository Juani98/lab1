library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
------------------------------------------------------------------
 -- Enitiy --
------------------------------------------------------------------
entity testbench_parteD is
    generic(
        max_width : integer :=32
        );
end testbench_parteD;
------------------------------------------------------------------
 -- Architecture --
------------------------------------------------------------------
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
    constant clk_period: time :=  15 ns;
begin
      UUT_1: LFSR_Nbits port map (
        rst => tb_reset,
        clk => tb_clock,
        width_select => tb_width_select,
        q_lfsr_N_bits => tb_q_lfsr_N_bits
    );
    --clock 
    tb_clock <= not(tb_clock) after clk_period; --Tclk=30nS

    process
    begin
               
 ------------------------------------------------------------------
 -- Descripción: Ejecuta el LFSR de 4, 8, 16 y 32bits
 --              Los primeros 470nS el de 4bits completa un ciclo
 --              a 8140nS de la simulación el de 8bits completa un ciclo
 --              a 1,97421 mS el de 16bits completa un ciclo
 --              a 128,8490189 Segundos el de 32bits completa un ciclo
 -- Observacion: Ejecutar la simulación por 130 segundos
------------------------------------------------------------------        
        tb_width_select <= "00";  --seleccion de ancho LFSR 4bits
        --Aplico reset
        wait for 10 ns;
        tb_reset <= '1';
        wait for 10 ns;
        tb_reset <= '0';
        wait for 450 ns;
        --Espero 30nS*15ciclos = 450nS se debe repetir la secuencia           
        -- En simulación será a los 450ns + 20nS = 470nS      
         
        tb_width_select <= "01"; --seleccion de ancho LFSR 8bits
        --Aplico reset
        wait for 10 ns;
        tb_reset <= '1';
        wait for 10 ns;
        tb_reset <= '0';
        wait for 7650 ns;
        --Espero 30nS*255ciclos = 7650nS se debe repetir la secuencia  
        -- En simulación será a los  470nS  + 20nS + 7650 nS = 8140nS  
         
        tb_width_select <= "10"; --seleccion de ancho LFSR 16bits
        --Aplico reset
        wait for 10 ns;
        tb_reset <= '1';
        wait for 10 ns;
        tb_reset <= '0';
        wait for 1966050 ns;
        --Espero 30nS*65535ciclos = 1966050nS desde que se aplicó reset se debe repetir la secuencia
        -- En simulación será a los 8140nS +20nS+ 1966050nS= 1974210 nS = 1,97421 mS 
    
        tb_width_select <= "11"; --seleccion de ancho LFSR 32bits
        --Aplico reset
        wait for 10 ns;
        tb_reset <= '1';
        wait for 10 ns;
        tb_reset <= '0';
        wait for 128850.9931 ms;
        --Espero 30nS*4294967295ciclos = 128,8490189 Segundos desde que se aplicó reset se debe repetir la secuencia
        -- En simulación será a los 1,97421 mS +20nS+ 128,8490189 Seg = 128,8509931 segundos
        wait;
    end process;
end Behavioral;
