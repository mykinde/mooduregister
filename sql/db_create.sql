CREATE DATABASE IF NOT EXISTS external_registration;
USE external_registration;

-- Admin Table
CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
	verified INT(11) NULL DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Faculties Table
CREATE TABLE faculties (
     id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL
);

-- Departments Table
CREATE TABLE departments (
    id VARCHAR(20) NOT NULL UNIQUE,
    faculty_id VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL
);


-- Students Table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(100) NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	middle_name VARCHAR(100) DEFAULT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
	confirm_password VARCHAR(100) NOT NULL,
    level VARCHAR(20) NOT NULL,
    faculty VARCHAR(20) NOT NULL,
    department VARCHAR(20) NOT NULL,
    matric_number VARCHAR(20) NOT NULL UNIQUE,
    gender ENUM('Male', 'Female') NOT NULL,
    phone VARCHAR(20) DEFAULT NULL,
	name VARCHAR(255) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
