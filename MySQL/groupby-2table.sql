######################study kasus group by 2 tabel ########################################
show tables;

CREATE TABLE users (
  id INT(11) PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(50),
  created_at DATETIME
);


INSERT INTO users (id, username, email, password, created_at) VALUES
(1, 'JohnDoe', 'john.doe@example.com', 'password123', '2023-06-08 22:50:58'),
(2, 'JaneSmith', 'jane.smith@example.com', 'password456', '2023-06-08 22:50:58'),
(3, 'MarkJohnson', 'mark.johnson@example.com', 'password789', '2023-06-08 22:50:58'),
(4, 'SarahWilson', 'sarah.wilson@example.com', 'passworddd', '2023-06-09 00:30:39'),
(5, 'EmilyDavis', 'emily.davis@example.com', 'passsword123', '2023-06-09 13:00:51');


CREATE TABLE orders (
  order_id INT(11) PRIMARY KEY,
  user_id INT(11),
  product_name VARCHAR(50),
  quantity INT(11),
  order_date DATE,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO orders (order_id, user_id, product_name, quantity, order_date) VALUES
(1, 1, 'Product A', 5, '2023-06-10'),
(2, 2, 'Product B', 3, '2023-06-11'),
(3, 1, 'Product C', 2, '2023-06-11'),
(4, 3, 'Product A', 4, '2023-06-12'),
(5, 2, 'Product B', 6, '2023-06-12'),
(6, 4, 'Product C', 1, '2023-06-13'),
(7, 5, 'Product A', 3, '2023-06-13');



-- Menghitung total pesanan yang dilakukan oleh setiap pengguna:
SELECT u.id, u.username, COUNT(o.order_id) AS total_pesanan
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.username;



-- Menghitung total produk yang dibeli oleh setiap pengguna:
SELECT u.id, u.username, SUM(o.quantity) AS total_produk
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.username;


-- menampilkan pengguna yang tidak melakukan pesanan
-- select u.id, u.username 

SELECT u.id, u.username
from users u
left join orders o  on u.id = o.user_id
where o.order_id is null; 



SELECT u.id, u.username
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.order_id IS NULL;


-- Menampilkan pengguna dan tanggal pesanan terakhir mereka:
SELECT u.id, u.username, MAX(o.order_date) AS tanggal_pesanan_terakhir
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.username;



SELECT u.id, u.username, AVG(o.quantity) AS rata_rata_jumlah_pesanan
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.username;


