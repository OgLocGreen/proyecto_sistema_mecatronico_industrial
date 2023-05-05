-- Quartus Prime VHDL Template
-- Four-State Mealy State Machine

-- A Mealy machine has outputs that depend on both the state and
-- the inputs.	When the inputs change, the outputs are updated
-- immediately, without waiting for a clock edge.  The outputs
-- can be written more than once per state or per clock cycle.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SerialReciever_v2 is

	port
	(
		dato : in	std_logic_vector(7 downto 0);
		dir	 : out	std_logic := '0';
		paro : out std_logic := '1';
		selector_ang : out natural range 0 to 31
	);

end entity;

architecture comportamiento of SerialReciever_v2 is

signal scissor_instr : std_logic_vector(1 downto 0) := "10";
signal servo_instr : std_logic_vector(4 downto 0) := "00111";

begin

process(dato) is
begin
	scissor_instr <= dato(7 downto 6);
	servo_instr <= dato(4 downto 0);
end process;

process(scissor_instr) is
begin
case scissor_instr is
	when "00" =>
		dir <= '0';
		paro <= '0';
	when "10" =>
		dir <= '1';
		paro <= '0';
	when others =>
		paro <= '1';
end case;
end process;

selector_ang <= to_integer(unsigned(servo_instr));

end comportamiento;
