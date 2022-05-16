-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue May 10 21:57:39 2022
-- Host        : DESKTOP-TV2T1SG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteD/lab1_parteD.sim/sim_1/synth/func/xsim/testbench_parteD_func_synth.vhd
-- Design      : LFSR_Nbits
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LFSR_Nbits is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    width_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    q_lfsr_N_bits : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of LFSR_Nbits : entity is true;
  attribute lfsr_width : integer;
  attribute lfsr_width of LFSR_Nbits : entity is 4;
  attribute max_width : integer;
  attribute max_width of LFSR_Nbits : entity is 32;
end LFSR_Nbits;

architecture STRUCTURE of LFSR_Nbits is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal p_30_out : STD_LOGIC_VECTOR ( 31 to 31 );
  signal q_lfsr_N_bits_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \q_lfsr_N_bits_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \q_lfsr_N_bits_i[7]_i_1_n_0\ : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal width_select_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\q_lfsr_N_bits_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(0),
      O => q_lfsr_N_bits(0)
    );
\q_lfsr_N_bits_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(10),
      O => q_lfsr_N_bits(10)
    );
\q_lfsr_N_bits_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(11),
      O => q_lfsr_N_bits(11)
    );
\q_lfsr_N_bits_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(12),
      O => q_lfsr_N_bits(12)
    );
\q_lfsr_N_bits_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(13),
      O => q_lfsr_N_bits(13)
    );
\q_lfsr_N_bits_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(14),
      O => q_lfsr_N_bits(14)
    );
\q_lfsr_N_bits_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(15),
      O => q_lfsr_N_bits(15)
    );
\q_lfsr_N_bits_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(16),
      O => q_lfsr_N_bits(16)
    );
\q_lfsr_N_bits_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(17),
      O => q_lfsr_N_bits(17)
    );
\q_lfsr_N_bits_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(18),
      O => q_lfsr_N_bits(18)
    );
\q_lfsr_N_bits_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(19),
      O => q_lfsr_N_bits(19)
    );
\q_lfsr_N_bits_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(1),
      O => q_lfsr_N_bits(1)
    );
\q_lfsr_N_bits_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(20),
      O => q_lfsr_N_bits(20)
    );
\q_lfsr_N_bits_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(21),
      O => q_lfsr_N_bits(21)
    );
\q_lfsr_N_bits_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(22),
      O => q_lfsr_N_bits(22)
    );
\q_lfsr_N_bits_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(23),
      O => q_lfsr_N_bits(23)
    );
\q_lfsr_N_bits_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(24),
      O => q_lfsr_N_bits(24)
    );
\q_lfsr_N_bits_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(25),
      O => q_lfsr_N_bits(25)
    );
\q_lfsr_N_bits_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(26),
      O => q_lfsr_N_bits(26)
    );
\q_lfsr_N_bits_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(27),
      O => q_lfsr_N_bits(27)
    );
\q_lfsr_N_bits_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(28),
      O => q_lfsr_N_bits(28)
    );
\q_lfsr_N_bits_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(29),
      O => q_lfsr_N_bits(29)
    );
\q_lfsr_N_bits_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(2),
      O => q_lfsr_N_bits(2)
    );
\q_lfsr_N_bits_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(30),
      O => q_lfsr_N_bits(30)
    );
\q_lfsr_N_bits_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(31),
      O => q_lfsr_N_bits(31)
    );
\q_lfsr_N_bits_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(3),
      O => q_lfsr_N_bits(3)
    );
\q_lfsr_N_bits_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(4),
      O => q_lfsr_N_bits(4)
    );
\q_lfsr_N_bits_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(5),
      O => q_lfsr_N_bits(5)
    );
\q_lfsr_N_bits_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(6),
      O => q_lfsr_N_bits(6)
    );
\q_lfsr_N_bits_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(7),
      O => q_lfsr_N_bits(7)
    );
\q_lfsr_N_bits_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(8),
      O => q_lfsr_N_bits(8)
    );
\q_lfsr_N_bits_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_lfsr_N_bits_OBUF(9),
      O => q_lfsr_N_bits(9)
    );
\q_lfsr_N_bits_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => q_lfsr_N_bits_OBUF(16),
      I1 => width_select_IBUF(0),
      I2 => q_lfsr_N_bits_OBUF(5),
      I3 => q_lfsr_N_bits_OBUF(0),
      I4 => q_lfsr_N_bits_OBUF(3),
      I5 => q_lfsr_N_bits_OBUF(4),
      O => \p_1_in__0\(15)
    );
\q_lfsr_N_bits_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => width_select_IBUF(0),
      I1 => width_select_IBUF(1),
      O => \q_lfsr_N_bits_i[31]_i_1_n_0\
    );
\q_lfsr_N_bits_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => q_lfsr_N_bits_OBUF(22),
      I1 => q_lfsr_N_bits_OBUF(1),
      I2 => q_lfsr_N_bits_OBUF(0),
      I3 => q_lfsr_N_bits_OBUF(2),
      O => p_30_out(31)
    );
\q_lfsr_N_bits_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8CDCDC8"
    )
        port map (
      I0 => width_select_IBUF(0),
      I1 => q_lfsr_N_bits_OBUF(4),
      I2 => width_select_IBUF(1),
      I3 => q_lfsr_N_bits_OBUF(1),
      I4 => q_lfsr_N_bits_OBUF(0),
      O => \p_1_in__0\(3)
    );
\q_lfsr_N_bits_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => width_select_IBUF(1),
      I1 => width_select_IBUF(0),
      O => \q_lfsr_N_bits_i[7]_i_1_n_0\
    );
\q_lfsr_N_bits_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => q_lfsr_N_bits_OBUF(8),
      I1 => width_select_IBUF(1),
      I2 => q_lfsr_N_bits_OBUF(2),
      I3 => q_lfsr_N_bits_OBUF(0),
      I4 => q_lfsr_N_bits_OBUF(3),
      I5 => q_lfsr_N_bits_OBUF(4),
      O => \p_1_in__0\(7)
    );
\q_lfsr_N_bits_i_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => q_lfsr_N_bits_OBUF(1),
      PRE => rst_IBUF,
      Q => q_lfsr_N_bits_OBUF(0)
    );
\q_lfsr_N_bits_i_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(11),
      Q => q_lfsr_N_bits_OBUF(10)
    );
\q_lfsr_N_bits_i_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(12),
      Q => q_lfsr_N_bits_OBUF(11)
    );
\q_lfsr_N_bits_i_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(13),
      Q => q_lfsr_N_bits_OBUF(12)
    );
\q_lfsr_N_bits_i_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(14),
      Q => q_lfsr_N_bits_OBUF(13)
    );
\q_lfsr_N_bits_i_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(15),
      Q => q_lfsr_N_bits_OBUF(14)
    );
\q_lfsr_N_bits_i_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => \p_1_in__0\(15),
      Q => q_lfsr_N_bits_OBUF(15)
    );
\q_lfsr_N_bits_i_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(17),
      Q => q_lfsr_N_bits_OBUF(16)
    );
\q_lfsr_N_bits_i_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(18),
      Q => q_lfsr_N_bits_OBUF(17)
    );
\q_lfsr_N_bits_i_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(19),
      Q => q_lfsr_N_bits_OBUF(18)
    );
\q_lfsr_N_bits_i_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(20),
      Q => q_lfsr_N_bits_OBUF(19)
    );
\q_lfsr_N_bits_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(2),
      Q => q_lfsr_N_bits_OBUF(1)
    );
\q_lfsr_N_bits_i_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(21),
      Q => q_lfsr_N_bits_OBUF(20)
    );
\q_lfsr_N_bits_i_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(22),
      Q => q_lfsr_N_bits_OBUF(21)
    );
\q_lfsr_N_bits_i_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(23),
      Q => q_lfsr_N_bits_OBUF(22)
    );
\q_lfsr_N_bits_i_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(24),
      Q => q_lfsr_N_bits_OBUF(23)
    );
\q_lfsr_N_bits_i_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(25),
      Q => q_lfsr_N_bits_OBUF(24)
    );
\q_lfsr_N_bits_i_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(26),
      Q => q_lfsr_N_bits_OBUF(25)
    );
\q_lfsr_N_bits_i_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(27),
      Q => q_lfsr_N_bits_OBUF(26)
    );
\q_lfsr_N_bits_i_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(28),
      Q => q_lfsr_N_bits_OBUF(27)
    );
\q_lfsr_N_bits_i_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(29),
      Q => q_lfsr_N_bits_OBUF(28)
    );
\q_lfsr_N_bits_i_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(30),
      Q => q_lfsr_N_bits_OBUF(29)
    );
\q_lfsr_N_bits_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(3),
      Q => q_lfsr_N_bits_OBUF(2)
    );
\q_lfsr_N_bits_i_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(31),
      Q => q_lfsr_N_bits_OBUF(30)
    );
\q_lfsr_N_bits_i_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[31]_i_1_n_0\,
      CLR => rst_IBUF,
      D => p_30_out(31),
      Q => q_lfsr_N_bits_OBUF(31)
    );
\q_lfsr_N_bits_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \p_1_in__0\(3),
      Q => q_lfsr_N_bits_OBUF(3)
    );
\q_lfsr_N_bits_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[7]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(5),
      Q => q_lfsr_N_bits_OBUF(4)
    );
\q_lfsr_N_bits_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[7]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(6),
      Q => q_lfsr_N_bits_OBUF(5)
    );
\q_lfsr_N_bits_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[7]_i_1_n_0\,
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(7),
      Q => q_lfsr_N_bits_OBUF(6)
    );
\q_lfsr_N_bits_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \q_lfsr_N_bits_i[7]_i_1_n_0\,
      CLR => rst_IBUF,
      D => \p_1_in__0\(7),
      Q => q_lfsr_N_bits_OBUF(7)
    );
\q_lfsr_N_bits_i_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(9),
      Q => q_lfsr_N_bits_OBUF(8)
    );
\q_lfsr_N_bits_i_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => width_select_IBUF(1),
      CLR => rst_IBUF,
      D => q_lfsr_N_bits_OBUF(10),
      Q => q_lfsr_N_bits_OBUF(9)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\width_select_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => width_select(0),
      O => width_select_IBUF(0)
    );
\width_select_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => width_select(1),
      O => width_select_IBUF(1)
    );
end STRUCTURE;
