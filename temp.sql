1.DDL COMMANDS
-- Create AUTHOR table
CREATE TABLE AUTHOR (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birth_year INTEGER,
    death_year INTEGER
);

-- Create BOOK table
CREATE TABLE BOOK (
    book_id SERIAL PRIMARY KEY,
    author_id INTEGER REFERENCES AUTHOR(author_id),
    title VARCHAR(255) NOT NULL,
    publish_year INTEGER,
    publishing_house VARCHAR(255),
    rating FLOAT
);

-- Create ADAPTATION table
CREATE TABLE ADAPTATION (
    adaptation_id SERIAL PRIMARY KEY,
    book_id INTEGER REFERENCES BOOK(book_id),
    type VARCHAR(50) NOT NULL,
    title VARCHAR(255) NOT NULL,
    release_year INTEGER,
    rating FLOAT
);

-- Create BOOK_REVIEW table
CREATE TABLE BOOK_REVIEW (
    review_id SERIAL PRIMARY KEY,
    book_id INTEGER REFERENCES BOOK(book_id),
    review TEXT,
    review_author VARCHAR(255) NOT NULL
);

2.DML Commands

-- Insert data into AUTHOR table
INSERT INTO AUTHOR (name, birth_year, death_year) VALUES
('Jane Austen', 1775, 1817),
('Charles Dickens', 1812, 1870),
('Agatha Christie', 1890, 1976);

-- Insert data into BOOK table
INSERT INTO BOOK (author_id, title, publish_year, publishing_house, rating) VALUES
(1, 'Pride and Prejudice', 1813, 'T. Egerton', 4.5),
(2, 'Great Expectations', 1861, 'Chapman & Hall', 4.2),
(3, 'Murder on the Orient Express', 1934, 'Collins Crime Club', 4.7);

-- Insert data into ADAPTATION table
INSERT INTO ADAPTATION (book_id, type, title, release_year, rating) VALUES
(1, 'Movie', 'Pride and Prejudice', 2005, 7.8),
(2, 'Movie', 'Great Expectations', 2012, 6.4),
(3, 'Movie', 'Murder on the Orient Express', 2017, 6.5);

-- Insert data into BOOK_REVIEW table
INSERT INTO BOOK_REVIEW (book_id, review, review_author) VALUES
(1, 'A classic romance novel.', 'John Doe'),
(2, 'A gripping tale of ambition and love.', 'Jane Smith'),
(3, 'A thrilling murder mystery with a twist.', 'Alice Johnson');

3. Aggregate Functions

SELECT MAX(birth_year) AS max_birth_year
FROM AUTHOR;

SELECT SUM(death_year) AS total_death_years
FROM AUTHOR;

4. Adding Time Functionality

-- Alter the BOOK table to add a new column for insertion time
ALTER TABLE BOOK
ADD COLUMN insert_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

5.Implementing JOINS
SELECT b.title AS book_title, b.publish_year, a.name AS author_name
FROM BOOK b
JOIN AUTHOR a ON b.author_id = a.author_id;


6. Creating Views 
CREATE VIEW BookDetails AS
SELECT b.book_id, b.title AS book_title, b.publish_year, a.name AS author_name
FROM BOOK b
INNER JOIN AUTHOR a ON b.author_id = a.author_id;


-- Example query to retrieve book details from BookDetails view
SELECT * FROM BookDetails;

7.Triggers in SQL

CREATE OR REPLACE FUNCTION avg_rating_by_author(p_author_id INTEGER)
RETURNS FLOAT AS $$
DECLARE
    avg_rating FLOAT;
BEGIN
    SELECT AVG(rating) INTO avg_rating
    FROM BOOK
    WHERE author_id = p_author_id;

    RETURN avg_rating;
END;
$$ LANGUAGE plpgsql;


Using Triggers
-- Example: Calculate the average rating for books written by an author with author_id = 1
SELECT avg_rating_by_author(1) AS average_rating;

