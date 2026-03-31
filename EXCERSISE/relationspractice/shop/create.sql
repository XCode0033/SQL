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

INSERT INTO customers (first_name, last_name) VALUES
('Max', 'Schwarz'),
('Manuel', 'Lorenz'),
('Julie', 'Barnes');

INSERT INTO products (name, price) VALUES
('Laptop', 999.99),
('Mouse', 19.99),
('Keyboard', 49.99);

INSERT INTO orders (customer_id, product_id, quantity) VALUES
(1, 1, 1),  -- Max buys 1 Laptop
(1, 2, 2),  -- Max buys 2 Mice
(2, 2, 1),  -- Manuel buys 1 Mouse
(3, 3, 3);  -- Julie buys 3 Keyboards
