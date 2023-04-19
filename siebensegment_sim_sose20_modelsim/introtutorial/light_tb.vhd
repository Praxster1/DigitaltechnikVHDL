-------------------------------------------------------------------------------
-- Title      : Testbench for design "light"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : light_tb.vhd
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
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity light_tb is

end entity light_tb;

-------------------------------------------------------------------------------

architecture tb of light_tb is

  component light is
    port (
      sw    : in  std_ulogic_vector(1 downto 0);
      ledg0 : out std_ulogic;
      ledr0 : out std_ulogic);
  end component light;
  
  -- component ports
  signal sw    : std_ulogic_vector(1 downto 0);
  signal ledg0 : std_ulogic;
  signal ledr0 : std_ulogic;

begin  -- architecture tb

  -- component instantiation
  DUT: light
    port map (
      sw    => sw,
      ledg0 => ledg0,
      ledr0 => ledr0);


  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here
    sw <= (others => '0');
    wait for 10 ns;
    -- check correct behaviour of sw="00"
    assert ledg0 = '0' report "ledg0 should be 0" severity error;
    assert ledr0 = '1' report "ledr0 should be 0" severity error;
    ---------------------------------------------------------------------------
    sw <= (others => '1');
    wait for 10 ns;
    -- check correct behaviour of sw="00"
    assert ledg0 = '0' report "ledg0 should be 0" severity error;
    assert ledr0 = '1' report "ledr0 should be 0" severity error;
    ---------------------------------------------------------------------------
    sw <= "01";
    wait for 10 ns;
    -- check correct behaviour of sw="00"
    assert ledg0 = '1' report "ledg0 should be 0" severity error;
    assert ledr0 = '0' report "ledr0 should be 0" severity error;
    ---------------------------------------------------------------------------
    sw <= "10";
    wait for 10 ns;
    -- check correct behaviour of sw="00"
    assert ledg0 = '1' report "ledg0 should be 0" severity error;
    assert ledr0 = '0' report "ledr0 should be 0" severity error;
    ---------------------------------------------------------------------------
    wait;  				-- without this wate statement, the
					-- process would be reinvoked endlessly
  end process WaveGen_Proc;

  

end architecture tb;

-------------------------------------------------------------------------------

configuration light_tb_tb_cfg of light_tb is
  for tb
  end for;
end light_tb_tb_cfg;

-------------------------------------------------------------------------------
