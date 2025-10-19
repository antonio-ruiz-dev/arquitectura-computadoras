library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memoria_asm8 is
  Port (
	 clk : IN STD_LOGIC;
    estado : in  STD_LOGIC_VECTOR(3 downto 0); -- dirección / estado presente
    LIGA   : out STD_LOGIC_VECTOR(3 downto 0);
    INSTR  : out STD_LOGIC_VECTOR(1 downto 0);
    PRUEBA : out STD_LOGIC_VECTOR(1 downto 0);
    VF     : out STD_LOGIC;
    S      : out STD_LOGIC_VECTOR(3 downto 0)
  );
end memoria_asm8;

architecture RTL of memoria_asm8 is
begin
  process(clk, estado)
  begin
    

	 if rising_edge(clk) then
    case estado is
      -- dir  liga   instr  prueba  vf   S
      when "0000" => LIGA<="0000"; INSTR<="00"; PRUEBA<="00"; VF<='0'; S<="1100"; -- C
      when "0001" => LIGA<="0000"; INSTR<="00"; PRUEBA<="00"; VF<='0'; S<="0110"; -- C
      when "0010" => LIGA<="0000"; INSTR<="10"; PRUEBA<="00"; VF<='0'; S<="0001"; -- ST
      when "0011" => LIGA<="0011"; INSTR<="01"; PRUEBA<="01"; VF<='0'; S<="0010"; -- SCC
      when "0100" => LIGA<="0000"; INSTR<="11"; PRUEBA<="11"; VF<='1'; S<="1000"; -- SCI
      when "0101" => LIGA<="0001"; INSTR<="01"; PRUEBA<="00"; VF<='0'; S<="1100"; -- SCC
      when "0110" => LIGA<="0000"; INSTR<="00"; PRUEBA<="00"; VF<='0'; S<="0011"; -- C
      when "0111" => LIGA<="0000"; INSTR<="01"; PRUEBA<="00"; VF<='0'; S<="0001"; -- SCC
      when "1000" => LIGA<="0000"; INSTR<="00"; PRUEBA<="00"; VF<='0'; S<="1000"; -- C
      when "1001" => LIGA<="0000"; INSTR<="11"; PRUEBA<="11"; VF<='1'; S<="0000"; -- SCI
      when "1010" => LIGA<="0001"; INSTR<="01"; PRUEBA<="00"; VF<='0'; S<="1100"; -- SCC
      when "1011" => LIGA<="0000"; INSTR<="00"; PRUEBA<="00"; VF<='0'; S<="0101"; -- C
      when "1100" => LIGA<="0000"; INSTR<="01"; PRUEBA<="00"; VF<='0'; S<="0001"; -- SCC
      when "1101" => LIGA<="1101"; INSTR<="01"; PRUEBA<="10"; VF<='1'; S<="0010"; -- SCC
      when "1110" => LIGA<="1001"; INSTR<="01"; PRUEBA<="00"; VF<='0'; S<="0000"; -- SCC

      when others => null; -- ya cubierto con defaults
    end case;
	 end if;
  end process;
end RTL;
