-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PLL_sacaValorLeds is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 1840000
	);

	port
	(
		clk		  : in std_logic;
		reset	  : in std_logic;
		
		dataIn : in std_logic_vector(7 downto 0);
		dataOut : out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of PLL_sacaValorLeds is
begin

	process (clk)
		variable   cnt		   : integer range MIN_COUNT to MAX_COUNT;
		
	begin
		if (rising_edge(clk)) then

			if reset = '1' then
				-- Reset the counter to 0
				cnt := 0;
			else
				-- Increment the counter if counting is enabled			   
				cnt := cnt + 1;
			end if;
		end if;

		-- Output the current count
		if cnt = MAX_COUNT then
			dataOut <= dataIn;
		end if;
		
	end process;

end rtl;
