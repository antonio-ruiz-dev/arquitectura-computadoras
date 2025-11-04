LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY micro68HC11 IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        nIRQ : IN STD_LOGIC;
        nXIRQ : IN STD_LOGIC;
        Data_in : IN unsigned(7 DOWNTO 0);
        Data_out : OUT unsigned(7 DOWNTO 0); -- Bus de datos de 8 bits
        Dir : OUT unsigned(15 DOWNTO 0); -- Bis de direcciones de 16 bits
        nRW : OUT STD_LOGIC := '1'; -- Señal para escribir en memoria
        PC_low_out : OUT unsigned(7 DOWNTO 0);
        e_presente_out : OUT unsigned(7 DOWNTO 0);
        A_out : OUT unsigned (7 DOWNTO 0);
        B_out : OUT unsigned (7 DOWNTO 0);
        X_low_out : OUT unsigned(7 DOWNTO 0);
        X_high_out : OUT unsigned(7 DOWNTO 0);
        Y_low_out : OUT unsigned(7 DOWNTO 0);
        flags : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- S X H I N Z V C
    );
END micro68HC11;
ARCHITECTURE Behavioral OF micro68HC11 IS
    SIGNAL e_presente : unsigned(11 DOWNTO 0) := X"000";
    SIGNAL e_siguiente : unsigned(11 DOWNTO 0);
    SIGNAL PC : unsigned (15 DOWNTO 0) := X"0014";
    SIGNAL estados : STD_LOGIC_VECTOR (7 DOWNTO 0) := X"FF";
    SIGNAL A : unsigned (7 DOWNTO 0);
    SIGNAL B : unsigned (7 DOWNTO 0);
    SIGNAL Q : unsigned (7 DOWNTO 0);
    SIGNAL Yupa : unsigned (7 DOWNTO 0);
    SIGNAL XH : unsigned (7 DOWNTO 0);
    SIGNAL XL : unsigned (7 DOWNTO 0);
    SIGNAL YH : unsigned (7 DOWNTO 0);
    SIGNAL YL : unsigned (7 DOWNTO 0);
    SIGNAL AuxH : unsigned (7 DOWNTO 0);
    SIGNAL AuxL : unsigned (7 DOWNTO 0);
    SIGNAL Aux : unsigned (15 DOWNTO 0);
    SIGNAL PCH : unsigned (7 DOWNTO 0) := X"00";
    SIGNAL PCL : unsigned (7 DOWNTO 0) := X"14";
    SIGNAL SPH : unsigned (7 DOWNTO 0) := X"FF"; -- Definir en qué lugar poner el stack...
    SIGNAL SPL : unsigned (7 DOWNTO 0) := X"10"; -- de qué tamaño es la memoria y ponerlo
    -- en la última dirección
    SIGNAL microI : unsigned (11 DOWNTO 0) := X"e80"; -- Direccion del driver de I := X""
    SIGNAL microX : unsigned (11 DOWNTO 0) := X"e00"; -- Direccion del driver de I := X""
    SIGNAL IntRI : unsigned (15 DOWNTO 0);
    SIGNAL IntRX : unsigned (15 DOWNTO 0);
    SIGNAL IRQ : STD_LOGIC := '0';
    SIGNAL XIRQ : STD_LOGIC := '0';
    SIGNAL startMUL : STD_LOGIC := '0';
    CONSTANT ZERO : unsigned (7 DOWNTO 0) := "00000000";
    SIGNAL D : unsigned (15 DOWNTO 0);
    SIGNAL varRW : STD_LOGIC := '1';
    SIGNAL indY : STD_LOGIC := '0';
BEGIN
    PROCESS (clk, reset, e_presente, e_siguiente, IRQ, XIRQ)
    BEGIN
        IF (reset = '0') THEN
            e_siguiente <= X"000";
            PC <= X"0014";
            IRQ <= '0';
            XIRQ <= '0';
            indY <= '0';
				nRW <= '1';
        ELSE
            IF (rising_edge(clk)) THEN
					nRW <= '1';	
					IF (indY = '0') THEN
						IRQ <= nIRQ;
						XIRQ <= nXIRQ;
					ELSE
						IRQ <= '0';
						XIRQ <= '0';
					END IF;
                CASE e_presente IS
                    WHEN X"000" =>
                        Dir <= PC;
                        e_siguiente <= X"001";
                    WHEN X"001" =>
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"002" =>
                        e_siguiente <= (Data_in & ZERO(3 DOWNTO 0));
                        ---------------------------------------------------------------------------------------------------------------------
                    WHEN X"860" => -- LDAA IMM
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"861" => -- LDAA
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"862" => -- LDAA
                        A <= Data_in;
                        -- Actualiza N
                        estados(3) <= Data_in(7);
                        -- Actualiza Z
                        IF (Data_in = ZERO) THEN
                            estados(2) <= '1';
                        ELSE
                            estados(2) <= '0';
                        END IF;
                        -- Actualiza V
                        estados(1) <= '0';
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;
                        -------LDAB----------------------------------------------------------------------------------------------------------
                    WHEN X"C60" => -- LDAB
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"C61" => -- LDAB
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"C62" => -- LDAB
                        B <= Data_in;
                        -- Actualiza N
                        estados(3) <= Data_in(7);
                        -- Actualiza Z
                        IF (Data_in = ZERO) THEN
                            estados(2) <= '1';
                        ELSE
                            estados(2) <= '0';
                        END IF;
                        -- Actualiza V
                        estados(1) <= '0';
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;
                        --------END LDAB----------------------------------------------------------------------------------------------------------

                        --------LDX-------------------------------------------------------------------------------------------------------------
                    WHEN X"CE0" => -- LDX
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"CE1" => -- LDX
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"CE2" => -- LDX Hi
                        XH <= Data_in;
                        e_siguiente <= e_presente + 1;
                    WHEN X"CE3" => -- LDX
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"CE4" => -- LDX
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"CE5" => -- LDX Hi
                        XL <= Data_in;
                        -- Actualiza N
                        estados(3) <= Data_in(7);
                        -- Actualiza Z
                        IF (Data_in = ZERO) THEN
                            estados(2) <= '1';
                        ELSE
                            estados(2) <= '0';
                        END IF;
                        -- Actualiza V
                        estados(1) <= '0';
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;
                        ------------END LDX-------------------------------------------------------------------------------------------------------
                        -- Código de la instruccion de acceso relativo BNE
                    WHEN X"260" =>
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"261" =>
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"262" =>
                        IF (estados(2) = '0') THEN
                            IF (Data_in(7) = '1') THEN
                                PC <= PC - unsigned(NOT(Data_in - 1));
                            ELSE
                                PC <= PC + Data_in;
                            END IF;
                        END IF;
                        e_siguiente <= e_presente + 1;
                    WHEN X"263" =>
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;
                        ---------------------------------------------------------------------------------------------------------------------
                        -- .
                        -- .
                        -- .
                        ---------------------------------------------------------------------------------------------------------------------

                        ---------------------------------------------------------------------------------------------------------------------
                        -- Código de la instrucción ABA (A ← A + B)
                    WHEN X"1B0" =>
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;

                    WHEN X"1B1" =>
                        Aux <= ("00000000" & A) + ("00000000" & B);
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"1B2" => -- Guarda resultado en A y actualiza banderas
                        A <= A + B;

                        -- Actualiza N (bit 7 del resultado)
                        estados(3) <= Aux(7);

                        -- Actualiza Z
                        IF (Aux(7 DOWNTO 0) = ZERO) THEN
                            estados(2) <= '1';
                        ELSE
                            estados(2) <= '0';
                        END IF;

                        -- Actualiza V (overflow para suma de 8 bits)
                        -- V = (A_old(7) and B(7) and not Aux(7)) or (not A_old(7) and not B(7) and Aux(7))
                        IF ((A(7) = '1' AND B(7) = '1' AND Aux(7) = '0') OR
                            (A(7) = '0' AND B(7) = '0' AND Aux(7) = '1')) THEN
                            estados(1) <= '1';
                        ELSE
                            estados(1) <= '0';
                        END IF;

                        -- Actualiza C (carry de la suma)
                        estados(0) <= Aux(8); -- bit de acarreo

                        e_siguiente <= e_presente + 1;

                    WHEN X"1B3" => -- Fase final: atención a interrupciones
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSIF (IRQ = '1') THEN
                            e_siguiente <= microI;
                        ELSE
                            Dir <= PC; -- siguiente fetch
                            e_siguiente <= X"001";
                        END IF;
                        ---------------------------------------------------------------------------------------------------------------------

                    WHEN X"A70" => -- STAA
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"A71" => -- STAA
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
						  WHEN X"A72" => -- STAA
								nRW <= '0';
								Data_out <= A;
								Dir <= (XH & XL)+Data_in;
								e_siguiente <= e_presente + 1;
                    WHEN X"A73" => -- STAA
                        -- Actualiza N
                        estados(3) <= Data_in(7);
                        -- Actualiza Z
                        IF (Data_in = ZERO) THEN
                            estados(2) <= '1';
                        ELSE
                            estados(2) <= '0';
                        END IF;
                        -- Actualiza V
                        estados(1) <= '0';
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;
								
							---------------------------------------------------------------------------------------------------------------------

                    WHEN X"E70" => -- STAB
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"E71" => -- STAB
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
						  WHEN X"E72" => -- STAB
								nRW <= '0';
								Data_out <= B;
								Dir <= (XH & XL)+Data_in;
								e_siguiente <= e_presente + 1;
                    WHEN X"E73" => -- STAB
								
                        -- Actualiza N
                        estados(3) <= Data_in(7);
                        -- Actualiza Z
                        IF (Data_in = ZERO) THEN
                            estados(2) <= '1';
                        ELSE
                            estados(2) <= '0';
                        END IF;
                        -- Actualiza V
                        estados(1) <= '0';
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;

                        ---------------------------------------------------------------------------------------------------------------------
							-- Código BRA
                    WHEN X"200" =>
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;
                    WHEN X"201" =>
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"202" =>
							 IF (Data_in(7) = '1') THEN
								  PC <= PC - unsigned(NOT(Data_in - 1));
							 ELSE
								  PC <= PC + Data_in;
							 END IF;
							e_siguiente <= e_presente + 1;
                    WHEN X"203" =>
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;
							
							
							---------------------------------------------------------------------------------------------------------------------
                        -- Código de la instrucción MUL (A ← A * B)
                    WHEN X"3D0" =>
                        Dir <= PC;
                        e_siguiente <= e_presente + 1;

                    WHEN X"3D1" =>
                        D <= unsigned(A) * unsigned(B);
                        PC <= PC + 1;
                        e_siguiente <= e_presente + 1;
                    WHEN X"3D2" => -- G Actualiza banderas
                        A <= D(15 downto 8);
								B <= D(7 downto 0);

                        -- Actualiza N (bit 7 del resultado)
                        estados(3) <= Aux(7);

                        -- Actualiza Z
                        IF (Aux(7 DOWNTO 0) = ZERO) THEN
                            estados(2) <= '1';
                        ELSE
                            estados(2) <= '0';
                        END IF;

                        -- Actualiza V (overflow para mult de 8 bits)
                        -- V = (A_old(7) and B(7) and not Aux(7)) or (not A_old(7) and not B(7) and Aux(7))
                        IF ((A(7) = '1' AND B(7) = '1' AND Aux(7) = '0') OR
                            (A(7) = '0' AND B(7) = '0' AND Aux(7) = '1')) THEN
                            estados(1) <= '1';
                        ELSE
                            estados(1) <= '0';
                        END IF;

                        -- Actualiza C (carry de la suma)
                        estados(0) <= Aux(8); -- bit de acarreo

                        e_siguiente <= e_presente + 1;
						
                    WHEN X"3D3" => -- Fase final: atención a interrupciones
                        IF (XIRQ = '1') THEN
                            e_siguiente <= microX;
                        ELSE
                            IF (IRQ = '1') THEN
                                e_siguiente <= microI;
                            ELSE
                                Dir <= PC;
                                e_siguiente <= X"001";
                            END IF;
                        END IF;
							
							-------------------------------------------------------------------------------------------------------------------
                        ---------------------------------------------------------------------------------------------------------------------
                    WHEN X"e80" => -- Interrupciones
                        --Dir <= PC;
								Dir <= (SPH&SPL);
								indY <= '1';
                        e_siguiente <= e_presente + 1;
                    WHEN X"e81" => -- Interrupciones
                        --PC <= PC + 1;
								SPH <= SPH - 1;
								nRW <= '0';
								Data_out <= PC(7 DOWNTO 0);
                        e_siguiente <= e_presente + 1;
						  
						  WHEN X"e82" => -- Interrupciones
								PC <= "00000000"&microI(11 DOWNTO 4);
								e_siguiente <= e_presente + 1;
						
						  WHEN X"e83" => -- Interrupciones
								Dir <= PC;
                        e_siguiente <= X"001";
				        -------------------------------------------------------------------------------------------------------------------
							
							WHEN X"3B0" => -- Retorno de Interrupciones
								SPH <= SPH + 1;
								Data_out <= SPH;
                        e_siguiente <= e_presente + 1;
                    WHEN X"3B1" => -- Retorno de Interrupciones
								Dir <= (SPH&SPL);
								Data_out <= Data_in;
								e_siguiente <= e_presente + 1;
						  WHEN X"3B2" => -- Retorno de Interrupciones
								PC <= ("00000000"&X"20");
								Data_out <=Data_in;
                        e_siguiente <= e_presente + 1;
						  WHEN X"3B3" => -- Retorno de Interrupciones
								Dir <= "00000000"&X"20";
								Data_out <= PC(7 DOWNTO 0);
								indY <= '0';
								e_siguiente <= X"001";
				        -------------------------------------------------------------------------------------------------------------------

						  WHEN OTHERS =>
                        e_siguiente <= X"000";
                        PC <= X"0000";
                END CASE;
            END IF;
        END IF;
        e_presente <= e_siguiente;
        -- debug vals
        A_out <= A;
        B_out <= B;
        e_presente_out <= e_presente(11 DOWNTO 4);
        PC_low_out <= PC(7 DOWNTO 0);
        X_low_out <= XL;
        X_high_out <= XH;
        Y_low_out <= YL;
        flags <= estados;
    END PROCESS;

END Behavioral;