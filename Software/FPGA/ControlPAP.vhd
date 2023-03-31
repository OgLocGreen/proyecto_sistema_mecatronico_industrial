-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlPAP is

	generic
	(
		MAX_COUNT : integer := 5000000
	);

	port
	(
		clk	: in std_logic;
		reset	  : in std_logic;
		direccion : in std_logic;
		step		  : out std_logic;
		dir : out std_logic
	);

end entity;

architecture comportamiento of ControlPAP is

begin
	
	-- Generacion de STEP + Divisor de frecuencia (en principio, siempre la misma)
	prescaler: process(clk,reset)
	variable cnt : integer := 0; -- IMPORTANTE QUE PARTA DE 0
	variable bffer_clk : std_logic := '1';
	begin
	
		if reset = '0' then -- RESET 1 es STEP ACTIVO, RESET 0 es DESACTIVADO
			step <= '1';
		elsif rising_edge(clk) then -- cada flanco de reloj contamos hasta saturar
				cnt := cnt+1;
				if cnt <= MAX_COUNT then
					bffer_clk := '0';
				elsif (cnt > MAX_COUNT) and (cnt < (2*MAX_COUNT)) then
					bffer_clk := '1';
				elsif (cnt >= 2*MAX_COUNT) then
					cnt := 0;
				end if;
				step <= bffer_clk;
		end if;
		
	end process;
	
	-- Generacion DIR
	dirsignalprocess:	process (direccion)
	variable valor_dir : std_logic;
	begin
		valor_dir := direccion;
		dir <= valor_dir;
	end process;

end comportamiento;
