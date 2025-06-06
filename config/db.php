<?php
$host = 'localhost';
$db   = 'external_registration';
$user = 'root'; // or your MySQL username
$pass = 'password';     // or your MySQL password
$port = '3307'; // or your MySQL port

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;port=$port;charset=utf8mb4", $user, $pass);
    // Set error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
} 

/* 
try {
    // Absolute path to SQLite file (adjust as needed)
    $pdo = new PDO('sqlite:' . __DIR__ . '/../database/database.sqlite');
    
    // Set error mode to exception for debugging
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Optional: enforce foreign key constraints
    $pdo->exec('PRAGMA foreign_keys = ON');
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
    
*/
?>

