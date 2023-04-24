-- Quartus II VHDL Template
-- Four-State Moore State Machine

library ieee;
use ieee.std_logic_1164.all;

entity RX is

	port(
		clk		 : in	std_logic;
		data	 : in	std_logic;
		reset	 : in	std_logic;
		data_recb	 : out	std_logic_vector(7 downto 0);
		recibiendo : out std_logic;
		recibido : out std_logic
	);

end entity;

architecture comportamiento of RX is

	-- Enumeracion de estados
	type state_type is (alaespera, recb, datolisto);

	-- Estado actual
	signal state   : state_type;
	
	-- variable para contar el numero de datos que han entrado
	signal cuenta : integer :=0;
	shared variable buffer_RX : std_logic_vector(7 downto 0) := "00000000";

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= alaespera;
		elsif (rising_edge(clk)) then
			case state is
				when alaespera=>
					if data = '1' then
						state <= alaespera;
					else
						state <= recb;
					end if;
				when recb=>
					cuenta <= cuenta+1;
					if cuenta>9 then
						cuenta <=0;
						state <= datolisto;
					else
						state <= recb;
					end if;
				when datolisto=>
					cuenta<=cuenta+1;
					if cuenta>=2 and data = '1' then
						cuenta<=0;
						state <= alaespera;
					else
						state <= datolisto;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (clk, state)
	begin
		case state is
			when alaespera =>
				recibiendo <= '0';
			when recb =>
				if cuenta<8 then
					recibido <= '0';
					recibiendo <= '1';
					buffer_RX(cuenta) := data;
				end if;
			when datolisto =>
				recibido <= '1';
				recibiendo <= '0';
				data_recb <= not(buffer_RX);
		end case;
	end process;

end comportamiento;
