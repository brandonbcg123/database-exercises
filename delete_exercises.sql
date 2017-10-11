USE codeup_test_db;

SELECT name AS 'Album Name:', release_date AS 'Release Date'
FROM albums
WHERE release_date > 1991;

SELECT name AS 'Album Name:', genre AS 'Genre'
FROM albums
WHERE genre = 'disco';

SELECT name AS 'Album Name:', artist AS 'Artist:'
FROM albums
WHERE artist = 'Whitney Houston';