-------------------------------------------------------------------------------
-- Title      : Testbench for design "siebensegment"
-- Project    : 
-------------------------------------------------------------------------------
-- File	      : siebensegment_tb.vhd
-- Author     :	  <dirk@DIRK-LAPPYFH>
-- Company    : 
-- Created    : 2014-10-23
-- Last update: 2020-04-26
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2014 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date	       Version	Author	Description
-- 2014-10-23  1.0	dirk	Created
-------------------------------------------------------------------------------

library ieee;
library work_tb_hide;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity siebensegment_tb is

end entity siebensegment_tb;

-------------------------------------------------------------------------------
architecture beh of siebensegment_tb is
  component siebensegment is
    port (
      sw   : in	 std_ulogic_vector(15 downto 0);
      hex0 : out std_ulogic_vector(6 downto 0);
      hex1 : out std_ulogic_vector(6 downto 0);
      hex2 : out std_ulogic_vector(6 downto 0);
      hex3 : out std_ulogic_vector(6 downto 0);
      hex4 : out std_ulogic_vector(6 downto 0);
      hex5 : out std_ulogic_vector(6 downto 0);
      hex6 : out std_ulogic_vector(6 downto 0);
      hex7 : out std_ulogic_vector(6 downto 0);
      ledg : out std_ulogic_vector(6 downto 0));
  end component siebensegment;
  component siebensegment_tb_hide is
    generic (
      verbose_level_g : integer);
    port (
      sw   : out std_ulogic_vector(15 downto 0);
      hex0 : in	 std_ulogic_vector(6 downto 0);
      hex1 : in	 std_ulogic_vector(6 downto 0);
      hex2 : in	 std_ulogic_vector(6 downto 0);
      hex3 : in	 std_ulogic_vector(6 downto 0);
      hex4 : in	 std_ulogic_vector(6 downto 0);
      hex5 : in	 std_ulogic_vector(6 downto 0);
      hex6 : in	 std_ulogic_vector(6 downto 0);
      hex7 : in	 std_ulogic_vector(6 downto 0);
      ledg : in	 std_ulogic_vector(6 downto 0));
  end component siebensegment_tb_hide;

  signal sw   : std_ulogic_vector(15 downto 0);
  signal hex0 : std_ulogic_vector(6 downto 0);
  signal hex1 : std_ulogic_vector(6 downto 0);
  signal hex2 : std_ulogic_vector(6 downto 0);
  signal hex3 : std_ulogic_vector(6 downto 0);
  signal hex4 : std_ulogic_vector(6 downto 0);
  signal hex5 : std_ulogic_vector(6 downto 0);
  signal hex6 : std_ulogic_vector(6 downto 0);
  signal hex7 : std_ulogic_vector(6 downto 0);
  signal ledg : std_ulogic_vector(6 downto 0);

begin  -- architecture beh
  siebensegment_1 : siebensegment
    port map (
      sw   => sw,
      hex0 => hex0,
      hex1 => hex1,
      hex2 => hex2,
      hex3 => hex3,
      hex4 => hex4,
      hex5 => hex5,
      hex6 => hex6,
      hex7 => hex7,
      ledg => ledg);

  siebensegment_tb_hide_1 : siebensegment_tb_hide
    generic map (
      verbose_level_g => 1)   -- use this line for full verbose output
--	verbose_level_g => 0) -- use this line for less verbose output
    port map (
      sw   => sw,
      hex0 => hex0,
      hex1 => hex1,
      hex2 => hex2,
      hex3 => hex3,
      hex4 => hex4,
      hex5 => hex5,
      hex6 => hex6,
      hex7 => hex7,
      ledg => ledg);

end architecture beh;
