USE[db_mylibrary1]
GO

CREATE VIEW Працівники_1 AS SELECT DISTINCT  Імя, Прізвище, 
 Номер, Вік_працівника
FROM Працівники;

SELECT *
FROM Працівники_1
WHERE (Працівники_1.Вік_працівника)>25

SELECT *
FROM Книги, Видавництва
WHERE Книги.id_видавництва = Видавництва.id;

SELECT *
FROM Книги, Видавництва
WHERE Книги.id_видавництва = Видавництва.id AND Книги.Імя Like 'c%';


