library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_switches is
    port(
        switchA    : in  std_logic;
        switchB    : in  std_logic;
        switchC    : in  std_logic;
        output_val : out unsigned(15 downto 0)
    );
end entity;

architecture behavioral of mux_switches is
begin
    process(switchA, switchB, switchC)
    begin
        if switchA = '1' then
            output_val <= X"0010";
        elsif switchB = '1' then
            output_val <= X"0011"; 
        elsif switchC = '1' then
            output_val <= X"0012"; 
        else
            output_val <= X"0000";
        end if;

			
    end process;
end architecture;
