-- PRO | Multiple Tables | Querying Tables | Freeform Project

-- These two tables already exist.
-- artists(id INTEGER, name TEXT)
-- albums(id INTEGER, name TEXT, artist_id INTEGER, year INTEGER)

-- 1. Create a table named tracks with an id, title, and album_id column. The id column should be the PRIMARY KEY.
CREATE TABLE tracks(id INTEGER PRIMARY KEY, title TEXT, album_id INTEGER);

-- 2. "Smooth Criminal" is a track from Michael Jackson's "Bad" album. Add this track to the database.
INSERT INTO tracks VALUES (1, 'Smooth Criminal', 8);

-- 3. Add more tracks to the database.
INSERT INTO tracks VALUES (2, 'Express Yourself', 10);
INSERT INTO tracks VALUES (3, 'Speak to Me', 11);
INSERT INTO tracks VALUES (4, 'In The Flesh?', 14);

-- 4. Combine the albums and tracks tables using an INNER JOIN. Order the query by album_id.
SELECT albums.name, tracks.title FROM albums
JOIN tracks ON albums.id = tracks.album_id;

-- 5. Combine the albums and artists table using a LEFT OUTER JOIN. Let albums be the left table.
SELECT * FROM albums
LEFT JOIN tracks ON albums.artist_id = tracks.id;

-- 6. Combine the albums and artists table using a LEFT OUTER JOIN. Let artists be the left table.
SELECT * FROM artists
LEFT JOIN albums ON albums.artist_id = artists.id;

-- 7. Use any join you like to combine the albums and tracks table. Rename the album_id column to Albums.
SELECT tracks.album_id AS 'Albums', albums.name FROM tracks
JOIN albums ON albums.id = tracks.album_id;