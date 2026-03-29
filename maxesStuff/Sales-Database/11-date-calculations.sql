
-- SELECT * FROM sales
-- WHERE date_fulfilled IS NOT NULL; -- use is / is not for booleans and not nulls or nulls


SELECT * FROM sales
WHERE date_fulfilled - date_created <= 5;