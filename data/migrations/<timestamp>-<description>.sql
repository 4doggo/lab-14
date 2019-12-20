1576868722815
Query 1: CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));

-- creating second database

1576868850714
Query 2: INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;

-- it will retrieve unique bookshelf values from the table

1576868989586
Query 3: ALTER TABLE books ADD COLUMN bookshelf_id INT;
-- add a column to the books table 

1576869100048
Query 4: UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;
-- prepare a connection between the two tables

1576869196384
Query 5: ALTER TABLE books DROP COLUMN bookshelf;
-- will modify the books table by removing the column named bookshelf

1576869289710
ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);
--will modify the data type of bookshelf_id in the books table