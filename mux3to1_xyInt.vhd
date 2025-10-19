LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_Qx_X_Y_INT IS
	PORT (
		X, Y, INT : IN STD_LOGIC;
		sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		salida_mux : OUT STD_LOGIC
	);
END mux_Qx_X_Y_INT;

ARCHITECTURE Behavioral OF mux_Qx_X_Y_INT IS
	CONSTANT Qx : STD_LOGIC := '0';
BEGIN
	PROCESS (sel, X, Y, INT)
	BEGIN
		CASE sel IS
			WHEN "00" => salida_mux <= Qx; -- Qx fijo = 00
			WHEN "01" => salida_mux <= X; -- X
			WHEN "10" => salida_mux <= Y; -- Y
			WHEN "11" => salida_mux <= INT; -- INT
			WHEN OTHERS => salida_mux <= Qx;
		END CASE;
	END PROCESS;
END Behavioral;
