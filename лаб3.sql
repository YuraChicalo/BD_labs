USE[db_mylibrary1]
GO
ALTER TABLE Автори
ADD [кількість нагород] INT NOT NULL;

ALTER TABLE Читачі
DROP COLUMN Адреса

ALTER TABLE Читачі
ALTER COLUMN Вік int  NULL;

ALTER TABLE Працівники
ADD CHECK (Номер<=50 AND Номер>=0)