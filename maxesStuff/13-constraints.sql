ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
  MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL;
-- ------
-- create TABLE users (
--   full_name VARCHAR(200),
--   yearly_salary INT,
--   current_status ENUM('employed', 'self-employed', 'unemployed')
-- );
-- ----------------------
ALTER TABLE conversations
MODIFY COLUMN user_name VARCHAR(200) NOT NULL,
  MODIFY COLUMN employer_name VARCHAR(200) NOT NULL;
-- -----
-- CREATE TABLE conversations (
--   user_name VARCHAR(200),
--   employer_name VARCHAR(250),
--   message TEXT,
--   date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- )
-- ------------------------------------
ALTER TABLE employers
MODIFY COLUMN company_name VARCHAR(250) NOT NULL,
  MODIFY COLUMN company_address VARCHAR(300) NOT NULL,
  MODIFY COLUMN is_hiring BOOLEAN DEFAULT FALSE NOT NULL;
-- -------
--   CREATE TABLE employers (
--   company_name VARCHAR(250),
--   company_address VARCHAR(300),
--   yearly_revenue NUMERIC(5, 2),
--   is_hiring BOOLEAN DEFAULT FALSE
-- );