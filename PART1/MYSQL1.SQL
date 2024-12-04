SHOW DATABASES;

USE SAKILA;

CREATE DATABASE FIRSTDB;

USE FIRSTDB;

CREATE TABLE users (
    id AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE products (
    id AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    id AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);

INSERT INTO
    Users (name, email, password)
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

INSERT INTO
    products (name, description, price)
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

INSERT INTO
    orders (user_id, product_id, quantity)
VALUES (1, 1, 9),
    (1, 2, 12)

SELECT * FROM orders WHERE user_id = 1