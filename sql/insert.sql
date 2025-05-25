-- Insert Faculties
INSERT INTO faculties (id, name) VALUES
('FST', 'Faculty of Science and Technology'),
('FMS', 'Faculty of Management Sciences'),
('FAS', 'Faculty of Arts and Social Sciences');


-- Insert Departments
-- Insert sample departments
INSERT INTO departments (id, faculty_id, name) VALUES
('CSC', 'FST', 'Computer Science'),
('MTH', 'FST', 'Mathematics'),
('PHY', 'FST', 'Physics'),
('ACC', 'FMS', 'Accounting'),
('BUS', 'FMS', 'Business Administration'),
('ECO', 'FMS', 'Economics'),
('ENG', 'FAS', 'English'),
('HIS', 'FAS', 'History');

-- Insert admin user
INSERT INTO admins (email, username, password) VALUES
('admin@gmail.com', 'admin', MD5('password'));
