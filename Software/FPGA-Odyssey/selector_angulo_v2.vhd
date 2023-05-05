library IEEE;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity selector_angulo_v2 is
    Port ( selector : in  integer range 0 to 31;
           angle_out : out integer range 0 to 140
			 );
end selector_angulo_v2;

architecture arq of selector_angulo_v2 is

begin
			  
	angle_out <= (140/31)*selector;
				 
end arq;
