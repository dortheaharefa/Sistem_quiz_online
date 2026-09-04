<?php
require_once __DIR__ . '/sql.php';

// Query SANGAT spesifik
$query = "
    SELECT hk.*, u.nama as nama_mahasiswa
    FROM hasil_kuis hk
    JOIN users u ON hk.mahasiswa_id = u.users_id
    WHERE hk.keterangan = 'lulus'
    ORDER BY hk.hasil_quis_id
";

$result = mysqli_query($db, $query);

$data = [];
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

header('Content-Type: application/json');
echo json_encode([
    'data' => $data,
    'count' => count($data)
], JSON_PRETTY_PRINT);

mysqli_close($db);
?>