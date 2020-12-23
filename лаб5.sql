USE[db_mylibrary1]
GO

CREATE TABLE Працівники2 (
[id] [int] NOT NULL PRIMARY KEY,
	[Імя] [nvarchar](255) NOT NULL,
	[Прізвище] [nvarchar](255) NOT NULL,
	[Пошта] [nvarchar](255) NOT NULL,
	[Номер] [nvarchar](255) NOT NULL,
);

CREATE TABLE Працівники3 (
[id] [int] NOT NULL PRIMARY KEY,
	[Імя] [nvarchar](255) NOT NULL,
	[Прізвище] [nvarchar](255) NOT NULL,
	[Пошта] [nvarchar](255) NOT NULL,
	[Номер] [nvarchar](255) NOT NULL,
);

INSERT INTO Працівники2
VALUES (1, 'petro', 'sarri', 'petro.sarr@ukr.net', '380502556778'),
  (2, 'sasha', 'merza', 'sasha.merza@ukr.net', '380976553221'),
  (3, 'vasyl', 'mehes', 'vasyl.mehes@ukr.net', '380976554889'),
  (4, 'pavlo', 'dybun', 'pavlo.dub@ukr.net', '380971653228'),
  (5, 'yura', 'balagurak', 'yura.bal@ukr.net', '380975663221'),
  (6, 'oleh', 'babiy', 'oleh.b@ukr.net', '380976551231'),
  (7, 'rostuk', 'smolik', 'rostuk.sm@ukr.net', '380976598721')

INSERT INTO Працівники3
VALUES (1, 'petro', 'sarri', 'petro.sarr@ukr.net', '380502556778'),
  (2, 'ivan', 'vasulevuch', 'vania.v@ukr.net', '380976456221'),
  (3, 'vasyl', 'mehes', 'vasyl.mehes@ukr.net', '380976554889'),
  (4, 'oksana', 'veluka', 'oksa.vel@ukr.net', '380979873228'),
  (5, 'yura', 'balagurak', 'yura.bal@ukr.net', '380975663221'),
  (6, 'maria', 'mudra', 'm.mudra@ukr.net', '380976711231'),
  (7, 'rostuk', 'smolik', 'rostuk.sm@ukr.net', '380976598721')

SELECT * FROM Працівники2
UNION SELECT * FROM Працівники3

SELECT * FROM Працівники2
 WHERE Працівники2.[Імя]  IN (SELECT [Імя] FROM Працівники3);

SELECT * FROM Працівники2
 WHERE Працівники2.[Імя] NOT IN (SELECT [Імя] FROM Працівники3);

SELECT * FROM Працівники2, Працівники3;