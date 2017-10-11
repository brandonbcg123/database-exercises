USE codeup_test_db;

SELECT 'Below are the albums in the table released after 1991' AS '';
SELECT name AS 'Album Name:', release_date AS 'Release Date'
FROM albums
WHERE release_date > 1991;

SELECT 'Below are the albums in the table with the genre "disco"' AS '';
SELECT name AS 'Album Name:', genre AS 'Genre'
FROM albums
WHERE genre = 'disco';

SELECT 'Below are the albums in the table by Whitney Houston' AS '';
SELECT name AS 'Album Name:', artist AS 'Artist:'
FROM albums
WHERE artist = 'Whitney Houston';