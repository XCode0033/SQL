use talently;

INSERT INTO users (full_name, yearly_salary,current_status)
VALUES
    ('Xavier Stone', 100000, 'self-employed'),
    ('Jakarta Steel', 95000, 'employed'),
    ('Aaliyah Wright', 95000, 'self-employed'),
    ('Brandon Sims', 70000, 'employed'),
    ('Zavion Steele', 88000, 'employed');



INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES
('Giant Eagle', 'Cedar', 3.2, FALSE),
('Cuyahoga Community College', 'TRI-C East Building', 2.8, TRUE),
('Warrensville Library', 'By Chipoltle', 4.5, TRUE);


INSERT INTO conversations (user_id, employer_id, message)
VALUES
('Jakarta Steele0203', 'Heinens', 'Im gonna be a pipe fitter maaan'),
('Aaliyah Write0504', 'Some dog place', 'Im gonna be a tech person'),
('Zavion Steele355', 'HoseMaster', 'Im gonna be a welder for a major company'),
('Xavier Stone', 'Heiens', 'Im gonna be a Cloud Arcitechet and a business owner.');