# Student Registration System for Moodle LMS External database authentication 

## Overview

A complete student registration system with admin management panel.

## Features

- Student registration with form validation
- Faculty and department selection with dynamic dropdowns
- Student login/logout
- Admin login/logout
- Admin dashboard with student management
- Search, filter, and pagination for student records
- Password reset functionality
- Search fullname or lastname firstname and vice versa

## Installation

1. Import the `db_create.sql` file into your MySQL database
2. Configure database connection in `config/db.php`
3. Deploy the project to your web server

## Admin Credentials

- Username: admin
- Password: password
Or 
http://localhost/mooduregister/admin/register.php




## Technologies Used

- PHP
- MySQL
- Bootstrap 5
- JavaScript
- PDO for database access

# Moodle LMS External database authentication 
- Manual accounts
- External database
Location: Administration> Site Administration> Plugins>Authentication> Manage authentication.
## External database authentication
Jump to:navigation, search
Main page ► Managing a Moodle site ► Authentication ► External database authentication
Location: Site administration > Plugins > Authentication > External database

https://docs.moodle.org/500/en/External_database_authentication

This method uses an external database table to check whether a given username (which must be varchar) and password is valid. If the user does not currently exist in Moodle a new account will be created and their information copied from the external database.

Update Local - Specifies that the external data will be entered into the local field in question

On Creation - specifies that this will only happen on the original login when the account is created for the first time.
On Every Login - specifies that changes in the external data will be updated on the local Moodle field in question the next time the user logs in again.
Update External - Specifies just the opposite, meaning changes in the local Moodle field in question will update the corresponding field in the external database

# Student Registration System

## Overview
A pure PHP and MySQL based Student Registration System with Bootstrap-styled frontend. It allows students to register and log in, while an admin can manage student records with features such as search, filter, pagination, update, and password reset.

## Features
- **Student Registration**: Collects name, email, password, level, faculty, department, matric number, gender, and phone.
- **Dynamic Department Dropdown**: Departments update instantly based on faculty selection using JavaScript.
- **Secure Authentication**: Passwords hashed using `md5_hash()`.
- **Student Login & Dashboard**: Secure login for students to access their profiles.
- **Admin Panel**:
  - Admin login
  - Paginated student listing
  - Search and filter students by multiple criteria
  - Edit student details (except email)
  - Reset student passwords
- **Bootstrap 5 Styling**: Responsive and modern UI.
- **Modular Codebase**: Organized folders and reusable components.

## Requirements
- PHP 7.4 or higher
- MySQL 5.7 or higher
- Apache or compatible web server
- Composer (optional, if you want to add dependencies)
- Internet connection (for Bootstrap CDN)

## Installation
1. Clone or download the repository into your web server directory (e.g., `htdocs` or `www`).
2. Create a MySQL database, e.g., `external_registration`.
3. Import the provided SQL schema (`db_create.sql`) to create tables and insert initial faculties and departments.
4. Configure database connection:
   - Edit `/config/db.php` and update credentials:
     ```php
     $host = 'localhost';
     $db = 'external_registration';
     $user = 'your_db_user';
     $pass = 'your_db_password';
	  $port = 'your_db_port';
	 
5. Or github extracted zip to copy to Drive C:
start a direct php server from the terminal:
 php -S localhost:8000 -t C:/mooregister/
 http://localhost:8000

6. Open the project in your browser:
http://localhost/mooduregister/
Access:
Student pages: register, login, dashboard.
Admin pages: /admin/login.php
Usage
Student Registration: Fill out the registration form and submit.
Student Login: Use registered email and password.
Admin Login: Default admin credentials (set during installation).
Admin Management: Use admin panel to manage student records efficiently.
Folder Structure



### /student-registration/
│
├── config/         # Database connection

├── includes/       # Common headers, footers, session checks

├── js/            # JavaScript for dynamic dropdown

├── admin/         # Admin panel scripts

├── register.php   # Student registration page

├── login.php      # Student login page

├── dashboard.php  # Student dashboard

├── logout.php     # Logout script for all users

├── index.php      # Landing page

└── README.md      # This file

## Direct testing with apache2 and sqlite
Extract to C: 
Launch Terminal/command prompt
php -S localhost:7000 -t C:\mooduregister
locate on your browser with url localhost:7000



### Security Notes
Passwords are hashed with PHP’s password_hash() for security.
Session checks protect restricted pages.
Input validation and sanitization are recommended if you extend the project.
Contribution
Feel free to fork, improve, and submit pull requests.
htaccess to prevent downloading or access to sensitive config files

## mykinde
for full package and demo contact g3send@gmail.com

## Credit
[My Site](https://mykinde.github.io/site/)
[My AI-Chat](https://chatgpt.com/share/683312e2-fcc8-8004-a16a-ff288924bd58)



<p align="center">
<img src="https://https://i.imgur.com/WEBM0wh.png">

</p>

### License
MIT License