library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logica_secuencidor is
    port(
        I           : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        CC          : IN std_logic;
        selector    : IN std_logic;
        PL_liga     : OUT std_logic;
        MAP_transf  : OUT std_logic;
        VECT_int    : OUT std_logic;
    )
end logica_secuencidor;

architecture Behavioral of logica_secuenciador is
    begin
        process(I, CC)
        begin
            selector <= '0';
            PL_liga <= '1';
            MAP_transf <= '1';
            VECT_int <= '1';
        

        case I is
            when "00" =>
                null; -- Usamos los valores por default
            
            when "01" =>
                if CC = '0' then
                    selector <= '1'; -- Salto Condicional: Y=D
                    PL_liga <= '0';
                    -- MAP y VECT se quedan en 1
                end if;
            
            when "10" => -- Salto de transformación: Y=D, Activamos MAP
                selector <= '1';
                MAP_transf <= '0';
            
            when others => -- 11 Salto condicional de interrupción: Y=D
                if CC = '0' then
                    selector <= '1';
                    VECT_int <= '0';
                end if ;
        end case;
    end process;
end architecture;
