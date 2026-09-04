<?php
// Konfigurasi diambil dari config.php (tidak ikut ter-commit ke Git).
$configFile = __DIR__ . '/config.php';

if (!file_exists($configFile)) {
    die('config.php belum ada. Salin config.example.php menjadi config.php lalu sesuaikan isinya.');
}

$config = require $configFile;

// Koneksi ke database
$db = mysqli_connect(
    $config['db']['host'],
    $config['db']['user'],
    $config['db']['pass'],
    $config['db']['name']
);

// Cek koneksi
if (!$db) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
// Cek apakah user sudah login
// if (!isset($_SESSION['id'])) {
//     header('Location:/Latihan_soal/Sistem_quiz_online/Login/login.php');
//     exit(); 
// }
?>
