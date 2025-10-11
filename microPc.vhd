LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY register6 IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        D : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
        Q : OUT STD_LOGIC_VECTOR (5 DOWNTO 0));
END register6;
ARCHITECTURE Behavioral OF register6 IS
    CONSTANT s0 : STD_LOGIC_VECTOR(5 DOWNTO 0) := B"000000";
BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF reset = '0' THEN
            Q <= s0;
        ELSIF rising_edge (clk) THEN
            Q <= D;
        END IF;
    END PROCESS;
END Behavioral;