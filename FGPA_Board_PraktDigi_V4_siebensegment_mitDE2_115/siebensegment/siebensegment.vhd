-- insert entity siebensegment here:
-- ports: sw   - input  of type std_ulogic_vector(aa downto 0)
-- 7-segment-display-units:
--        hex0 - output of type std_ulogic_vector(? downto 0)
--        hex1 - output of type std_ulogic_vector(? downto 0)
--        hex2 - output of type std_ulogic_vector(? downto 0)
--        hex3 - output of type std_ulogic_vector(? downto 0)
--        hex4 - output of type std_ulogic_vector(? downto 0)
--        hex5 - output of type std_ulogic_vector(? downto 0)
--        hex6 - output of type std_ulogic_vector(? downto 0)
--        hex7 - output of type std_ulogic_vector(? downto 0)
--        ledg - output of type std_ulogic_vector(? downto 0) -- 7 LEDs for debugging
-- insert architecture behind entity:
-- in architecture header insert component declarations and signal declarations
-- hints for component declaration:
-- 1. position the cursor into the corresponding entity (same emacs-editor-window)
-- 2. select VHDL->Port->Copy
-- 3. select VHDL->Port->Paste As Component (resp. Instance below)
-- 4. For inserted Instance addapt the signal mappings

-- in architecture body (between begin and end):
-- instantiation of one_digit
-- consider that hex-output-signals... are low active
-- unused hex-ports shall be turned off (hint: use hex7 <= (others => ...)

library ieee;
use ieee.std_logic_1164.all;

entity siebensegment is
  port (
    -- 4x4 bit input -> Mapped to hex0 to hex3 in arch
    sw : in std_ulogic_vector(15 downto 0);
    -- 7 bit output displaying sw(3 downto 0)
    ledg : out std_ulogic_vector(6 downto 0);

    -- Outputs for the hardware displays
    hex0 : out std_ulogic_vector(6 downto 0);
    hex1 : out std_ulogic_vector(6 downto 0);
    hex2 : out std_ulogic_vector(6 downto 0);
    hex3 : out std_ulogic_vector(6 downto 0);

    -- not in use
    hex4 : out std_ulogic_vector(6 downto 0);
    hex5 : out std_ulogic_vector(6 downto 0);
    hex6 : out std_ulogic_vector(6 downto 0);
    hex7 : out std_ulogic_vector(6 downto 0)
  );
end entity;
architecture struc of siebensegment is
  component one_digit is
    port(
      switch_i: in std_ulogic_vector(3 downto 0);
      segm_o: out std_ulogic_vector(6 downto 0)
    );
  end component;

  signal lowactive_out0 : std_ulogic_vector(6 downto 0);
  signal lowactive_out1 : std_ulogic_vector(6 downto 0);
  signal lowactive_out2 : std_ulogic_vector(6 downto 0);
  signal lowactive_out3 : std_ulogic_vector(6 downto 0);
begin
  -- Instance 1 connected with sw[3:0], hex0 and ledg[6:0] 
  digit0 : work.one_digit
    port map(
      switch_i => sw(3 downto 0),
      segm_o => lowactive_out0
    );

  digit1 : work.one_digit
      port map (
        switch_i => sw(7 downto 4),
        segm_o => lowactive_out1
      );
  digit2 : work.one_digit
      port map (
        switch_i => sw(11 downto 8),
        segm_o => lowactive_out2
      );

  digit3 : work.one_digit 
      port map (
        switch_i => sw(15 downto 12),
        segm_o => lowactive_out3
      );

  -- Debug segments
  
  ledg <= not lowactive_out0;
  -- lowactive hex 0 to 3 set to output of individual one_digit component
  hex0 <= not lowactive_out0;
  --hex1 <= not lowactive_out1;
  --hex2 <= not lowactive_out2;
  --hex3 <= not lowactive_out3;

  hex1 <= (others => '1');
  hex2 <= (others => '1');
  hex3 <= (others => '1');
  -- Lowactive hex 4,5,6,7 not in use
  hex4 <= (others => '1');
  hex5 <= (others => '1');
  hex6 <= (others => '1');
  hex7 <= (others => '1');
end architecture;