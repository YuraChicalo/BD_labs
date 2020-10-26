ALTER TABLE books 
DROP FOREIGN KEY fk_publishing_house_id;

ALTER TABLE books 
DROP INDEX fk_publishing_house_id_idx;

ALTER TABLE authors
MODIFY COLUMN surname VARCHAR(80);

ALTER TABLE books_with_code
MODIFY id INT(32) UNSIGNED NOT NULL,
ADD COLUMN code CHAR(11) not null,
ADD CONSTRAINT UNIQUE uq_code_book (id, code);

ALTER TABLE books_with_code
DROP FOREIGN KEY fk_book_id,
ADD CONSTRAINT fk_book_id2 FOREIGN KEY (book_id)
REFERENCES books (id) ON DELETE CASCADE;


