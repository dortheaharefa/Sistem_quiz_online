<?php
/**
 * Konfigurasi lokal — JANGAN di-commit ke Git.
 * Berkas ini sudah tercantum di .gitignore.
 */

return [
    'db' => [
        'host' => 'localhost',
        'user' => 'root',
        'pass' => '',
        'name' => 'quistiq',
    ],

    'mail' => [
        'host'      => 'smtp.gmail.com',
        'username'  => 'satup325@gmail.com',
        'password'  => 'aawr pgui bcrz oauw',
        'port'      => 587,
        'secure'    => 'tls',
        'from_name' => 'Sistem Quiz Online',
    ],
];
