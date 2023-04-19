
library ieee;
use ieee.std_logic_1164.all;

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
  
