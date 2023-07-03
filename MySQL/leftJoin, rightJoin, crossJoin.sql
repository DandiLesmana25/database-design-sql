####################  Left join  ##########################

show tables;




create table customers (
      id int primary key,
      nama varchar(50),
      alamat varchar(100)
);

describe customers 

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

 
insert into customers (id, nama, alamat)
values
(6, 'ucup', 'Jl. Merdeka No. 123'),
  (7, 'ade', 'Jl. Seruni 555'); 
 
 
insert into orders (id, order_date, total_price, customers_id)
values
 (1, '2023-05-01', 500, 1),
  (2, '2023-05-02', 1000, 2),
  (3, '2023-05-03', 800, 3),
  (4, '2023-05-04', 1500, 4),
  (5, '2023-05-05', 1200, 5);
 
 
 insert into orders (id, order_date, total_price)
values
 (6, '2023-05-01', 300 ),
  (7, '2023-05-02', 1300),
  (8, '2023-05-03', 300),
  (9, '2023-05-04', 4500),
  (10, '2023-05-05', 2200);
 
 
describe orders;
describe customers ;




select orders.id, orders.order_date, orders.total_price,orders.customers_id,  customers.nama, customers.alamat 
from orders
left join customers on orders.customers_id  = customers.id; 




select orders.id, orders.order_date, orders.total_price,orders.customers_id,  customers.nama, customers.alamat 
from orders
left join customers on orders.customers_id  = customers.id; 


SELECT *
FROM orders
LEFT JOIN customers ON orders.customers_id = customers.id;


select * from orders o ;
select * from customers ;



#################### Rightjoin  ##########################

 
SELECT orders.id, orders.order_date, orders.total_price, customers.nama, customers.alamat
FROM orders
RIGHT JOIN customers ON orders.customers_id = customers.id;

select *
FROM orders
RIGHT JOIN customers ON orders.customers_id = customers.id;


 #################### cross join  ##########################

SELECT *
FROM orders
CROSS JOIN customers;




























