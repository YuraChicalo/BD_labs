CREATE VIEW view_books
     AS SELECT id, name, genre
     FROM books;

SELECT * FROM view_books
     WHERE genre = 'fantasy' OR genre = 'general';

SELECT view_books2.id, view_books2.name, view_books2.genre, publishing_houses.id, publishing_houses.name,
     publishing_houses.email
     FROM view_books2, publishing_houses
     WHERE publishing_houses.id = view_books2.ph_id;

SELECT view_lending.id FROM view_returning, view_lending
     WHERE view_returning.id = view_lending.id
     AND view_returning.date < view_lending.date;

