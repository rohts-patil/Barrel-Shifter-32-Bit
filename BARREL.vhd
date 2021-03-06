library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BARREL is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (4 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0));
end BARREL;

architecture Behavioral of BARREL is
component mux32_1 is
Port( I:in  STD_LOGIC_VECTOR(31 downto 0);
      S:in STD_LOGIC_VECTOR(4 downto 0);
		y:out STD_LOGIC);
		end component;
		
signal ytemp:STD_LOGIC_VECTOR (31 downto 0);
begin
M0: mux32_1 port map(
I(0)=>A(0),
I(1)=>A(1),I(2)=>A(2),
I(3)=>A(3),I(4)=>A(4),
I(5)=>A(5),I(6)=>A(6),
I(7)=>A(7),I(8)=>A(8),
I(9)=>A(9),I(10)=>A(10),
I(11)=>A(11),I(12)=>A(12),
I(13)=>A(13),I(14)=>A(14),
I(15)=>A(15),I(16)=>A(16),
I(17)=>A(17),I(18)=>A(18),
I(19)=>A(19),I(20)=>A(20),
I(21)=>A(21),I(22)=>A(22),
I(23)=>A(23),I(24)=>A(24),
I(25)=>A(25),I(26)=>A(26),
I(27)=>A(27),I(28)=>A(28),
I(29)=>A(29),I(30)=>A(30),
I(31)=>A(31),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(0)
);


M1: mux32_1 port map(
I(0)=>A(1),
I(1)=>A(2),I(2)=>A(3),
I(3)=>A(4),I(4)=>A(5),
I(5)=>A(6),I(6)=>A(7),
I(7)=>A(8),I(8)=>A(9),
I(9)=>A(10),I(10)=>A(11),
I(11)=>A(12),I(12)=>A(13),
I(13)=>A(14),I(14)=>A(15),
I(15)=>A(16),I(16)=>A(17),
I(17)=>A(18),I(18)=>A(19),
I(19)=>A(20),I(20)=>A(21),
I(21)=>A(22),I(22)=>A(23),
I(23)=>A(24),I(24)=>A(25),
I(25)=>A(26),I(26)=>A(27),
I(27)=>A(28),I(28)=>A(29),
I(29)=>A(30),I(30)=>A(31),
I(31)=>A(0),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(1)
);

M2: mux32_1 port map(
I(0)=>A(2),
I(1)=>A(3),I(2)=>A(4),
I(3)=>A(5),I(4)=>A(6),
I(5)=>A(7),I(6)=>A(6),
I(7)=>A(9),I(8)=>A(10),
I(9)=>A(11),I(10)=>A(12),
I(11)=>A(13),I(12)=>A(14),
I(13)=>A(15),I(14)=>A(16),
I(15)=>A(17),I(16)=>A(18),
I(17)=>A(19),I(18)=>A(20),
I(19)=>A(21),I(20)=>A(22),
I(21)=>A(23),I(22)=>A(24),
I(23)=>A(25),I(24)=>A(26),
I(25)=>A(27),I(26)=>A(28),
I(27)=>A(29),I(28)=>A(20),
I(29)=>A(31),I(30)=>A(0),
I(31)=>A(1),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(2)
);


M3: mux32_1 port map(
I(0)=>A(3),
I(1)=>A(4),I(2)=>A(5),
I(3)=>A(6),I(4)=>A(7),
I(5)=>A(8),I(6)=>A(9),
I(7)=>A(10),I(8)=>A(11),
I(9)=>A(12),I(10)=>A(13),
I(11)=>A(14),I(12)=>A(15),
I(13)=>A(16),I(14)=>A(17),
I(15)=>A(18),I(16)=>A(19),
I(17)=>A(20),I(18)=>A(21),
I(19)=>A(22),I(20)=>A(23),
I(21)=>A(24),I(22)=>A(25),
I(23)=>A(26),I(24)=>A(27),
I(25)=>A(28),I(26)=>A(29),
I(27)=>A(30),I(28)=>A(31),
I(29)=>A(0),I(30)=>A(1),
I(31)=>A(2),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(3)
);

M4: mux32_1 port map(
I(0)=>A(4),
I(1)=>A(5),I(2)=>A(6),
I(3)=>A(7),I(4)=>A(8),
I(5)=>A(9),I(6)=>A(10),
I(7)=>A(11),I(8)=>A(12),
I(9)=>A(13),I(10)=>A(14),
I(11)=>A(15),I(12)=>A(16),
I(13)=>A(17),I(14)=>A(18),
I(15)=>A(19),I(16)=>A(20),
I(17)=>A(21),I(18)=>A(22),
I(19)=>A(23),I(20)=>A(24),
I(21)=>A(25),I(22)=>A(26),
I(23)=>A(27),I(24)=>A(28),
I(25)=>A(29),I(26)=>A(30),
I(27)=>A(31),I(28)=>A(0),
I(29)=>A(1),I(30)=>A(3),
I(31)=>A(31),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(4)
);

M5: mux32_1 port map(
I(0)=>A(5),
I(1)=>A(6),I(2)=>A(7),
I(3)=>A(8),I(4)=>A(9),
I(5)=>A(10),I(6)=>A(11),
I(7)=>A(12),I(8)=>A(13),
I(9)=>A(14),I(10)=>A(15),
I(11)=>A(16),I(12)=>A(17),
I(13)=>A(18),I(14)=>A(19),
I(15)=>A(20),I(16)=>A(21),
I(17)=>A(22),I(18)=>A(23),
I(19)=>A(24),I(20)=>A(25),
I(21)=>A(26),I(22)=>A(27),
I(23)=>A(28),I(24)=>A(29),
I(25)=>A(30),I(26)=>A(31),
I(27)=>A(0),I(28)=>A(1),
I(29)=>A(2),I(30)=>A(3),
I(31)=>A(4),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(5)
);


M6: mux32_1 port map(
I(0)=>A(6),
I(1)=>A(7),I(2)=>A(8),
I(3)=>A(9),I(4)=>A(10),
I(5)=>A(11),I(6)=>A(12),
I(7)=>A(13),I(8)=>A(14),
I(9)=>A(15),I(10)=>A(16),
I(11)=>A(17),I(12)=>A(18),
I(13)=>A(19),I(14)=>A(20),
I(15)=>A(21),I(16)=>A(22),
I(17)=>A(23),I(18)=>A(24),
I(19)=>A(25),I(20)=>A(26),
I(21)=>A(27),I(22)=>A(28),
I(23)=>A(29),I(24)=>A(30),
I(25)=>A(31),I(26)=>A(0),
I(27)=>A(1),I(28)=>A(2),
I(29)=>A(3),I(30)=>A(4),
I(31)=>A(5),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(6)
);


M7: mux32_1 port map(
I(0)=>A(7),
I(1)=>A(8),I(2)=>A(9),
I(3)=>A(10),I(4)=>A(11),
I(5)=>A(12),I(6)=>A(13),
I(7)=>A(14),I(8)=>A(15),
I(9)=>A(16),I(10)=>A(17),
I(11)=>A(18),I(12)=>A(19),
I(13)=>A(20),I(14)=>A(21),
I(15)=>A(22),I(16)=>A(23),
I(17)=>A(24),I(18)=>A(25),
I(19)=>A(26),I(20)=>A(27),
I(21)=>A(28),I(22)=>A(29),
I(23)=>A(30),I(24)=>A(31),
I(25)=>A(0),I(26)=>A(1),
I(27)=>A(2),I(28)=>A(3),
I(29)=>A(4),I(30)=>A(5),
I(31)=>A(6),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(7)
);


M8: mux32_1 port map(
I(0)=>A(8),
I(1)=>A(9),I(2)=>A(10),
I(3)=>A(11),I(4)=>A(12),
I(5)=>A(13),I(6)=>A(14),
I(7)=>A(15),I(8)=>A(16),
I(9)=>A(17),I(10)=>A(18),
I(11)=>A(19),I(12)=>A(20),
I(13)=>A(21),I(14)=>A(22),
I(15)=>A(23),I(16)=>A(24),
I(17)=>A(25),I(18)=>A(26),
I(19)=>A(27),I(20)=>A(28),
I(21)=>A(29),I(22)=>A(30),
I(23)=>A(31),I(24)=>A(0),
I(25)=>A(1),I(26)=>A(2),
I(27)=>A(3),I(28)=>A(4),
I(29)=>A(5),I(30)=>A(6),
I(31)=>A(7),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(8)
);


M9: mux32_1 port map(
I(0)=>A(9),
I(1)=>A(10),I(2)=>A(11),
I(3)=>A(12),I(4)=>A(13),
I(5)=>A(14),I(6)=>A(15),
I(7)=>A(16),I(8)=>A(17),
I(9)=>A(18),I(10)=>A(19),
I(11)=>A(20),I(12)=>A(21),
I(13)=>A(22),I(14)=>A(23),
I(15)=>A(24),I(16)=>A(25),
I(17)=>A(26),I(18)=>A(27),
I(19)=>A(28),I(20)=>A(29),
I(21)=>A(30),I(22)=>A(31),
I(23)=>A(0),I(24)=>A(1),
I(25)=>A(2),I(26)=>A(3),
I(27)=>A(4),I(28)=>A(5),
I(29)=>A(6),I(30)=>A(7),
I(31)=>A(8),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(9)
);


M10: mux32_1 port map(
I(0)=>A(10),
I(1)=>A(11),I(2)=>A(12),
I(3)=>A(13),I(4)=>A(14),
I(5)=>A(15),I(6)=>A(16),
I(7)=>A(17),I(8)=>A(18),
I(9)=>A(19),I(10)=>A(20),
I(11)=>A(21),I(12)=>A(22),
I(13)=>A(23),I(14)=>A(24),
I(15)=>A(25),I(16)=>A(26),
I(17)=>A(27),I(18)=>A(28),
I(19)=>A(29),I(20)=>A(30),
I(21)=>A(31),I(22)=>A(0),
I(23)=>A(1),I(24)=>A(2),
I(25)=>A(3),I(26)=>A(4),
I(27)=>A(5),I(28)=>A(6),
I(29)=>A(7),I(30)=>A(30),
I(31)=>A(9),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(10)
);

M11: mux32_1 port map(
I(0)=>A(11),
I(1)=>A(12),I(2)=>A(13),
I(3)=>A(14),I(4)=>A(15),
I(5)=>A(16),I(6)=>A(17),
I(7)=>A(18),I(8)=>A(19),
I(9)=>A(20),I(10)=>A(21),
I(11)=>A(22),I(12)=>A(23),
I(13)=>A(24),I(14)=>A(25),
I(15)=>A(26),I(16)=>A(27),
I(17)=>A(28),I(18)=>A(29),
I(19)=>A(30),I(20)=>A(31),
I(21)=>A(0),I(22)=>A(1),
I(23)=>A(2),I(24)=>A(3),
I(25)=>A(4),I(26)=>A(5),
I(27)=>A(6),I(28)=>A(7),
I(29)=>A(8),I(30)=>A(9),
I(31)=>A(10),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(11)
);

M12: mux32_1 port map(
I(0)=>A(12),
I(1)=>A(13),I(2)=>A(14),
I(3)=>A(15),I(4)=>A(16),
I(5)=>A(17),I(6)=>A(18),
I(7)=>A(19),I(8)=>A(20),
I(9)=>A(21),I(10)=>A(21),
I(11)=>A(23),I(12)=>A(24),
I(13)=>A(25),I(14)=>A(26),
I(15)=>A(27),I(16)=>A(28),
I(17)=>A(29),I(18)=>A(30),
I(19)=>A(31),I(20)=>A(0),
I(21)=>A(1),I(22)=>A(2),
I(23)=>A(3),I(24)=>A(4),
I(25)=>A(5),I(26)=>A(6),
I(27)=>A(7),I(28)=>A(8),
I(29)=>A(9),I(30)=>A(10),
I(31)=>A(11),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(12)
);


M13: mux32_1 port map(
I(0)=>A(13),
I(1)=>A(14),I(2)=>A(15),
I(3)=>A(16),I(4)=>A(17),
I(5)=>A(18),I(6)=>A(19),
I(7)=>A(20),I(8)=>A(21),
I(9)=>A(22),I(10)=>A(23),
I(11)=>A(24),I(12)=>A(25),
I(13)=>A(26),I(14)=>A(27),
I(15)=>A(28),I(16)=>A(29),
I(17)=>A(30),I(18)=>A(31),
I(19)=>A(0),I(20)=>A(1),
I(21)=>A(2),I(22)=>A(3),
I(23)=>A(4),I(24)=>A(5),
I(25)=>A(6),I(26)=>A(7),
I(27)=>A(8),I(28)=>A(9),
I(29)=>A(10),I(30)=>A(11),
I(31)=>A(12),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(13)
);

M14: mux32_1 port map(
I(0)=>A(14),
I(1)=>A(15),I(2)=>A(16),
I(3)=>A(17),I(4)=>A(18),
I(5)=>A(19),I(6)=>A(20),
I(7)=>A(21),I(8)=>A(22),
I(9)=>A(23),I(10)=>A(24),
I(11)=>A(25),I(12)=>A(26),
I(13)=>A(27),I(14)=>A(28),
I(15)=>A(29),I(16)=>A(30),
I(17)=>A(31),I(18)=>A(0),
I(19)=>A(1),I(20)=>A(2),
I(21)=>A(3),I(22)=>A(4),
I(23)=>A(5),I(24)=>A(6),
I(25)=>A(7),I(26)=>A(8),
I(27)=>A(9),I(28)=>A(10),
I(29)=>A(11),I(30)=>A(12),
I(31)=>A(13),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(14)
);

M15: mux32_1 port map(
I(0)=>A(15),
I(1)=>A(16),I(2)=>A(17),
I(3)=>A(18),I(4)=>A(19),
I(5)=>A(20),I(6)=>A(21),
I(7)=>A(22),I(8)=>A(23),
I(9)=>A(24),I(10)=>A(25),
I(11)=>A(26),I(12)=>A(27),
I(13)=>A(28),I(14)=>A(29),
I(15)=>A(30),I(16)=>A(31),
I(17)=>A(0),I(18)=>A(1),
I(19)=>A(2),I(20)=>A(3),
I(21)=>A(4),I(22)=>A(5),
I(23)=>A(6),I(24)=>A(7),
I(25)=>A(8),I(26)=>A(9),
I(27)=>A(10),I(28)=>A(11),
I(29)=>A(12),I(30)=>A(13),
I(31)=>A(14),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(15)
);

M16: mux32_1 port map(
I(0)=>A(16),
I(1)=>A(17),I(2)=>A(18),
I(3)=>A(19),I(4)=>A(20),
I(5)=>A(21),I(6)=>A(22),
I(7)=>A(23),I(8)=>A(24),
I(9)=>A(25),I(10)=>A(26),
I(11)=>A(27),I(12)=>A(28),
I(13)=>A(29),I(14)=>A(30),
I(15)=>A(31),I(16)=>A(0),
I(17)=>A(1),I(18)=>A(2),
I(19)=>A(3),I(20)=>A(4),
I(21)=>A(5),I(22)=>A(6),
I(23)=>A(7),I(24)=>A(8),
I(25)=>A(9),I(26)=>A(10),
I(27)=>A(11),I(28)=>A(12),
I(29)=>A(13),I(30)=>A(14),
I(31)=>A(15),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(16)
);

M17: mux32_1 port map(
I(0)=>A(17),
I(1)=>A(18),I(2)=>A(19),
I(3)=>A(20),I(4)=>A(21),
I(5)=>A(22),I(6)=>A(23),
I(7)=>A(24),I(8)=>A(25),
I(9)=>A(26),I(10)=>A(27),
I(11)=>A(28),I(12)=>A(29),
I(13)=>A(30),I(14)=>A(31),
I(15)=>A(0),I(16)=>A(1),
I(17)=>A(2),I(18)=>A(3),
I(19)=>A(4),I(20)=>A(5),
I(21)=>A(6),I(22)=>A(7),
I(23)=>A(8),I(24)=>A(9),
I(25)=>A(10),I(26)=>A(11),
I(27)=>A(12),I(28)=>A(13),
I(29)=>A(14),I(30)=>A(15),
I(31)=>A(16),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(17)
);

M18: mux32_1 port map(
I(0)=>A(18),
I(1)=>A(19),I(2)=>A(20),
I(3)=>A(21),I(4)=>A(22),
I(5)=>A(23),I(6)=>A(24),
I(7)=>A(25),I(8)=>A(26),
I(9)=>A(27),I(10)=>A(28),
I(11)=>A(29),I(12)=>A(30),
I(13)=>A(31),I(14)=>A(0),
I(15)=>A(1),I(16)=>A(1),
I(17)=>A(3),I(18)=>A(2),
I(19)=>A(5),I(20)=>A(6),
I(21)=>A(7),I(22)=>A(8),
I(23)=>A(9),I(24)=>A(10),
I(25)=>A(11),I(26)=>A(12),
I(27)=>A(13),I(28)=>A(14),
I(29)=>A(15),I(30)=>A(16),
I(31)=>A(17),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(18)
);

M19: mux32_1 port map(
I(0)=>A(19),
I(1)=>A(20),I(2)=>A(21),
I(3)=>A(22),I(4)=>A(23),
I(5)=>A(24),I(6)=>A(25),
I(7)=>A(26),I(8)=>A(27),
I(9)=>A(28),I(10)=>A(30),
I(11)=>A(30),I(12)=>A(31),
I(13)=>A(0),I(14)=>A(1),
I(15)=>A(2),I(16)=>A(3),
I(17)=>A(4),I(18)=>A(5),
I(19)=>A(6),I(20)=>A(7),
I(21)=>A(8),I(22)=>A(9),
I(23)=>A(10),I(24)=>A(11),
I(25)=>A(12),I(26)=>A(13),
I(27)=>A(14),I(28)=>A(15),
I(29)=>A(16),I(30)=>A(17),
I(31)=>A(18),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(19)
);

M20: mux32_1 port map(
I(0)=>A(20),
I(1)=>A(21),I(2)=>A(22),
I(3)=>A(23),I(4)=>A(24),
I(5)=>A(25),I(6)=>A(26),
I(7)=>A(27),I(8)=>A(28),
I(9)=>A(29),I(10)=>A(30),
I(11)=>A(31),I(12)=>A(0),
I(13)=>A(1),I(14)=>A(2),
I(15)=>A(3),I(16)=>A(4),
I(17)=>A(5),I(18)=>A(6),
I(19)=>A(7),I(20)=>A(8),
I(21)=>A(9),I(22)=>A(10),
I(23)=>A(11),I(24)=>A(12),
I(25)=>A(13),I(26)=>A(14),
I(27)=>A(15),I(28)=>A(16),
I(29)=>A(17),I(30)=>A(18),
I(31)=>A(19),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(20)
);

M21: mux32_1 port map(
I(0)=>A(21),
I(1)=>A(22),I(2)=>A(23),
I(3)=>A(24),I(4)=>A(25),
I(5)=>A(26),I(6)=>A(27),
I(7)=>A(28),I(8)=>A(29),
I(9)=>A(30),I(10)=>A(31),
I(11)=>A(0),I(12)=>A(1),
I(13)=>A(2),I(14)=>A(3),
I(15)=>A(4),I(16)=>A(5),
I(17)=>A(6),I(18)=>A(7),
I(19)=>A(8),I(20)=>A(9),
I(21)=>A(10),I(22)=>A(11),
I(23)=>A(12),I(24)=>A(13),
I(25)=>A(14),I(26)=>A(15),
I(27)=>A(16),I(28)=>A(17),
I(29)=>A(18),I(30)=>A(19),
I(31)=>A(20),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(21)
);

M22: mux32_1 port map(
I(0)=>A(22),
I(1)=>A(23),I(2)=>A(24),
I(3)=>A(25),I(4)=>A(26),
I(5)=>A(27),I(6)=>A(28),
I(7)=>A(29),I(8)=>A(30),
I(9)=>A(31),I(10)=>A(0),
I(11)=>A(1),I(12)=>A(2),
I(13)=>A(3),I(14)=>A(4),
I(15)=>A(5),I(16)=>A(6),
I(17)=>A(7),I(18)=>A(8),
I(19)=>A(9),I(20)=>A(10),
I(21)=>A(11),I(22)=>A(12),
I(23)=>A(13),I(24)=>A(14),
I(25)=>A(15),I(26)=>A(16),
I(27)=>A(17),I(28)=>A(18),
I(29)=>A(19),I(30)=>A(20),
I(31)=>A(21),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(22)
);

M23: mux32_1 port map(
I(0)=>A(23),
I(1)=>A(24),I(2)=>A(25),
I(3)=>A(26),I(4)=>A(27),
I(5)=>A(28),I(6)=>A(29),
I(7)=>A(30),I(8)=>A(31),
I(9)=>A(0),I(10)=>A(1),
I(11)=>A(2),I(12)=>A(3),
I(13)=>A(4),I(14)=>A(5),
I(15)=>A(6),I(16)=>A(7),
I(17)=>A(8),I(18)=>A(9),
I(19)=>A(10),I(20)=>A(11),
I(21)=>A(12),I(22)=>A(13),
I(23)=>A(14),I(24)=>A(15),
I(25)=>A(16),I(26)=>A(17),
I(27)=>A(18),I(28)=>A(19),
I(29)=>A(20),I(30)=>A(21),
I(31)=>A(22),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(23)
);

M24: mux32_1 port map(
I(0)=>A(24),
I(1)=>A(25),I(2)=>A(26),
I(3)=>A(27),I(4)=>A(28),
I(5)=>A(29),I(6)=>A(30),
I(7)=>A(31),I(8)=>A(0),
I(9)=>A(1),I(10)=>A(2),
I(11)=>A(3),I(12)=>A(4),
I(13)=>A(5),I(14)=>A(6),
I(15)=>A(7),I(16)=>A(8),
I(17)=>A(9),I(18)=>A(10),
I(19)=>A(11),I(20)=>A(12),
I(21)=>A(13),I(22)=>A(14),
I(23)=>A(15),I(24)=>A(16),
I(25)=>A(17),I(26)=>A(18),
I(27)=>A(19),I(28)=>A(20),
I(29)=>A(21),I(30)=>A(22),
I(31)=>A(23),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(24)
);

M25: mux32_1 port map(
I(0)=>A(25),
I(1)=>A(26),I(2)=>A(27),
I(3)=>A(28),I(4)=>A(29),
I(5)=>A(30),I(6)=>A(31),
I(7)=>A(0),I(8)=>A(1),
I(9)=>A(2),I(10)=>A(3),
I(11)=>A(4),I(12)=>A(5),
I(13)=>A(6),I(14)=>A(7),
I(15)=>A(8),I(16)=>A(9),
I(17)=>A(10),I(18)=>A(11),
I(19)=>A(12),I(20)=>A(13),
I(21)=>A(14),I(22)=>A(15),
I(23)=>A(16),I(24)=>A(17),
I(25)=>A(18),I(26)=>A(19),
I(27)=>A(20),I(28)=>A(21),
I(29)=>A(22),I(30)=>A(23),
I(31)=>A(24),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(25)
);

M26: mux32_1 port map(
I(0)=>A(26),
I(1)=>A(27),I(2)=>A(28),
I(3)=>A(29),I(4)=>A(30),
I(5)=>A(31),I(6)=>A(0),
I(7)=>A(1),I(8)=>A(2),
I(9)=>A(3),I(10)=>A(4),
I(11)=>A(5),I(12)=>A(6),
I(13)=>A(7),I(14)=>A(8),
I(15)=>A(9),I(16)=>A(10),
I(17)=>A(11),I(18)=>A(12),
I(19)=>A(13),I(20)=>A(14),
I(21)=>A(15),I(22)=>A(16),
I(23)=>A(17),I(24)=>A(18),
I(25)=>A(19),I(26)=>A(20),
I(27)=>A(21),I(28)=>A(22),
I(29)=>A(23),I(30)=>A(24),
I(31)=>A(25),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(26)
);

M27: mux32_1 port map(
I(0)=>A(27),
I(1)=>A(28),I(2)=>A(29),
I(3)=>A(30),I(4)=>A(31),
I(5)=>A(0),I(6)=>A(1),
I(7)=>A(2),I(8)=>A(3),
I(9)=>A(4),I(10)=>A(5),
I(11)=>A(6),I(12)=>A(7),
I(13)=>A(8),I(14)=>A(9),
I(15)=>A(10),I(16)=>A(11),
I(17)=>A(12),I(18)=>A(13),
I(19)=>A(14),I(20)=>A(15),
I(21)=>A(16),I(22)=>A(17),
I(23)=>A(18),I(24)=>A(19),
I(25)=>A(20),I(26)=>A(21),
I(27)=>A(22),I(28)=>A(23),
I(29)=>A(24),I(30)=>A(25),
I(31)=>A(26),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(27)
);

M28: mux32_1 port map(
I(0)=>A(28),
I(1)=>A(29),I(2)=>A(30),
I(3)=>A(31),I(4)=>A(0),
I(5)=>A(1),I(6)=>A(2),
I(7)=>A(3),I(8)=>A(4),
I(9)=>A(5),I(10)=>A(6),
I(11)=>A(7),I(12)=>A(8),
I(13)=>A(9),I(14)=>A(10),
I(15)=>A(11),I(16)=>A(12),
I(17)=>A(13),I(18)=>A(14),
I(19)=>A(15),I(20)=>A(16),
I(21)=>A(17),I(22)=>A(18),
I(23)=>A(19),I(24)=>A(20),
I(25)=>A(21),I(26)=>A(22),
I(27)=>A(23),I(28)=>A(24),
I(29)=>A(25),I(30)=>A(26),
I(31)=>A(27),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(28)
);

M29: mux32_1 port map(
I(0)=>A(29),
I(1)=>A(30),I(2)=>A(31),
I(3)=>A(0),I(4)=>A(1),
I(5)=>A(2),I(6)=>A(3),
I(7)=>A(4),I(8)=>A(5),
I(9)=>A(6),I(10)=>A(7),
I(11)=>A(8),I(12)=>A(9),
I(13)=>A(10),I(14)=>A(11),
I(15)=>A(12),I(16)=>A(13),
I(17)=>A(14),I(18)=>A(15),
I(19)=>A(16),I(20)=>A(17),
I(21)=>A(18),I(22)=>A(19),
I(23)=>A(20),I(24)=>A(21),
I(25)=>A(22),I(26)=>A(23),
I(27)=>A(24),I(28)=>A(25),
I(29)=>A(26),I(30)=>A(27),
I(31)=>A(28),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(29)
);

M30: mux32_1 port map(
I(0)=>A(30),
I(1)=>A(31),I(2)=>A(0),
I(3)=>A(1),I(4)=>A(2),
I(5)=>A(3),I(6)=>A(4),
I(7)=>A(5),I(8)=>A(6),
I(9)=>A(7),I(10)=>A(8),
I(11)=>A(9),I(12)=>A(10),
I(13)=>A(11),I(14)=>A(12),
I(15)=>A(13),I(16)=>A(14),
I(17)=>A(15),I(18)=>A(16),
I(19)=>A(17),I(20)=>A(18),
I(21)=>A(19),I(22)=>A(20),
I(23)=>A(21),I(24)=>A(22),
I(25)=>A(23),I(26)=>A(24),
I(27)=>A(25),I(28)=>A(26),
I(29)=>A(27),I(30)=>A(28),
I(31)=>A(29),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(30)
);

M31: mux32_1 port map(
I(0)=>A(31),
I(1)=>A(0),I(2)=>A(1),
I(3)=>A(2),I(4)=>A(3),
I(5)=>A(4),I(6)=>A(5),
I(7)=>A(6),I(8)=>A(7),
I(9)=>A(8),I(10)=>A(9),
I(11)=>A(10),I(12)=>A(11),
I(13)=>A(12),I(14)=>A(13),
I(15)=>A(14),I(16)=>A(15),
I(17)=>A(16),I(18)=>A(17),
I(19)=>A(18),I(20)=>A(19),
I(21)=>A(20),I(22)=>A(21),
I(23)=>A(22),I(24)=>A(23),
I(25)=>A(24),I(26)=>A(25),
I(27)=>A(26),I(28)=>A(27),
I(29)=>A(28),I(30)=>A(29),
I(31)=>A(30),S(4)=>sel(4),
S(3)=>sel(3),S(2)=>sel(2),
S(1)=>sel(1),S(0)=>sel(0),y=>ytemp(31)
);

Y<=ytemp;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux32_1 is
Port( I:in  STD_LOGIC_VECTOR(31 downto 0);
      S:in STD_LOGIC_VECTOR(4 downto 0);
		y:out STD_LOGIC);
end mux32_1;

architecture behave of mux32_1 is
begin

with S select
    y <= I(0)  when "00000",
         I(1)  when "00001",
         I(2)  when "00010",
         I(3)  when "00011",
			
			I(4)  when "00100",
			I(5)  when "00101",
			I(6)  when "00110",
			I(7)  when "00111",
			
			I(8)  when "01000",
			I(9)  when "01001",
			I(10) when "01010",
			I(11) when "01011",
			
			I(12) when "01100",
			I(13) when "01101",
			I(14) when "01110",
			I(15) when "01111",
			
			I(16) when "10000",
			I(17) when "10001",
			I(18) when "10010",
			I(19) when "10011",
			
			I(20) when "10100",
			I(21) when "10101",
			I(22) when "10110",
			I(23) when "10111",
			
			I(24) when "11000",
			I(25) when "11001",
			I(26) when "11010",
			I(27) when "11011",
			
			I(28) when "11100",
			I(29) when "11101",
			I(30) when "11110",
			I(31) when "11111",
         '0'  when others;
			end behave;