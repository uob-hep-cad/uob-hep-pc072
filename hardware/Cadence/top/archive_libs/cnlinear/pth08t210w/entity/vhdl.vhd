-- generated by newgenasym Tue Feb 07 15:31:37 2023

library ieee;
use     ieee.std_logic_1164.all;
use     work.all;
entity PTH08T210W is
    port (    
	GND:       IN     STD_LOGIC_VECTOR (3 DOWNTO 0);    
	SENSM:     IN     STD_LOGIC;    
	SENSP:     IN     STD_LOGIC;    
	TRACK:     INOUT  STD_LOGIC;    
	TURBOTRANS: IN     STD_LOGIC;    
	UVLO:      OUT    STD_LOGIC;    
	VADJ:      INOUT  STD_LOGIC;    
	VI:        IN     STD_LOGIC_VECTOR (1 DOWNTO 0);    
	VO:        IN     STD_LOGIC_VECTOR (1 DOWNTO 0));
end PTH08T210W;