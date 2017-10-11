USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS '';
SELECT name AS 'Album Names:'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT release_date AS 'Release Date:'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS '';
SELECT genre AS 'Genres:'
FROM albums
WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS '';
SELECT name AS 'Album Names:', release_date AS 'Release Date:'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS '';
SELECT name AS 'Album Names:', sales AS 'Sales'
FROM albums
WHERE sales < 20.0;

SELECT 'All the albums with a genre of "Rock"' AS '';
SELECT name AS 'Album Names:', genre AS 'Genre:'
FROM albums
WHERE genre = 'Rock';

-- The query results do not include albums with a genre of "Hard rock" or "Progressive rock" because there is a genre of 'Rock' all by itself, which I limited it with the = operator to find only that specific value.