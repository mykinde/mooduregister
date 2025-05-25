<?php
require_once '../config/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $last_name = trim($_POST['last_name']);
    $first_name = trim($_POST['first_name']);
    $middle_name = trim($_POST['middle_name']);
   // $full_name = trim($_POST['name']);
    $email      = trim($_POST['email']);
    $password   = $_POST['password'];
    $confirm_password  = $_POST['confirm_password'];
    $level      = $_POST['level'];
    $faculty = $_POST['faculty'];
    $department    = $_POST['department'];
    $matric     = trim($_POST['matric']);
    $gender     = $_POST['gender'];
    $phone      = trim($_POST['phone']);

    // Basic validation
    if (empty($last_name) || empty($first_name)  || empty($email) || empty($password) ||  empty($confirm_password) || empty($level) ||
        empty($faculty) || empty($department) || empty($matric) || empty($gender) || empty($phone)) {
        die("All fields are required.");
    }

    // Check for duplicate email or matric number
    $check = $pdo->prepare("SELECT * FROM students WHERE email = ? OR matric_number = ?");
    $check->execute([$email, $matric]);

    if ($check->rowCount() > 0) {
        die("Email or Matriculation number already exists.");
    }

    // Hash password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert
    $stmt = $pdo->prepare("INSERT INTO students 
        (last_name, first_name, middle_name, email, password, confirm_password, level, faculty, department, matric_number, gender, phone)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,  ?)");

    if ($stmt->execute([$last_name, $first_name, $middle_name, $email, $hashed_password, $confirm_password, $level, $faculty, $department, $matric, $gender, $phone])) {
    
// Basic PHP Script that outputs a simple HTML webpage
echo "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <title>Registration successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 40px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
    </style>
</head>
<body>
    <div class='container'>
        <h1>Welcome to Registration success page</h1>
        <p>kindly remember your password and login detail for future use.</p>
        You can proceed to dashbord with your login detail. <a href='login.php'>Login here</a>.
    </div>
</body>
</html>
";

    } else {
        echo "Registration failed. Please try again.";
    }
} else {
    header("Location: register.php");
    exit;
}
