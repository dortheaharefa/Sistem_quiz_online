# Sistem Quiz Online

Aplikasi web untuk menyelenggarakan kuis daring di lingkungan kampus. Dosen menyusun
soal beserta pilihan jawaban, mahasiswa mengerjakannya dalam batas waktu yang
ditentukan, dan nilai langsung terhitung otomatis begitu kuis selesai.

Dibangun dengan **PHP native** dan **MySQL**, tanpa framework.

---

## Daftar Isi

- [Fitur](#fitur)
- [Hak Akses Pengguna](#hak-akses-pengguna)
- [Teknologi](#teknologi)
- [Kebutuhan Sistem](#kebutuhan-sistem)
- [Instalasi](#instalasi)
- [Struktur Folder](#struktur-folder)
- [Basis Data](#basis-data)
- [Catatan Keamanan](#catatan-keamanan)

---

## Fitur

**Autentikasi**
- Registrasi mandiri untuk mahasiswa, serta pendaftaran dosen melalui admin
- Login dengan pembedaan hak akses
- Lupa password lewat kode verifikasi yang dikirim ke email (berlaku 10 menit)
- Ubah profil dan ubah kata sandi untuk setiap peran

**Pengelolaan kuis**
- Dosen menyusun kuis: judul, waktu pengerjaan, dan daftar soal
- Soal pilihan ganda dengan dukungan gambar pada soal maupun opsi jawaban
- Ubah dan hapus kuis yang sudah dibuat

**Pengerjaan kuis**
- Mahasiswa melihat daftar kuis yang tersedia
- Pengerjaan dengan batas waktu, jawaban tersimpan per soal
- Nilai dihitung otomatis dan langsung tampil setelah kuis selesai

**Penilaian & laporan**
- Dosen melihat rekap nilai per kuis dan per mahasiswa
- Ekspor nilai ke Excel
- Admin mengekspor data pengguna ke Excel

**Administrasi**
- Manajemen akun admin, dosen, dan mahasiswa
- Pemantauan seluruh kuis yang dibuat dosen

---

## Hak Akses Pengguna

| Peran | Kemampuan utama |
|---|---|
| **Admin** | Mengelola akun admin, dosen, dan mahasiswa; melihat seluruh kuis; mengekspor data pengguna |
| **Dosen** | Membuat, mengubah, dan menghapus kuis; melihat serta mengekspor nilai mahasiswa |
| **Mahasiswa** | Mengerjakan kuis yang tersedia dan melihat nilai sendiri |

---

## Teknologi

| Komponen | Keterangan |
|---|---|
| Bahasa | PHP (native, tanpa framework) |
| Basis data | MySQL / MariaDB |
| Pengiriman email | PHPMailer |
| Ekspor Excel | PhpSpreadsheet |
| Dependency manager | Composer |
| Antarmuka | HTML, CSS, JavaScript |

---

## Kebutuhan Sistem

- PHP 7.4 atau lebih baru
- MySQL / MariaDB
- Composer
- Web server, misalnya XAMPP atau Laragon
- Ekstensi PHP: `mysqli`, `mbstring`, `gd`, `zip`, `openssl`

---

## Instalasi

**1. Clone repository ke folder web server**

```bash
cd C:/xampp/htdocs
git clone https://github.com/USERNAME/sistem-quiz-online.git
cd sistem-quiz-online
```

**2. Pasang dependency**

```bash
composer install
```

**3. Siapkan berkas konfigurasi**

```bash
# Windows
copy config.example.php config.php

# Linux / macOS
cp config.example.php config.php
```

Buka `config.php` lalu isi:

- **Bagian `db`** — host, user, password, dan nama basis data
- **Bagian `mail`** — akun SMTP untuk fitur lupa password. Untuk Gmail gunakan
  [App Password](https://myaccount.google.com/apppasswords), bukan kata sandi akun

**4. Siapkan basis data**

Buat basis data kosong bernama `quistiq` (atau sesuai isian di `config.php`),
lalu impor berkas SQL dari folder `database/`.

**5. Jalankan**

Buka `http://localhost/sistem-quiz-online/Login/login.php` di peramban.

**6. Pastikan folder berikut dapat ditulis**

- `uploads/soal/`
- `uploads/opsi/`

---

## Struktur Folder

```
sistem-quiz-online/
├── Admin/            Halaman & proses area admin
├── Dosen/            Pembuatan kuis, penilaian, ekspor nilai
├── Mahasiswa/        Pengerjaan kuis dan riwayat nilai
├── Login/            Login, lupa password, reset password
├── Daftar/           Registrasi mahasiswa
├── assets/
│   ├── css/          Gaya tampilan per halaman
│   ├── js/           Skrip antarmuka
│   └── images/       Gambar antarmuka
├── uploads/
│   ├── soal/         Gambar pada soal
│   └── opsi/         Gambar pada pilihan jawaban
├── sql.php           Koneksi basis data
└── config.example.php  Contoh konfigurasi
```

Isi folder `uploads/` dan berkas `config.php` **tidak disertakan** dalam repository.

---

## Basis Data

Aplikasi menggunakan tabel berikut:

| Tabel | Isi |
|---|---|
| `users` | Akun login seluruh peran, termasuk token reset password |
| `admins` | Data admin |
| `dosen` | Data dosen |
| `mahasiswa` | Data mahasiswa |
| `data_quis` | Kuis: judul, pemilik, dan durasi pengerjaan |
| `soal_quis` | Soal beserta pilihan jawaban dan kunci |
| `hasil_kuis` | Jawaban dan nilai mahasiswa per kuis |

---

## Catatan Keamanan

Beberapa hal yang masih perlu diperbaiki dan terbuka untuk dikembangkan:

- Sebagian query masih menyusun string SQL langsung dari input pengguna.
  Sebaiknya diganti dengan *prepared statement* (`mysqli_prepare`) untuk mencegah SQL injection.
- Kredensial basis data dan SMTP kini berada di `config.php` yang dikecualikan dari Git.
  Jangan pernah menuliskannya langsung di dalam kode.
