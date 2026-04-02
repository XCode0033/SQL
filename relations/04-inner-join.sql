

SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id;

-- Optional safer query when you want records even with missing FK links:
-- SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, c.name AS city
-- FROM users AS u
-- LEFT JOIN addresses AS a ON u.address_id = a.id
-- LEFT JOIN cities AS c ON a.city_id = c.id;


