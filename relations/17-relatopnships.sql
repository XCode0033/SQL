
use relations;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300),
    last_name VARCHAR(300),
    birthdate DATE NOT NULL,
    -- email VARCHAR(300) REFERENCES intranet_accounts
    email VARCHAR(300) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE, -- this means if the employee is deleted then the account gets deleted too
    password VARCHAR(300) NOT NULL
);



-- CREATE TABLE teams (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     building VARCHAR(300) NOT NULL,
-- );

-- CREATE TABLE projects (
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- title VARCHAR(300) NOT NULL,
-- deadline DATETIME('03-03-2003 05:30:00'),
-- CONSTRAINT fk_employees FOREIGN KEY employees_id REFERENCES employees(id)
-- );

