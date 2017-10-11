USE codeup_test_db;

-- SELECT 'Below are the albums in the table released after 1991' AS '';
DELETE FROM albums WHERE release_date > 1991;

-- SELECT 'Below are the albums in the table with the genre "disco"' AS '';
DELETE FROM albums WHERE genre = 'disco';

-- SELECT 'Below are the albums in the table by Whitney Houston' AS '';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM  albums;