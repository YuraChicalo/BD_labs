INSERT INTO readers VALUES(2, '12345', 'Maryna', 'Melnychuk', 'marynamelnychu@gmail.com', '0977616800', 'Lviv, Fedkovicha, 2');

INSERT INTO readers
    VALUES (3, '23456', 'Irina', 'Rishko', 'rishko@gmail.com',    '0987612340', 'Lviv, Shevchenka 111a'),
     (4, '34567', 'Elizaveta', 'Kozuirman', 'koziurman@gmail.com',    '0976512309', 'Lviv, Lazarenka, 38'),
     (5, '45678', 'Vasilina', 'Skorohoda', 'skorohoda#gmail.com',    '0987612345', 'Lukasha, 5');
     
     LOAD DATA INFILE ' workers_data.txt ' INTO TABLE workes
           FIELDS TERMINATED BY ' '
           LINES TERMINATED BY '\r\n';

LOAD DATA INFILE ' ph_data.txt ' INTO TABLE publishing_houses
           FIELDS TERMINATED BY ','
           LINES TERMINATED BY '\r\n';

UPDATE readers SET id = id + 1
ORDER BY id DESC;

DELETE FROM workers
    WHERE address LIKE 'Khmelnitskiy%';
