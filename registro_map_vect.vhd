LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY registro_doble4 IS
	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		enMap : IN STD_LOGIC;
		enVect : IN STD_LOGIC;
		Q_Map : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		Q_Vect : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END registro_doble4;

ARCHITECTURE Behavioral OF registro_doble4 IS
	SIGNAL regMap : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL regVect : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF reset = '0' THEN
			regMap <= "0000";
			regVect <= "0000";
		ELSIF rising_edge(clk) THEN
			IF enMap = '1' THEN
				regMap <= "1000"; -- valor fijo
			END IF;
			IF enVect = '1' THEN
				regVect <= "1010"; -- valor fijo
			END IF;
		END IF;
	END PROCESS;

	Q_Map <= regMap;
	Q_Vect <= regVect;
END Behavioral;
