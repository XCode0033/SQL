CREATE DATABASE IF NOT EXISTS shop_practice;
USE shop_practice;

CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL
);

CREATE TABLE orders (
  id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id) REFERENCES customers(id),
  CONSTRAINT fk_orders_product
    FOREIGN KEY (product_id) REFERENCES products(id)
);


