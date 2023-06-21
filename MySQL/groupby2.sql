CREATE TABLE table_products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(10, 2),
    quantity INT
);


INSERT INTO table_products (id, name, price, quantity)
VALUES
    (1, 'Product A', 10.99, 100),
    (2, 'Product B', 20.99, 50),
    (3, 'Product C', 5.99, 200),
    (4, 'Product D', 15.99, 75),
    (5, 'Product E', 8.99, 150);
   
   
   CREATE TABLE table_orders (
    id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATE,
    customer_name VARCHAR(50)
);


INSERT INTO table_orders (id, product_id, quantity, order_date, customer_name)
VALUES
    (1, 1, 5, '2023-05-01', 'Customer A'),
    (2, 2, 10, '2023-05-02', 'Customer B'),
    (3, 3, 2, '2023-05-03', 'Customer C'),
    (4, 1, 3, '2023-05-04', 'Customer A'),
    (5, 4, 8, '2023-05-05', 'Customer D');


   

  
   show tables;
   DROP TABLE sayur_wortell  ; 
 
 select * from table_orders ;
 
select id, quantity, customer_name from table_orders ;

select * from  table_products;

select  name, quantity from table_products;



-- View "product_orders" yang menggabungkan informasi produk dan pesanan  

CREATE VIEW product_orders AS
SELECT table_orders.id as order_id, table_products.name AS product_name, to.quantity AS order_quantity, tp.price AS product_price
FROM table_orders
JOIN table_products  p ON o.product_id = p.id;
