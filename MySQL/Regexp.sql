


######################## REGEX #####################################
select * from users;

-- penCocokkan awal string (^): Memberikan/menampilkan semua nama yang dimulai dengan 'd'. Contoh- sam, samarth.
SELECT username FROM users WHERE username REGEXP '^d';

SELECT username FROM users WHERE username REGEXP '^a';

SELECT username FROM users WHERE username REGEXP '^c';

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
