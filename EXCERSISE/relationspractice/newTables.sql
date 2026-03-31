
use relations_practice;
-- CREATE TABLE school (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(300) NOT NULL,
--     enrollment_status ENUM('Public', 'Private'),
--     school_type ENUM('Pre-school', 'Elementary', 'Middle School', 'HighSchool', 'College') NOT NULL,
--     city_id INT NOT NULL,
--     CONSTRAINT fk_city_name 
--         FOREIGN KEY (city_id) REFERENCES cities(id)
-- )


ALTER TABLE school 
MODIFY COLUMN enrollment_status ENUM('Public', 'Private') DEFAULT 'Public',
MODIFY COLUMN city_id INT,
ADD COLUMN address_id INT,
ADD CONSTRAINT fk_address_id
FOREIGN KEY (address_id) REFERENCES addresses(id)



-- INSERT INTO school (name, enrollment_status, school_type)VALUES
-- ('John Caroll', 'Private', 'College'),
-- ('Tri-C', 'Public', 'College'),
-- ('Communion of Saints', 'Private', 'Elementary'),
-- ('Saint Pauls', 'Private', 'Pre-School'),
-- ('Monticello Middle School', 'Public', 'Middle School'),
-- ('Heights High School', 'Public', 'HighSchool');