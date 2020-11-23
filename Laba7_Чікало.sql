SELECT library.lending.id, library.lending.book_id, library.readers.ticket,
library.readers.name, library.readers.surname, library.lending.date,
library.lending.operation_id, library.lending.worker_id
FROM library.readers LEFT JOIN library.lending 
ON library.readers.id = library.lending.reader_id;

SELECT library.books.id, library.books.name, COUNT(library.books.id) 
FROM library.books INNER JOIN library.books_with_code
ON library.books.id = library.books_with_code.book_id
GROUP BY library.books.id
HAVING COUNT(library.books.id) > 1;

SELECT library.books.id, library.books.name, library.books.genre, library.authors.surname, library.authors.name, library.authors.country 
FROM (library.author_books INNER JOIN library.books) INNER JOIN library.authors
ON library.books.id = library.author_books.book_id
AND library.authors.id = library.author_books.author_id
WHERE library.authors.surname = 'Vonnegut';

SELECT library.books.id, library.books.name, library.books.genre, library.books.language,
library.author_books.author_id FROM library.books
INNER JOIN library.author_books ON library.books.id = library.author_books.book_id
WHERE library.author_books.author_id IN (SELECT id FROM library.authors WHERE library.authors.country = 'United States')
ORDER BY id DESC LIMIT 4;

SELECT * FROM library.workers
WHERE NOT EXISTS
(SELECT library.lending.worker_id FROM library.lending 
WHERE lending.worker_id = workers.id);

SELECT * FROM library.readers
WHERE CHAR_LENGTH(library.readers.ticket)!=5 
AND library.readers.ticket NOT REGEXP '[0-9]';

