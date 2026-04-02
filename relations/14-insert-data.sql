use relations;
INSERT INTO cities (name)VALUES('Berlin'),('New York'),('London');

INSERT INTO addresses(street, house_number, city_id)VALUES
('London Street', '8A',3),
('Berlin Street', '10', 1),
('New York Street', '12', 2);

INSERT INTO users (first_name, last_name, email, address_id)VALUES
('Max', 'Schwarz', 'max@test.com',2),
('Manuel', 'Lorenz','manu@test.com', 3),
('Julie', 'Barnes', 'julie@barnes.com', 1);