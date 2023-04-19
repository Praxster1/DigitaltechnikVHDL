-------------------------------------------------------------------------------
-- Title      : Testbench for design "one_digit"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : one_digit_tb.vhd
-- Author     :   <DirkRabe@DESKTOP-M34Q0CQ>
-- Company    : 
-- Created    : 2020-04-26
-- Last update: 2020-04-26
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-04-26  1.0      DirkRabe	Created
-------------------------------------------------------------------------------

library ieee;
library work_tb_hide;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity one_digit_tb is

end entity one_digit_tb;

-------------------------------------------------------------------------------

architecture tb1 of one_digit_tb is

  -- component ports
  signal switch_s : std_ulogic_vector(3 downto 0);
  signal segm_s	  : std_ulogic_vector(6 downto 0);

  component one_digit is
    port (
      switch_i : in  std_ulogic_vector(3 downto 0);
      segm_o   : out std_ulogic_vector(6 downto 0));
  end component one_digit;

  component one_digit_tb_hide is
    generic (
      verbose_level_g : integer);
    port (
      switch_o : out std_ulogic_vector(3 downto 0);
      segm_i   : in  std_ulogic_vector(6 downto 0));
  end component one_digit_tb_hide;

begin  -- architecture tb1

  -- component instantiation
  DUT: one_digit
    port map (
      switch_i => switch_s,
      segm_o   => segm_s);

  one_digit_tb_hide_1: one_digit_tb_hide
    generic map (
      verbose_level_g => 1)   -- use this line for full verbose output
--	verbose_level_g => 0) -- use this line for less verbose output
    port map (
      switch_o => switch_s,
      segm_i   => segm_s);
  

end architecture tb1;

-------------------------------------------------------------------------------

configuration one_digit_tb_tb1_cfg of one_digit_tb is
  for tb1
  end for;
end one_digit_tb_tb1_cfg;

-------------------------------------------------------------------------------
