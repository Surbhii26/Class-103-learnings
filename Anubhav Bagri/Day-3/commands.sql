
-- create
CREATE TABLE Customer(
  Cust_ID int PRIMARY KEY,
  Cust_Name text,
  mobile int,
  Email_ID char(30),
  address char(30)
);

-- -- insert
INSERT INTO Customer VALUES (100, 'Bala', 9876543, 'sen@gmail.com', 'bangalore');
INSERT INTO Customer VALUES (101, 'Paapaaji', 454323, 'paapaaji@gmail.com', 'Pind');
INSERT INTO Customer VALUES (102, 'Wrik', 122312, 'wrik@gmail.com', 'bengal');

ALTER TABLE Customer add pan char(10);

-- \d Customer

UPDATE Customer set pan='BAD37283D' where cust_id=100;
UPDATE Customer set pan='GOODPA34D' where cust_id=101;
UPDATE Customer set pan='GRT7239D5' where cust_id=102;

-- fetch 
SELECT * FROM Customer;

SELECT cust_name FROM Customer;


-- INSERT INTO Customer (cust_id, cust_name, mobile, email_id, address, pan) values

create table products(
prod_id int,
prod_name char(30), 
price numeric(8,2), 
quantity int, 
cust_id int,
PRIMARY KEY(prod_id),
CONSTRAINT fk_Customer
FOREIGN KEY(cust_id)
REFERENCES Customer(cust_id)
);

\d products

\dt

-- -- insert
INSERT INTO products(prod_id, prod_name, price, quantity, cust_id) 
values
(2001, 'Laptop', 70500.47, 53, 100),
(2002, 'Laptop', 35243.73, 53, 101),
(2003, 'Phone', 23375.11, 76, 100),
(2004, 'TV', 80540.71, 76, 102),
(2005, 'Phone', 25999.99, 12,101);

SELECT * FROM products;

SELECT c.cust_id, c.cust_name, p.prod_name, p.price FROM
customer as c
INNER join
products as p
on c.cust_id = p.cust_id;

SELECT c.cust_id, c.cust_name, p.prod_name, p.price FROM
Customer as c
left join
products as p
on c.cust_id = p.cust_id;

SELECT c.cust_id, c.cust_name, p.prod_name, p.price FROM
customer as c
RIGHT join
products as p
on c.cust_id = p.cust_id;





