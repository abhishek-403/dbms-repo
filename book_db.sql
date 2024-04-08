
select 

-- CREATE TABLE author (
--   authorid INT PRIMARY KEY,
--   name VARCHAR(255) NOT NULL,
--   birthyear INT,
--   deathyear INT
-- );

-- CREATE TABLE book (
--   bookid INT PRIMARY KEY,
--   authorid INT,
--   title VARCHAR(255) NOT NULL,
--   publishyear INT,
--   publishinghouse VARCHAR(255),
--   rating FLOAT,
--   FOREIGN KEY (authorid) REFERENCES author(authorid)
-- );

-- CREATE TABLE adaptation (
--   bookid INT,
--   type VARCHAR(255) NOT NULL,
--   title VARCHAR(255) NOT NULL,
--   releaseyear INT,
--   rating FLOAT,
--   PRIMARY KEY (bookid, title),
--   FOREIGN KEY (bookid) REFERENCES book(bookid)
-- );

-- CREATE TABLE bookreview (
--   bookid INT,
--   review TEXT,
--   author VARCHAR(255),
--   FOREIGN KEY (bookid) REFERENCES book(bookid)
-- );


-- INSERT INTO author (authorid, name, birthyear, deathyear)
-- VALUES
--   (1, 'Jane Austen', 1775, 1817),
--   (2, 'Mark Twain', 1835, 1910),
--   (3, 'Gabriel Garcia Marquez', 1927, 2014),
--   (4, 'Chimamanda Ngozi Adichie', 1977, NULL);


-- INSERT INTO book (bookid, authorid, title, publishyear, publishinghouse, rating)
-- VALUES
--   (1, 1, 'Pride and Prejudice', 1813, 'Penguin Classics', 4.8),
--   (2, 2, 'The Adventures of Tom Sawyer', 1876, 'HarperCollins', 4.3),
--   (3, 3, 'One Hundred Years of Solitude', 1967, 'Vintage Books', 4.7),
--   (4, 4, 'Americanah', 2013, 'Penguin Random House', 4.5);

-- INSERT INTO adaptation (bookid, type, title, releaseyear, rating)
-- VALUES
--   (1, 'Movie', 'Pride & Prejudice (2005)', 2005, 4.2),
--   (1, 'TV Series', 'Pride and Prejudice (1995)', 1995, 4.4),
--   (2, 'Movie', 'The Adventures of Tom Sawyer (1938)', 1938, 3.8),
--   (3, 'Movie', 'One Hundred Years of Solitude (2023)', 2023, 4.1);

-- INSERT INTO bookreview (bookid, review, author)
-- VALUES
--   (1, 'A timeless classic that captures the essence of love and society.', 'John Smith'),
--   (2, 'A hilarious and heartwarming coming-of-age story.', 'Jane Doe'),
--   (3, 'A masterpiece of magical realism that explores time, memory, and family.', 'Alex Brown');
