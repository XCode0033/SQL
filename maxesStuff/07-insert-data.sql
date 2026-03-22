INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES ('Learning INC', 'Education Street', 99.87, TRUE);
INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES ('MATH INC', 'Number Street', 3.26, FALSE);

INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES ('SCHOOL INC', 'TRI-C Street', 2.87, TRUE);


INSERT INTO conversations (user_name, employer_name, messages, date_sent)
VALUES (
    'Xavier Stone',
    'Learning Inc',
    'Hi I like coding',
    '2021-10-15 16:32:10'
  )