CREATE DATABASE IF NOT EXISTS day3_project_db;
USE day3_project_db;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(30) UNIQUE,
    nickname VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS orders (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(20),
    created_at TIMESTAMP,
    user_id INT UNSIGNED REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS products (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60),
    price BIGINT UNSIGNED,
    product_type VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS order_details (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    order_id INT UNSIGNED REFERENCES orders(id),
    product_id INT UNSIGNED REFERENCES products(id),
    count MEDIUMINT UNSIGNED
);

CREATE TABLE IF NOT EXISTS payments (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    amount INT UNSIGNED,
    payment_type VARCHAR(20),
    order_id INT UNSIGNED REFERENCES orders(id)
);
