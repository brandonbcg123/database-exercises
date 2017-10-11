USE codeup_test_db;

SELECT *
FROM albums;

SELECT id, artist AS 'Artist:', name AS 'Album:', release_date AS 'Release Date:'
FROM albums
WHERE release_date < 1980;

SELECT id, artist AS 'Artist:', name AS 'Album:'
FROM albums
WHERE artist = 'Michael Jackson';

-- UPDATE albums
-- SET
-- WHERE;

-- SELECT *
-- FROM albums;