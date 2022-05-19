library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
------------------------------------------------------------------
 -- Package --
------------------------------------------------------------------
package array_of_std_logic_type is
    constant COLS : integer := 8;
    constant ROWS : integer := 8;
    type std_logic_vector_array is array (0 to ROWS-1) of std_logic_vector(COLS-1 downto 0);
    type generic_array is array (0 to 7) of std_logic_vector(7 downto 0);
end package array_of_std_logic_type;

package body array_of_std_logic_type is

end package body;