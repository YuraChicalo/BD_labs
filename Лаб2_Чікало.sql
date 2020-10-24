CREATE DATABASE db_library;

CREATE TABLE db_library.authors (
   id int(11) NOT NULL AUTO_INCREMENT,
   country varchar(70) NOT NULL,
   name varchar(75) NOT NULL,
   surname varchar(100) NOT NULL,
   birth_date date NOT NULL,
   date_of_death date NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id)
);

CREATE TABLE db_library.publishing_houses (
   id int(11) NOT NULL AUTO_INCREMENT,
   name varchar(100) NOT NULL,
   email varchar(100) NOT NULL,
   phone varchar(13) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  UNIQUE KEY email_UNIQUE (email),
  UNIQUE KEY phone_UNIQUE (phone)
);

CREATE TABLE db_library.books (
   id int(11) NOT NULL AUTO_INCREMENT,
   name varchar(100) NOT NULL,
   annotation varchar(450) DEFAULT NULL,
   language varchar(40) NOT NULL,
   genre varchar(40) NOT NULL,
   ph_id int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  CONSTRAINT fk_publishing_house_id FOREIGN KEY (ph_id) REFERENCES db_library.publishing_houses (id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE db_library.author_books (
   author_id int(11) NOT NULL,
   book_id int(11) NOT NULL,
  CONSTRAINT fk_author_book_id FOREIGN KEY (author_id) REFERENCES db_library.authors (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_book_author_id FOREIGN KEY (book_id) REFERENCES db_library.books (id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE db_library.books_with_code (
   id int(11) NOT NULL AUTO_INCREMENT,
   book_id int(11) NOT NULL,
   code char(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  UNIQUE KEY code_UNIQUE (code),
  CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES db_library.books (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE db_library.workers (
   id int(11) NOT NULL AUTO_INCREMENT,
   name varchar(75) NOT NULL,
   surname varchar(100) NOT NULL,
   position varchar(50) NOT NULL,
   email varchar(100) NOT NULL,
   phone varchar(13) NOT NULL,
   address varchar(150) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  UNIQUE KEY phone_UNIQUE (phone),
  UNIQUE KEY email_UNIQUE (email)
);

CREATE TABLE db_library.readers (
   id int(11) NOT NULL AUTO_INCREMENT,
   ticket char(6) NOT NULL,
   name varchar(75) NOT NULL,
   surname varchar(100) NOT NULL,
   email varchar(100) NOT NULL,
   phone varchar(13) NOT NULL,
   address varchar(150) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY  id_UNIQUE (id),
  UNIQUE KEY  ticket_UNIQUE (ticket),
  UNIQUE KEY  email_UNIQUE (email),
  UNIQUE KEY  phone_UNIQUE (phone)
);

CREATE TABLE db_library.operation (
   id int(11) NOT NULL AUTO_INCREMENT,
   name varchar(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY name_UNIQUE (name),
  UNIQUE KEY id_UNIQUE (id)
);

CREATE TABLE db_library.lending (
   id int(11) NOT NULL AUTO_INCREMENT,
   book_id int(11) NOT NULL,
   reader_id int(11) NOT NULL,
   date date NOT NULL,
   operation_id int(11) NOT NULL,
   worker_id int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  CONSTRAINT fk_book_with_code_id FOREIGN KEY (book_id) REFERENCES db_library.books_with_code (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_reader_id FOREIGN KEY (reader_id) REFERENCES db_library.readers (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT fk_operation_id2 FOREIGN KEY (operation_id) REFERENCES operation(id),
  CONSTRAINT fk_worker_id FOREIGN KEY (worker_id) REFERENCES db_library.workers (id) ON DELETE NO ACTION ON UPDATE NO ACTION
);




