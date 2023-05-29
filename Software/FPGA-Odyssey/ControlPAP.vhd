-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlPAP is

	generic
	(
		MAX_COUNT : natural := 5000000
	);

	port
	(
		clk	: in std_logic;
		direccion : in std_logic;
		enable : in std_logic;
		reset : in std_logic;
		
		step		  : out std_logic := '1';
		dir : out std_logic := '1';
		en : out std_logic := '1'
	);

end entity;

architecture comportamiento of ControlPAP is	

signal bffer_clk : std_logic := '0';
signal cnt : natural := 0; -- IMPORTANTE QUE PARTA DE 0
	
begin
	
	-- Generacion de STEP + Divisor de frecuencia (en principio, siempre la misma)
	prescaler: process(clk,bffer_clk,cnt)
	begin
		if rising_edge(clk) then -- cada flanco de reloj contamos hasta saturar
			cnt <= cnt+1;
			if cnt >= MAX_COUNT then
				bffer_clk <= not(bffer_clk);
				cnt <= 0;
			end if;	
			step <= bffer_clk; -- SALIDA STEP
		end if;
	end process;
	
	reseteo: process(reset)
	begin
		if reset = '0' then
			-- SALIDA ENABLE
			en <= '1';
			-- SALIDA DIR
			dir <= '1';
		else
			-- SALIDA ENABLE
			en <= enable;
			-- SALIDA DIR
			dir <= direccion;
		end if;
	end process;

end comportamiento;
