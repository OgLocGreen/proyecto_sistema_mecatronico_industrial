-- Quartus Prime VHDL Template
-- Four-State Mealy State Machine

-- A Mealy machine has outputs that depend on both the state and
-- the inputs.	When the inputs change, the outputs are updated
-- immediately, without waiting for a clock edge.  The outputs
-- can be written more than once per state or per clock cycle.

library ieee;
use ieee.std_logic_1164.all;

entity SerialReciever is

	port
	(
		dato : in	std_logic_vector(7 downto 0);
		dir	 : out	std_logic;
		paro : out std_logic;
		selector_ang : out std_logic
	);

end entity;

architecture comportamiento of SerialReciever is

begin

process(dato) is
begin
	case dato is
		when "01100001" => -- LETRA a (minusc)
			dir <= '1';
			paro <= '0';
			selector_ang <= '1';
		when "01110011" =>  --LETRA s (minusc)
			dir <= '0';
			paro <= '0';
			selector_ang <= '0';
		when others =>
			dir <= '0';
			paro <= '1';
	end case;
end process;

end comportamiento;