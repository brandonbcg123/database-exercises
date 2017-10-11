USE codeup_test_db;

SELECT *
FROM albums;

SELECT '------------------------------------------------------';

SELECT id, artist AS 'Artist:', name AS 'Album:', sales AS 'Sales:'
FROM albums;

SELECT '------------------------------------------------------' AS '';

UPDATE albums
SET sales = (sales * 10);

SELECT id, artist AS 'Artist:', name AS 'Album:', sales AS 'Sales:'
FROM albums;

SELECT '------------------------------------------------------';

SELECT id, artist AS 'Artist:', name AS 'Album:', release_date AS 'Release Date:'
FROM albums
WHERE release_date < 1980;

SELECT '------------------------------------------------------' AS '';

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;


SELECT id, artist AS 'Artist:', name AS 'Album:', release_date AS 'Release Date:'
FROM albums
WHERE release_date < 1980;

SELECT '------------------------------------------------------';

SELECT id, artist AS 'Artist:', name AS 'Album:'
FROM albums
WHERE artist = 'Michael Jackson';

SELECT '------------------------------------------------------' AS '';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT id, artist AS 'Artist:', name AS 'Album:'
FROM albums
WHERE artist = 'Peter Jackson';