library ieee;
use ieee.std_logic_1164.all;

entity mux_4X1 is
port(
    a,b,c,d : in std_logic_vector(2 downto 0);
    sel: in std_logic_vector(1 downto 0);
    z_out: in std_logic_vector(2 downto 0)
);
end mux_4X1;

architecture behavioral of mux_4x1 is
begin
    proc: process(a, b, c, d, sel)
    begin
        case(sel) is
            when "00" => z_out <= a;
            when "01" => z_out <= b;
            when "10" => z_out <= c;
            when "11" => z_out <= d;
            when others => z_out <= (others => '0');
        end case;
    end process proc;
        end behavioral;