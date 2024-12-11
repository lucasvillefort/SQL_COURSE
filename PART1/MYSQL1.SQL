SHOW DATABASES;
-- shows the databases in the current server
show tables;
-- shows the tables in the current database
SELECT DATABASE();
-- shows the current database
USE SAKILA;
-- changes the current database
CREATE DATABASE FIRSTDB;
USE FIRSTDB;
CREATE TABLE users (
    id AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) DEFAULT 'No email available' UNIQUE,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE products (
    id AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) DEFAULT 'No description available',
    price DECIMAL(10, 2)
);
CREATE TABLE orders (
    id AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);
INSERT INTO Users (name, email, password)
VALUES (
        'John Doe',
        'john.doe@example.com',
        'password123'
    ),
    (
        'Jane Doe',
        'jane.doe@example.com',
        'password456'
    ),
    (
        'Bob Smith',
        'bob.smith@example.com',
        'password789'
    ),
    (
        'Alice Johnson',
        'alice.johnson@example.com',
        'password012'
    ),
    (
        'Bob Johnson',
        'bob.johnson@example.com',
        'password012'
    );
INSERT INTO products (name, description, price)
VALUES (
        'Apple iPhone',
        'Latest iPhone model',
        999.99
    ),
    (
        'Samsung TV',
        '4K Smart TV',
        1299.99
    ),
    (
        'Nike Shoes',
        'Running shoes',
        79.99
    )
INSERT INTO orders (user_id, product_id, quantity)
VALUES (1, 1, 9),
    (1, 2, 12);
SELECT *
FROM orders
WHERE user_id = 1;
DESC orders;
/*
 1) EXAMPLE OF CRUD:
 CREATES
 READ
 UPDATE
 DELETE
 */
--CREATES
INSERT INTO products (name, description, price)
VALUES (
        'Sony Headphones',
        'Noise-cancelling headphones',
        199.99
    );
-- READS
SELECT *
FROM products
WHERE price > 100
    AND price < 200;
SELECT name as 'full name',
    price as cost
from products;
-- UPDATES -> it will update the price and name of the product with the name 'Sony Headphones'
UPDATE products
SET price = 149.99,
    name = 'Sony Headphones 2.0'
WHERE name = 'Sony Headphones';
-- DELETES -> it will delete the row with the name 'Sony Headphones'
DELETE FROM products
WHERE name = 'Sony Headphones';
-- string functions:
SELECT CONCAT(name, ' ', description) as 'concat'
from products;
SELECT SUBSTRING(name, 1, 3) as 'substring'
from products;
SELECT LENGTH(name) as 'length'
from products;
SELECT UPPER(name) as 'upper'
from products;
SELECT LOWER(name) as 'lower'
from products;
SELECT TRIM(name) as 'trim'
from products;
SELECT REPLACE(name, 'Apple', 'Samsung') as 'replace'
from products;
SELECT REVERSE(name) as 'reverse'
from products;
SELECT ROUND(price) as 'round'
from products;
SELECT FLOOR(price) as 'floor'
from products;
SELECT CEIL(price) as 'ceil'
from products;
SELECT RAND() as 'rand'
from products;
SELECT COUNT(*) as 'count'
from products;
SELECT AVG(price) as 'avg'
from products;
SELECT SUM(price) as 'sum'
from products;
SELECT MAX(price) as 'max'
from products;
SELECT MIN(price) as 'min'
from products;
SELECT DISTINCT price as 'distinct'
from products;
select *
from products
ORDER BY price DESC;
SELECT DISTINCT(CONCAT(author_fname, ' ', author_lname)) as 'full name',
    pages
FROM books
ORDER BY pages ASC
LIMIT 5;
-- like operator
SELECT *
FROM books
WHERE title LIKE '%the%';