library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is
port(
    D, clk : in std_logic;
    q: out std_logic
);

architecture behavioral of ent is
begin
    proc: process(D, clk)
    begin
        if(clk'event and clk = '1') then
            q <= D;
        end if;
    end process;
end behavioral ; --behavioral 