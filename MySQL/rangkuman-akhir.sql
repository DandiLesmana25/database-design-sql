########################### insert ######################################
-- INSERT digunakan untuk menambahkan baris data baru ke dalam tabel .

-- query===>>>> 
    
# Perintah untuk insert data ke tabel users

insert into users 
(id, username, email, password)
values
(5,"ucup", "ucup@gmail.com", "passsword123");


insert into users 
(id, username, email, password)
values
(6,"adeee","ade@gmail.om","paswoerrrr");


insert into users 
(id, username,email , password  )
values
(7,"ade", "de@gmail.com", "passwwewrwer2324");


########################### update ######################################
-- pernyataan UPDATE digunakan untuk mengubah nilai lama menjadi sebuah nilai baru pada sebuah basis data SQL.
-- UPDATE disandingkan dengan pernyataan WHERE untuk mengetahui nilai yang akan diubah.

select * from users u ;


# Perintah untuk update data 
update users 
set email = "ajiwahyu@gmail.com" where id = 4;


update users  
set email = "adetamvans@gmail.com" where username = "ade";

update users 
set id = 8 where username  = "ucup";


########################### Delete ######################################

select * from users;

DELETE FROM users where id = 8;

delete from users where username  = "ade";



########################### select ######################################
select * from users u ;

select  id, username from users u ;

select email from users;



########### WHERE ##############

-- select + operator tidak sama dengan
SELECT *
FROM users
WHERE username <> 'Dandi Lesmana';

SELECT *
FROM users
WHERE username != 'Dandi Lesmana';

SELECT *
FROM users
WHERE id != 1;

SELECT *
FROM users
WHERE username = 'Agung Triatna' OR email = 'dandi@example.com';

########### end WHERE ##############




########### 2 ORDER BY ##############
-- Order by membantu dalam proses pengurutan data.

-- Order by digunakan sebagai operator untuk menyusun data berurutan dari  kecil ke besar(ascending) 
-- atau besar ke kecil(descending)


# Mengurutkan data berdasarkan kolom "email" secara descending
SELECT *
FROM users
order by email desc ;

SELECT *
FROM users
order by email asc  ;

select username
from users u 
order by username asc;


SELECT *
FROM users
ORDER BY id DESC, username ASC;

########### ORDER BY ##############



##################p3->>>>>(case and character manipulation)################

select *from users

# Mengambil 3 karakter pertama dari kolom "username"
SELECT SUBSTRING(username, 1, 3) AS initials
FROM users;

SELECT username,
       LOWER(email) AS lower_email,
       UPPER(password) AS upper_password
FROM users;

select lower(username) as lower_username
from users u ;



########################p4->>>>>(Join)#########################
-- table playlist 

select playlist.playlist_name, users.username
FROM users
JOIN playlist ON users.id = playlist.user_id;

SELECT users.username, playlist.playlist_name
FROM users
LEFT JOIN playlist ON users.id = playlist.user_id;


######################## GROUP FUNCTION #####################################
-- use table songs 


select * from songs 

SELECT COUNT(*) AS total_songs
FROM songs;

SELECT COUNT(artist) AS total_artist
FROM songs;


SELECT SUM(duration) AS total_duration
FROM songs
WHERE artist = 'Artist X';

SELECT MIN(duration) AS min_duration
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


SELECT MAX(duration) AS max_duration
FROM songs;


-- untuk menghitung total durasi lagu-lagu yang memiliki durasi lebih dari rata-rata durasi lagu di tabel songs.
SELECT SUM(duration) AS total_duration
FROM songs
WHERE duration > (SELECT AVG(duration) FROM songs);



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
-- VIEW akan berperilaku seolah-olah itu adalah subquery. Umumnya dalam memperlihatkan 
-- data yang ingin kita tampilkan adalah menggunakan SELECT dan FROM 

show tables


######################## SEQUENCE #####################################


CREATE SEQUENCE song_id_sequence
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000
    CYCLE;


show tables; 



######################## SEQUENCE #####################################



######################## REGEX #####################################
select * from users;

-- penCocokkan awal string (^): Memberikan/menampilkan semua nama yang dimulai dengan 'd'. Contoh- sam, samarth.
SELECT username FROM users WHERE username REGEXP '^d';

SELECT username FROM users WHERE username REGEXP '^a';

SELECT username FROM users WHERE username REGEXP '^c';

select username from users u  where username  regexp  '^u';

-- 
-- Cocokkan akhiran string($): Memberikan semua nama yang diakhiri dengan 'a'


SELECT username FROM users WHERE username REGEXP 'a$';

SELECT username FROM users WHERE username REGEXP 'na$';

SELECT username FROM users WHERE username REGEXP 'ni$';

-- --Mencocokkan nol atau satu turunan dari string sebelumnya(?): Memberikan semua email yang mengandung com
select  * from users;


SELECT email FROM users WHERE email REGEXP 'com?'; 

SELECT email FROM users WHERE email REGEXP 'd?'; 

SELECT username FROM users WHERE username REGEXP 'd?';


-- Mencocokkan awal semua kata dengan karakter apa pun yang tercantum di antara tanda kurung siku.(^[abc]): 
SELECT username FROM users WHERE username REGEXP '^[d]' ;