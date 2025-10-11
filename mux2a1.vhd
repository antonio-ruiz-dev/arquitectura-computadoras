library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2a1 is
  port (
    A   : in  STD_LOGIC_VECTOR(5 downto 0);
    B   : in  STD_LOGIC_VECTOR(5 downto 0);
    SEL : in  STD_LOGIC;                         -- 0 = A, 1 = B
    Y   : out STD_LOGIC_VECTOR(5 downto 0)
  );
end mux2a1;

architecture Behavioral of mux2a1 is
begin
  process(A, B, SEL)
  begin
    if SEL = '0' then
      Y <= A;
    else
      Y <= B;
    end if;
  end process;
end Behavioral;
