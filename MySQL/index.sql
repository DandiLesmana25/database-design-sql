####################  inner join  ##########################

show tables;




create table customers (
      id int primary key,
      nama varchar(50),
      alamat varchar(100)
);

describe customers 

drop table orders; 

create  table orders (
    id int primary key,
    order_date date,
    total_price decimal(10, 2),
    customers_id int,
    foreign key (customers_id) references customers(id)
    
);

insert into customers (id, nama, alamat)
values
(1, 'John Doe', 'Jl. Merdeka No. 123'),
  (2, 'Jane Smith', 'Jl. Raya Indah 456'),
  (3, 'Michael Johnson', 'Jl. Bahagia 789'),
  (4, 'Sarah Lee', 'Jl. Damai Sejahtera 321'),
  (5, 'David Williams', 'Jl. Seruni 555');

insert into orders (id, order_date, total_price, customers_id)
values
 (1, '2023-05-01', 500, 1),
  (2, '2023-05-02', 1000, 2),
  (3, '2023-05-03', 800, 3),
  (4, '2023-05-04', 1500, 4),
  (5, '2023-05-05', 1200, 5);
 
describe orders;
describe customers ;


select customers.id, customers.nama, orders.order_date, orders.total_price
from customers
inner join  orders on customers.id = orders.customers_id;


-- Mengambil informasi nama pelanggan beserta total harga pesanan yang dibuat
--  pada tanggal tertentu:

select  customers.id, customers.nama, o.total_price 
from customers 
inner join orders o on customers.id = o.customers_id
where o.order_date = '2023-05-05';



-- Menampilkan nama pelanggan dan total harga pesanan
-- yang melebihi jumlah tertentu:

select customers.nama, orders.total_price
from customers
inner join orders on customers.id = orders.customers_id
where orders.total_price >1000;


-- Menampilkan detail pesanan beserta alamat pelanggan:

SELECT customers.alamat, orders.order_date, orders.total_price
FROM customers
INNER JOIN orders ON customers.id = orders.customers_id;


-- Menghitung total harga pesanan dari setiap pelanggan:

SELECT customers.nama, SUM(orders.total_price) AS total_harga
FROM customers
INNER JOIN orders ON customers.id = orders.customers_id
GROUP BY customers.nama;


-- Menampilkan pelanggan yang belum melakukan pesanan:

SELECT customers.nama
FROM customers
LEFT JOIN orders ON customers.id = orders.customers_id
WHERE orders.id IS NULL;


select * from orders o ;
select * from customers ;




 




 




























