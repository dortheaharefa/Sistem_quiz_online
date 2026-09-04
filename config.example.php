<?php
/**
 * Contoh konfigurasi Sistem Quiz Online.
 *
 * Salin berkas ini menjadi "config.php" lalu isi sesuai komputermu:
 *   Windows : copy config.example.php config.php
 *   Linux   : cp config.example.php config.php
 *
 * config.php TIDAK ikut ter-commit ke Git karena berisi data rahasia.
 */

return [
    // Koneksi basis data MySQL
    'db' => [
        'host' => 'localhost',
        'user' => 'root',
        'pass' => '',
        'name' => 'quistiq',
    ],

    // SMTP untuk fitur lupa password.
    // Untuk Gmail, gunakan App Password (bukan kata sandi akun):
    // https://myaccount.google.com/apppasswords
    'mail' => [
        'host'      => 'smtp.gmail.com',
        'username'  => 'alamat-email-kamu@gmail.com',
        'password'  => 'xxxx xxxx xxxx xxxx',
        'port'      => 587,
        'secure'    => 'tls',
        'from_name' => 'Sistem Quiz Online',
    ],
];
