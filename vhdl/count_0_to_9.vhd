library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity counter is 
port(
    clk, clr: in std_logic;
    q: out std_logic_vector(3 downto 0)
);
end counter;

architecture behavioral of counter is
    signal temp: std_logic_vector(3 downto 0);
    begin
        proc: process(clk, clr)
        begin 
        if(clk'event and clk='0') then
            if (clr = '1') then
               q <= "0000";
            else
                temp <= temp + 1;
            end if ;
        end if;
        end process proc;
    end behavioral;