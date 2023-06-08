
show tables;

select * from table_penumpang tp

create VIEW [penumpang] AS
select no, nama
from table_penumpang
where riwayat_penyakit = 'Asma';


CREATE TABLE Penjualan (
    Id int,
    Nama varchar(50),
    Barang varchar(50),
    Jumlah int
);

INSERT INTO Penjualan VALUES (1,'Joni','Sabun',2);
INSERT INTO Penjualan VALUES (1,'Tera','teh',4);
INSERT INTO Penjualan VALUES (1,'Andra','Sabun',3);
INSERT INTO Penjualan VALUES (1,'Joni','Sapu',1);
INSERT INTO Penjualan VALUES (1,'Tera','Gelas',2);
INSERT INTO Penjualan VALUES (1,'Joni','Mie',2);

select * from penjualan p ;


SELECT nama_kolom,nama_kedua
FROM nama_tabel
GROUP BY nama_kolom,nama_kedua

SELECT Nama
FROM penjualan p
GROUP BY Nama;

SELECT Nama, count(barang) as jumlah_barang
FROM penjualan p 
GROUP BY Nama

describe penjualan 

SELECT Nama, sum(jumlah) as jumlah_barang
FROM penjualan p 
GROUP BY Nama


describe penjualan 

SELECT Id, Nama, SUM(Jumlah) AS TotalJumlah
FROM Penjualan
GROUP BY Id, Nama;

select id,nama,Jumlah  
from penjualan p ;


-- mengelompokkan data dalam tabel "Penjualan" berdasarkan kolom "Id" dan "Nama". Kemudian, kita menggunakan fungsi agregat SUM pada kolom "Jumlah" untuk menghitung total jumlah penjualan dalam setiap kelompok.  
select id, nama, sum(jumlah) as total_jumlah
from penjualan p 
group by Id ,Nama;



-- data  definition language

# Perintah untuk Membuat tabel users
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

######################## DATA MANIPULATION LANGUAGE #####################################

# Perintah untuk insert data ke tabel users
INSERT INTO users (username, email, password)
VALUES ('Agung Triatna', 'agung@example.com', 'password123'),
       ('Dandi Lesmana', 'dandi@example.com', 'password456'),
       ('Quratul Aini', 'aini@example.com', 'password789'),
       ('Wahyu Setio Aji', 'aji@example.com', 'password123');
      
      
# Perintah untuk melihat data di dalam tabel users
SELECT * from users;



# Perintah untuk update data
UPDATE users
SET email = 'agung.triatna@example.com'
WHERE username = 'Agung Triatna';


# Perintah untuk Hapus data
DELETE FROM users
WHERE id = 4;


# Menampilkan Data denga ID ganjil
SELECT * FROM users WHERE id % 2 = 1;



######################## DATA MANIPULATION LANGUAGE #####################################

########### SELECT ##############

# Menampilkan semua Data
SELECT *
FROM users;


# Menampilkan kolom username dan email -> password = 'password123'
SELECT username, email
FROM users
WHERE password = 'password123';

# Menampilkan kolom email dari tabel users -> huruf depannya a
SELECT email
FROM users
WHERE email LIKE 'a%';

SELECT email
FROM users
WHERE email LIKE 'd_%';

# Menampilkan kolom username dari tabel users dengan urutan ascending
SELECT username
FROM users
ORDER BY username ASC;

SELECT username
FROM users
ORDER BY username desc ;

########### End SELECT ##############

########### WHERE ##############

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


########### ORDER BY ##############

# Mengurutkan data berdasarkan kolom "email" secara descending
SELECT *
FROM users
order by email desc ;

SELECT *
FROM users
order by email asc  ;

SELECT *
FROM users
ORDER BY id DESC, username ASC;

########### ORDER BY ##############

######################## DATA MANIPULATION LANGUAGE #####################################