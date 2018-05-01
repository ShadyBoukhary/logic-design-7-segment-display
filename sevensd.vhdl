library ieee;
use ieee.std_logic_1164.all;

entity sevensd is
    port(x: in std_logic_vector (3 downto 0);
         a: out std_logic;
         b: out std_logic;
         c: out std_logic;
         d: out std_logic;
         e: out std_logic;
         f: out std_logic;
         g: out std_logic);
end;

architecture synth of sevensd is
begin

    a <= (not x(3) and not x(2) and not x(1) and x(0)) or (not x(3) and x(2) and not x(1) and not x(0)) or (x(3) and x(2) and not x(1) and x(0)) or (x(3) and not x(2) and x(1) and x(0));

    b <= (x(2) and x(1) and not x(0)) or (x(3) and x(1) and x(0)) or (not x(3) and x(2) and not x(1) and x(0)) or (x(3) and x(2) and not x(1) and not x(0));

    c <= (not x(3) and not x(2) and x(1) and not x(0)) or (x(3) and x(2) and x(1)) or (x(3) and x(2) and not x(0)); 

    d <= (not x(3) and not x(2) and not x(1) and x(0)) or (not x(3) and x(2) and not x(1) and not x(0)) or (x(3) and not x(2) and x(1) and not x(0)) or (x(2) and x(1) and x(0)); 

    e <= (not x(3) and x(0)) or (not x(3) and x(2) and not x(1)) or (not x(2) and not x(1) and x(0)); 

    f <= (not x(3) and not x(2) and x(0)) or (not x(3) and not x(2) and x(1)) or (not x(3) and x(1) and x(0)) or (x(3) and x(2) and not x(1) and x(0)); 

    g <= (not x(3) and not x(2) and not x(1)) or (x(3) and x(2) and not x(1) and not x(0)) or (not x(3) and x(2) and x(1) and x(0));

end;
