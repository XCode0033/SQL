UPDATE sales
SET 
    product_name = 'A Truck',
    volume = 100009.00
WHERE id = 13;

UPDATE sales
SET 
product_name = 'A car',
volume = 60000
WHERE id = 12;

UPDATE sales 
SET 
product_name = 'A house', 
volume = 1 
WHERE id = 11;

UPDATE sales 
SET 
product_name = 'A dog',
volume = 1
WHERE id = 10;

UPDATE sales 
SET 
customer_name = 'School A',
product_name = 'A bus',
volume = 2
WHERE id= 9;

UPDATE sales 
SET 
customer_name = 'Rich Guy', 
product_name = 'Million Dollar Watch', 
volume = 200 

WHERE id = 8;


UPDATE sales 
SET
customer_name = 'Joe Glow',
product_name = 'Glowing Rock',
volume = 25000
WHERE id = 7;

UPDATE sales 
SET
customer_name = 'Max Epad',
product_name = 'CVS Item',
volume = 2
WHERE id = 6;

UPDATE sales 
SET
customer_name = 'Micky Noose',
product_name = 'Club House',
volume = 1
WHERE id = 5;

UPDATE sales 
SET 
customer_name = 'Peter GRiffen', 
product_name = 'Beer', 
volume = 100 
WHERE id = 4;

UPDATE sales 
SET
customer_name = 'USer 1212212',
product_name = 'Soap and Water',
volume = 2
WHERE id = 3;

UPDATE sales 
SET 
customer_name = 'Joe DOnson',
product_name = 'Keys and a shirt',
volume = 45555
WHERE id = 2;

UPDATE sales 
SET
date_created = '2026-01-01',
date_fulfilled = '2026-03-25',
customer_name = 'Xavier',
product_name = 'Iphone 17',
volume = 1,
is_recurring = FALSE,
is_disputed = TRUE
WHERE id = 1;