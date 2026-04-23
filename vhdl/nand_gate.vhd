library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
port(
    in_a, in_b: in std_logic;
    out_c: out std_logic
);
end nand_gate;

architecture nand_arch of nand_gate is
begin
    proc: Process(in_a, in_b)
    begin
        out_c <= in_a nand in_b;
    end process proc;
end nand_arch;