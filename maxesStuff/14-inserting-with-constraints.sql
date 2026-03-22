INSERT INTO users (full_name, current_status)
VALUES('self-employed', 'employed');
INSERT INTO conversations (user_name, employer_name)
VALUES('stox03', 'hohns company');
-- CREATE TABLE conversations (
--   user_name VARCHAR(200),
--   employer_name VARCHAR(250),
--   message TEXT,
--   date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- )
INSERT INTO employers (company_name, yearly_revenue, company_address)
VALUES('John home', 100, '1234street')
-- I did it correctly. Username and employer name should have a value.
-- To test with the previous ones just delete a category that needs a value and remove it from values too. Otherwise the program will focus on another empty value


