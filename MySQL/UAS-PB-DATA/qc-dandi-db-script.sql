show tables



drop table uang;
drop table uang_palsu ;
drop table transaksi ;



CREATE TABLE uang (
  id INT PRIMARY KEY,
  nilai INT,
  jenis VARCHAR(50)
);

CREATE TABLE transaksi (
  id INT PRIMARY KEY,
  nomor_transaksi VARCHAR(50),
  tanggal_transaksi DATE,
  uang_id INT,
  FOREIGN KEY (uang_id) REFERENCES uang(id)
);






CREATE TABLE uang_palsu (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_uang INT,
  keterangan VARCHAR(255),
  FOREIGN KEY (id_uang) REFERENCES uang(id)
);



-- insert 1000 ke uang
INSERT INTO uang (id, nilai, jenis)
SELECT 
    seq.n AS id,
    (seq.n * 1000) AS nilai,
    CONCAT('Jenis ', seq.n) AS jenis
FROM 
    (SELECT (a.n + b.n * 10 + c.n * 100 + d.n * 1000) AS n
     FROM 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS a
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS b
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS c
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS d
    ) AS seq
LIMIT 1000;



-- 1000 ke transaksi
INSERT INTO transaksi (id, nomor_transaksi, tanggal_transaksi, uang_id)
SELECT 
    seq.n AS id,
    CONCAT('TRX', seq.n) AS nomor_transaksi,
    CURDATE() AS tanggal_transaksi,
    u.id AS uang_id
FROM 
    (SELECT (a.n + b.n * 10 + c.n * 100 + d.n * 1000) AS n
     FROM 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS a
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS b
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS c
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS d
    ) AS seq
JOIN uang AS u ON seq.n % 1000 = u.id
LIMIT 1000;



-- --1000 data uang_palsu

INSERT INTO uang_palsu (id_uang, keterangan)
SELECT 
    u.id AS id_uang,
    CONCAT('Uang palsu ke-', seq.n) AS keterangan
FROM 
    (SELECT (a.n + b.n * 10 + c.n * 100 + d.n * 1000) AS n
     FROM 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS a
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS b
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS c
         CROSS JOIN 
         (SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION 
          SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS d
    ) AS seq
JOIN uang AS u ON seq.n % 1000 = u.id
LIMIT 1000;


select * from uang u ;
select * from transaksi t;
select * from uang_palsu up  ;



select * from uang u ;




--  
--  


-


-- view

CREATE VIEW report_uang_palsu AS
SELECT u.jenis AS jenis_uang, COUNT(up.id) AS jumlah_palsu
FROM uang u
LEFT JOIN uang_palsu up ON u.id = up.id_uang
GROUP BY u.jenis
ORDER BY COUNT(up.id) DESC;

select * from report_uang_palsu;


