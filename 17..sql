use cookpad

INSERT INTO user (email , password, role, email_validate, status)
VALUES ('aryasuhendi@gmail.com', 'agusgans', 'user', 'admin@gmail.com', 'aktif');

INSERT INTO user (email , password, role, email_validate, status)
VALUES ('asepp@gmail.com', 'asepgans', 'user', 'admin@gmail.com', 'aktif');

INSERT INTO user (email , password, role, email_validate, status)
VALUES ('ahmad@gmail.com', 'ahmadgans', 'user', 'admin@gmail.com', 'aktif');

update user (email , password, role, email_validate, status)
set ('ahmad@gmail.com', 'ahmadgans', 'user', 'admin@gmail.com', 'aktif');


UPDATE `user` 
SET email = 'dede@gmaol.com' WHERE email ='ahmad@gmail.com';


UPDATE `user` 
SET email = 'udin@gmail.com' WHERE email ='aryasuhendi@gmail.com';


UPDATE `user` 
SET email = 'vika@gmail.com' WHERE email ='agus@gmail.com';

UPDATE `user` 
SET email = 'vika@gmail.com' WHERE email ='agus@gmail.com';

-- cara 

-- //delete data 
DELETE FROM user WHERE email ='udin@gmaol.com';


-- trancet syntax

TRUNCATE TABLE user;


