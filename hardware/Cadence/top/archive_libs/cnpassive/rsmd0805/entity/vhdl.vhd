-- generated by newgenasym Fri Oct 05 15:58:47 2007

library ieee;
use     ieee.std_logic_1164.all;
use     work.all;
entity RSMD0805 is
    generic (
        size:positive:= 1
            );
    port (    
	A:         INOUT  STD_LOGIC_VECTOR (size-1 DOWNTO 0);    
	B:         INOUT  STD_LOGIC_VECTOR (size-1 DOWNTO 0));
end RSMD0805;