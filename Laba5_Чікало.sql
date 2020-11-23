CREATE TABLE books1
     AS SELECT * FROM books
     WHERE id IN(1, 3, 4, 5, 8, 10, 11, 13, 15);

CREATE TABLE books2
     AS SELECT * FROM books
     WHERE id IN(1, 5, 8, 13, 2, 7, 12, 9);

SELECT * FROM books1
     UNION SELECT * FROM books2;

SELECT * FROM books1
     WHERE id IN (SELECT id FROM books2);
     
SELECT * FROM books2
     WHERE id NOT IN(SELECT id FROM books1);

SELECT * FROM books1, books2;

