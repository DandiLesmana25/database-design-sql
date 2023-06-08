######################## JOINT #####################################
show tables;

CREATE TABLE playlist (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  playlist_name VARCHAR(100) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO playlist 
(user_id, playlist_name)
VALUES
  (1, 'My Playlist'),
  (1, 'Favorite Songs'),
  (1, 'Workout Mix'),
  (2, 'Chill Vibes');
  
select playlist.playlist_name, users.username
FROM users
JOIN playlist ON users.id = playlist.user_id;

SELECT users.username, playlist.playlist_name
FROM users
LEFT JOIN playlist ON users.id = playlist.user_id;

SELECT users.username, playlist.playlist_name
FROM users
RIGHT JOIN playlist ON users.id = playlist.user_id;

SELECT users.username, playlist.playlist_name
FROM users
inner JOIN playlist ON users.id = playlist.user_id;


######################## JOINT #####################################


######################## GROUP FUNCTION #####################################

CREATE TABLE songs (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  artist VARCHAR(255),
  duration INT
);

INSERT INTO songs (id, title, artist, duration)
VALUES
  (1, 'Song A', 'Artist X', 180),
  (2, 'Song B', 'Artist Y', 210),
  (3, 'Song C', 'Artist X', 195),
  (4, 'Song D', 'Artist Z', 240),
  (5, 'Song E', 'Artist Y', 175);

select * from songs 

SELECT COUNT(*) AS total_songs
FROM songs;

SELECT COUNT(artist) AS total_artist
FROM songs;

SELECT SUM(duration) AS total_duration
FROM songs
WHERE artist = 'Artist X';

SELECT SUM(duration) AS total_duration
FROM songs
WHERE artist = 'Artist z';

SELECT AVG(duration) AS average_duration
FROM songs;

SELECT MIN(duration) AS min_duration
FROM songs;

SELECT MAX(duration) AS max_duration
FROM songs;

SELECT MAX(duration) AS Max_duration
FROM songs;





######################## SUBQUERIES #####################################

SELECT SUM(duration) AS total_duration
FROM songs; # 1000

SELECT AVG(duration) FROM songs;

-- output :200

SELECT SUM(duration) AS total_duration
FROM songs
WHERE duration > (SELECT AVG(duration) FROM songs);


######################## SUBQUERIES #####################################


######################## VIEW #####################################


CREATE VIEW song_details AS
SELECT id, title, artist, duration
FROM songs;

show tables;


CREATE VIEW song_title AS
SELECT id, title
FROM songs;

select  * from songs;

SELECT * FROM song_details;


SELECT * FROM song_title;


SELECT table_name
FROM information_schema.views
WHERE table_schema = 'study-kasus-db';


######################## VIEW #####################################


######################## SEQUENCE #####################################


CREATE SEQUENCE song_id_sequence
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000
    CYCLE;


show tables; 



######################## SEQUENCE #####################################
