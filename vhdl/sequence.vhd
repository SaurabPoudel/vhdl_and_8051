-- 1001

library ieee;
use ieee.std_logic_1164.all;

entity sequence_state is
port(
    x: in std_logic;
    clk, reset: in std_logic;
    z: out std_logic;
)
end sequence_state;

architecture behavioral of sequence_state is
    type state is(Q0, Q1, Q2, Q3, Q4);
    signal ps, ns: state;
    begin
        sync_proc: process(clk, reset)
        begin 
            if(reset = '1') then
                ps <= q0;
            elsif(rising_edge(clk)) then
                ps <= ns;
            end if;
        end process sync_proc;
                
        comb_proc: process(PS, x)
        begin
            case PS is

                --- feeling lazy linus trovald is feeling lazy right now
                when Q0 => z <= '0';
                    if(x = '1') then 
                        ns <= q1
                    else 
                        ns <= q0;
                    end if;
               when Q0 => z <= '0';
                    if(x = '1') then 
                        ns <= q1
                    else 
                        ns <= q0;
                    end if; 
                when Q0 => z <= '0';
                    if(x = '1') then 
                        ns <= q1
                    else 
                        ns <= q0;
                    end if; 