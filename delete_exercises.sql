USE codeup_test_db;

SELECT 'Below are the albums in the table released after 1991' AS '';
SELECT id, name AS 'Album Name:', release_date AS 'Release Date'
FROM albums
WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Below are the albums in the table with the genre "disco"' AS '';
SELECT id, name AS 'Album Name:', genre AS 'Genre'
FROM albums
WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Below are the albums in the table by Whitney Houston' AS '';
SELECT id, name AS 'Album Name:', artist AS 'Artist:'
FROM albums
WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM  albums;