<?php
// URL JSON hasil export kuis
$json_url = "http://localhost/Sistem_quiz_online/export_hasil_kuis.php";

// Ambil data JSON
$json_data = file_get_contents($json_url);

// Ubah menjadi array
$data = json_decode($json_data, true);

// Tampilkan untuk cek
echo "<pre>";
print_r($data);
echo "</pre>";
?>
