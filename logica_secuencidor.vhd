LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY logica_secuenciador IS
	PORT (
		CC : IN std_logic;
		Ins : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		selector : OUT std_logic;
		PL_liga : OUT std_logic;
		MAP_transf : OUT std_logic;
		VECT_int : OUT std_logic
	);
END logica_secuenciador;

ARCHITECTURE Behavioral OF logica_secuenciador IS
BEGIN
	PROCESS (Ins, CC)
	BEGIN
		selector <= '0';
		PL_liga <= '1';
		MAP_transf <= '1';
		VECT_int <= '1';
 

		CASE Ins IS
			WHEN "00" => 
				NULL; -- Usamos los valores por default
 
			WHEN "01" => 
				IF CC = '0' THEN
					selector <= '1'; -- Salto Condicional: Y=D
					PL_liga <= '0';
					-- MAP y VECT se quedan en 1
				END IF;
 
			WHEN "10" => -- Salto de transformación: Y=D, Activamos MAP
				selector <= '1';
				MAP_transf <= '0';
 
			WHEN OTHERS => -- 11 Salto condicional de interrupción: Y=D
				IF CC = '0' THEN
					selector <= '1';
					VECT_int <= '0';
				END IF;
		END CASE;
	END PROCESS;
END ARCHITECTURE;
