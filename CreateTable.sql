CREATE TABLE freinds (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends (
1,
'Ororo Munroe',
'1940-05-30'  
);

SELECT * FROM friends;

INSERT INTO friends(
  2,
  'Leticia Vitoria',
  '2001-06-30'
);

INSERT INTO friends (
3,
'Marcia Leite',
'1960-04-07'
);

UPDATE friends
SET name = 'STORM'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

DELETE FROM friends
WHERE id = 1;

SELECT * FROM friends;

