USE[db_mylibrary1]
GO

INSERT INTO Працівники
VALUES (4, 'pavlo', 'dybun', 'pavlo.dub@ukr.net', '380971653228');

INSERT INTO Працівники
VALUES (5, 'petro', 'sarri', 'petro.sarr@ukr.net', '380502556778'),
  (6, 'sasha', 'merza', 'sasha.merza@ukr.net', '380976553221'),
  (7, 'vasyl', 'mehes', 'vasyl.mehes@ukr.net', '380976554889')

UPDATE Працівники
  SET Імя='nazar'
  WHERE id='3'

DELETE
  FROM Працівники
   WHERE id='6'
