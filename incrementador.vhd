library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity incrementador is
  port (
    A : in  STD_LOGIC_VECTOR (5 downto 0);
    Y : out STD_LOGIC_VECTOR (5 downto 0)
  );
end incrementador;

architecture Behavioral of incrementador is
begin
  Y <= A + 1;
end Behavioral;
