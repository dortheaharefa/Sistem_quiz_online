<?php
// Koneksi ke database
require_once __DIR__ . '/sql.php';

// Cek koneksi
if (!$db) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

// Query JOIN lengkap
$query = "
    SELECT 
        hk.hasil_quis_id,
        hk.mahasiswa_id,
        u.nama AS nama_mahasiswa,
        dq.mata_kuliah,
        hk.total_soal,
        hk.waktu_mulai,
        hk.waktu_selesai,
        hk.benar,
        hk.nilai,
        hk.keterangan,
        hk.tanggal
    FROM hasil_kuis hk
    LEFT JOIN mahasiswa m ON hk.mahasiswa_id = m.id
    LEFT JOIN users u ON m.users_id = u.users_id
    LEFT JOIN data_quis dq ON hk.quis_id = dq.quis_id
    ORDER BY hk.hasil_quis_id ASC
";

$result = mysqli_query($db, $query) or die("Query error: " . mysqli_error($db));

$data = array();

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

// Output JSON
header('Content-Type: application/json');
echo json_encode($data, JSON_PRETTY_PRINT);

mysqli_close($db);
?>
