
-- nested 

-- SELECT customer_name, product_name
-- from(SELECT * FROM sales
-- WHERE volume > 1000) AS base_result;
-- its saved into the system  using view so i don't need it to be uncommented


-- create view base_result as select * from sales
-- where volume > 1000;  

select customer_name, product_name FROM base_result;

