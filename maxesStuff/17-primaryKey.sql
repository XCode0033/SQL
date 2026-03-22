DROP TABLE IF EXISTS conversations;
DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  current_status ENUM('self-employed', 'employed', 'unemployed')
);
CREATE TABLE employers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  company_name VARCHAR(250) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue NUMERIC(5, 2) CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);
CREATE TABLE conversations(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id VARCHAR(300),
  employer_id VARCHAR(300),
  message TEXT NOT NULL
);

