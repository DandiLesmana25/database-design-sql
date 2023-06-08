######################## CASE AND CHARACTER MANIPULATION #####################################

show tables;

select *from users

SELECT username,
       CASE
         WHEN email LIKE '%@example.com' THEN 'Example Domain'
         ELSE 'Non-Example Domain'
       END AS domaintype
FROM users;

SELECT username,
       LOWER(email) AS lower_email,
       UPPER(password) AS upper_password
FROM users;


SELECT CONCAT(username, ' (', email, ')') AS user_info
FROM users;

# Mengambil 3 karakter pertama dari kolom "username"
SELECT SUBSTRING(username, 1, 3) AS initials
FROM users;

# Mengganti setiap karakter "@" dalam kolom "email" dengan string "[at]"
SELECT REPLACE(email, '@', '[at]') AS modified_email
FROM users;

SELECT username, LENGTH(username) AS username_length
FROM users;

SELECT TRIM(username) AS trimmed_username
FROM users;

select username from users;

SELECT TRIM('   Hello World   ') AS trim;

SELECT LEFT(username, 3) AS left_chars,
       RIGHT(email, 5) AS right_chars
FROM users;

SELECT username, INSTR(username, 'ung') AS substring_position
FROM users;

######################## CASE AND CHARACTER MANIPULATION #####################################