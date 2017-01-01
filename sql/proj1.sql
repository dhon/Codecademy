-- PRO | Manipulation | Create Table | Freeform Project

-- 1. Create a table named friends with the following columns: id, name, and birthday
CREATE TABLE friends (id INTEGER, name TEXT, birthday DATE);

-- 2. Add Jane Doe to friends. Her birthday is May 19th, 1993.
INSERT INTO friends (id, name, birthday) VALUES (1, 'Jane Doe', '1993-05-19');
-- 3. Add three more of your friends to friends.
INSERT INTO friends (id, name, birthday) VALUES (2, 'Jessie Rocket', '1990-10-14');
INSERT INTO friends (id, name, birthday) VALUES (3, 'James Rocket', '1990-05-17');
INSERT INTO friends (id, name, birthday) VALUES (4, 'Ash Ketchum', '1994-11-14');

-- 4. Jane Doe just got married! Her new last name is Smith.
--    Update her record in your database.
UPDATE friends
SET name = 'Jane Smith'
WHERE id IS 1;

-- 5. Add a new column to your table named email.
ALTER TABLE friends ADD COLUMN email TEXT;

-- 6. Update the email address for each friend in your table.
--    Jane Doe's email is jdoe@example.com.
UPDATE friends
SET email = 'hello@world.com'
WHERE id IS NOT NULL;

-- 7. Jane Doe is not a real person. Remove her from friends.
DELETE FROM friends WHERE id IS 1;

-- View Database
SELECT * from friends;