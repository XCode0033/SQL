-- EXAMPLE-- CREATE table users (
--   full_name VARCHAR(300) not null,
--   yearly_salary INT CHECK (yearly_salary > 0),
-- )
-- notes, DROP CONSTRAINT also exists
-- the condition specifies which thing its being used on
-- must name the constraint
-- UPDATE IS ONLY NEEDED IF THERE WAS A TABLE WITH A COLUMN THAT WENT AGAINST THE CONSTRAINT. OTHERWISE IT'S NOT NEEDED.
UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'joe';
ALTER TABLE users
ADD CONSTRAINT year_salary_postivie CHECK (yearly_salary > 0);