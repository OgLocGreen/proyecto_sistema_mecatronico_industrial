library IEEE;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity PWM is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pwm : out  STD_LOGIC;
           angle : in  integer range 0 to 140
			  );
end PWM;

architecture arq of PWM is
    signal count : integer range 0 to 20000;
    signal duty_cycle : integer;
begin
    process(clk, reset)
    begin
		  duty_cycle <= angle*11+750; --calculo del duty
		  
        if(reset = '0') then
            count <= 0;
            duty_cycle <= 0;
            pwm <= '0';
				
        elsif(rising_edge(clk)) then
				count <= count + 1;
				
            if(count <= duty_cycle) then
                pwm <= '1';
				elsif (count > duty_cycle) then
					 pwm <= '0';
				end if;
				
            if(count = 20000) then
                count <= 0;   
            end if;
				
			end if;
    end process;
end arq;
