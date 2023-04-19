
library ieee;
use ieee.std_logic_1164.all;

-- insert entity for one_digit here:
-- ports: switch_i - input  of type std_ulogic_vector(? downto 0)
--        segm_o   - output of type std_ulogic_vector(? downto 0)

-- purpose decode the following:
--    0         ___
--  5   1      |   |
--    6         ___
--  4   2      |   |
--    3         ___
-- switch_i       HEX     segment_hiactive_s
-- "0000"         0       "0111111"
-- "0001"         1       "       "
-- "0010"         2       "       "
-- "0011"         3       "       "
-- "0100"         4       "       "
-- "0101"         5       "       "
-- "0110"         6       "       "
-- "0111"         7       "       "
-- "1000"         8       "       "
-- "1001"         9       "       "
-- "1010"         A       "       "
-- "1011"         b       "       "
-- "1100"         c       "       "
-- "1101"         d       "       "
-- "1110"         E       "       "
-- "1111"         F       "       "

-- insert architecture for one_digit here
-- hints:
-- 1. type architecture + blank in emacs: emacs will guide you through the rest
-- 2. define required signals (remember: output-ports cannot be read...)
--    (remark: signals are defined between 1st architecture line and begin)
-- 3. add a process in the architecture body (type process + blank...)
--    (do you need a combinatorical or a sequential process?)
-- 4. add a case-statement inside the process (type case ...; for the
--    expression you can use the signal, for which the different combinations
--    have to be mutiplexed to different settings of the 7 segments)
--    (remark: default refers to all undefined statements - remember
--             std_ulogic is 9-value logic)
-- 5. add all above combinations ( when "0000" => segment_hiactive_s<="0111111"; )
--    (remark: you can first add 16 lines with just
--             when => segment_hiactive_s<="";
--     use copy&paste and in the next step use the emacs capabilities to
--     copy&paste rectangular text (CTRL-x, r, k + CTRL-x, r, y)
-- 6. make sure, that all output ports are driven by VHDL signal assignments



