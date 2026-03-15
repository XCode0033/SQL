-- CREATE DATABASE IF NOT EXISTS online_shop;
use online_shop;
CREATE TABLE products (
  product_name VARCHAR(300) NOT NULL,
  price FLOAT (5, 2) NOT NULL,
  info TEXT NOT NULL,
  stock ENUM('Available', 'Unavailable')
);