use shop_practice;
-- SELECT 
-- CONCAT(c.first_name, ' ', c.last_name) AS full_name,
-- p.name AS product_name,
-- o.quantity
-- FROM orders AS o
-- INNER JOIN customers AS c ON o.customer_id = c.id
-- INNER JOIN products as p ON o.product_id = p.id;

-- SELECT 
-- CONCAT (c.first_name, ' ', c.last_name),
-- p.name,
-- o.quantity,
-- p.price,
-- (o.quantity * p.price)
-- FROM orders AS o
-- INNER JOIN customers AS c ON o.customer_id = c.id
-- INNER JOIN products AS p ON o.product_id = p.id;



SELECT
CONCAT(c.first_name, ' ', c.last_name),
p.name
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.id
INNER JOIN products AS p ON o.product_id = p.id;

-- SELECT * FROM orders