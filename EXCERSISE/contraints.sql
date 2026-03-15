use online_shop;
UPDATE products
SET price = 300
WHERE product_name = 'Iphone 16';
UPDATE products
SET price = 990
WHERE product_name = 'AlienWare Laptop';
UPDATE products
SET product_name = 'Samsung Galaxy 202'
WHERE product_name = 'Samsung Galaxy G72653';
UPDATE products
SET price = 500
WHERE product_name = 'Samsung Galaxy 202';
ALTER TABLE products
ADD CONSTRAINT max_price_cap CHECK (price < 999);