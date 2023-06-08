


CREATE TABLE table_penumpang (
  no INT PRIMARY KEY,
  nama VARCHAR(50),
  jenis_kelamin VARCHAR(10),
  usia INT,
  riwayat_penyakit char(100)
);

-- query melihat semua data di table
select * from table_penumpang tp 

select * from table_penumpang 

INSERT INTO table_penumpang (no, nama, jenis_kelamin, usia, riwayat_penyakit) VALUES
(6, 'John Doe', 'Laki-laki', 30, 'Tidak ada riwayat penyakit'),
(7, 'Jane Smith', 'Perempuan', 25, 'Alergi debu'),
(8, 'Michael Johnson', 'Laki-laki', 40, 'Hipertensi'),
(9, 'Emily Davis', 'Perempuan', 35, 'Asma'),
(10, 'David Wilson', 'Laki-laki', 28, 'Tidak ada riwayat penyakit');


CREATE TABLE table_tess (
  no INT PRIMARY KEY,
  nama VARCHAR(50),
  jenis_kelamin VARCHAR(10),
  usia INT,
  riwayat_penyakit char(100)
);

-- query drop table
drop table table_tess;



INSERT INTO table_penumpang (no, nama, jenis_kelamin, usia, riwayat_penyakit) VALUES
(11, 'Budi Santoso', 'Laki-laki', 30, 'Tidak ada riwayat penyakit'),
(12, 'Siti Rahayu', 'Perempuan', 25, 'Alergi debu'),
(13, 'Agus Wijaya', 'Laki-laki', 40, 'Hipertensi'),
(14, 'Dewi Lestari', 'Perempuan', 35, 'Asma'),
(15, 'Hendrik Gunawan', 'Laki-laki', 28, 'Tidak ada riwayat penyakit'),
(16, 'Rina Fitriani', 'Perempuan', 45, 'Diabetes'),
(17, 'Faisal Ramadhan', 'Laki-laki', 33, 'Tidak ada riwayat penyakit'),
(18, 'Rina Febriani', 'Perempuan', 22, 'Tidak ada riwayat penyakit'),
(19, 'Ahmad Hidayat', 'Laki-laki', 50, 'Tidak ada riwayat penyakit'),
(20, 'Lina Susanti', 'Perempuan', 27, 'Alergi makanan');



-- VIEW atau tabel virtual adalah tabel yang hanya ada saat Anda menggunakan view dalam kueri. Tujuan dibuatnya VIEW adalah untuk mempermudah penulisan query dan juga alasan keamanan karena dapat menyembunyikan beberapa kolom yang bersifat rahasia, atau dalam beberapa kasus digunakan untuk mempercepat proses menampilkan data. Ini juga dianggap sebagai tabel virtual karena berfungsi seperti tabel dan operasi yang sama.
-- Saat Anda menggunakan VIEW dalam query, VIEW akan berperilaku seolah-olah itu adalah subquery

create view penumpangview as 
select nama , usia 
from table_penumpang tp 
where riwayat_penyakit = 'Asma';

select * from table_penumpang 
