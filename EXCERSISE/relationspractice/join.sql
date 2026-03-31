USE relations_practice;
SELECT u.id, 
u.first_name, 
u.last_name, 
u.address_id,
a.id,
a.street,
a.house_number,
 c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a   
    ON u.address_id = a.id
INNER JOIN cities AS cities
 ON a.city_id = c.id;
