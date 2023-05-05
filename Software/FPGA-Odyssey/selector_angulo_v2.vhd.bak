library IEEE;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity selector_angulo is
    Port ( pin_ang : in  std_logic;
           angle_out : out integer range 0 to 140
			 );
end selector_angulo;

architecture arq of selector_angulo is

begin
		 process(pin_ang)
		 
		 variable selected_angle : integer range 0 to 140 :=0; 
		 
		 begin
		 
				 if (pin_ang = '1') then
					selected_angle := 0;
				 else
					selected_angle := 140;
				 end if;
			  
				 angle_out <= selected_angle;
				 
		 end process;
end arq;
