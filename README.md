# Aplikasi Profil Flutter 

Proyek tugas mata kuliah Aplikasi Mobile  untuk membuat tampilan profil pengguna secara bertahap.

---

## Progress Pengerjaan

### Hari 1 - Sesi Pagi: Kerangka Dasar Aplikasi
Pada sesi ini, fokus utamanya adalah membuat struktur awal aplikasi dan tampilan profil sederhana sebelum kodenya dipisah-pisah.

**File yang dibuat:**
- `lib/main.dart` : Menjalankan `MaterialApp` dengan tema dasar dan mengarahkan halaman utama ke `ProfilePage`.
- `lib/pages/profile_page.dart` : Menampung struktur halaman utama menggunakan `Scaffold` dan `AppBar`.

**Komponen yang ditambahkan:**
- Avatar lingkaran sederhana (`CircleAvatar`).
- Teks nama pengguna ("Aryan Firmansyah").
- Teks role/jabatan ("Mahasiswa Software Engineering").

**Format Commit:**
`feat: create basic profile page structure with avatar and text`

---

### Hari 1 - Sesi Siang/Malam: Refactoring - Extract Widget 
Memisahkan komponen UI menjadi kustom widget di dalam file `profile_page.dart` menggunakan penanda komentar agar kode rapi dan gampang dikelola.

**Widget yang dibuat (dalam `profile_page.dart`):**
- `ProfileAvatar` : Widget kustom untuk foto/ikon profil.
- `ProfileInfo` : Widget kustom untuk menampilkan nama, peran, dan tombol "Edit Profil".

**Format Commit:**
`refactor: extract avatar and info into custom widgets`

---

### Hari 2 - Sesi Pagi: Menambahkan Baris Statistik
Menambahkan bagian statistik ringkasan pengguna (jumlah Proyek, Followers, dan Following) di bawah tombol Edit Profil menggunakan layout `Row` dan `Column`.

**Komponen yang ditambahkan:**
- Widget `Row` yang berisi 3 kolom indikator angka dan label statistik.

**Format Commit:**
`feat: add profile statistics row`

---

### Hari 2 - Sesi Siang/Malam: Refactoring - Extract Widget 
Mengekstrak komponen baris statistik menjadi *Custom Widget* mandiri agar kode modular dan *reusable*.

**Widget yang dibuat (dalam `profile_page.dart`):**
- `ProfileStats` : Widget kustom pembungkus baris statistik.
- `StatItem` : Widget kustom *reusable* untuk merender setiap pasang angka dan label.

**Format Commit:**
`refactor: extract statistics UI into ProfileStats and StatItem widgets`

---

### Hari 3 - Sesi Pagi: Implementasi ListView & Expanded
Menambahkan daftar Keahlian Terpendam yang dapat digulir (*scrollable*) di bagian bawah halaman profil menggunakan `ListView.builder` yang dibungkus oleh widget `Expanded`.

**Komponen yang ditambahkan:**
- `Expanded` & `ListView.builder` : Menampilkan daftar keahlian secara dinamis dalam bentuk `Card` dan `ListTile`.

**Format Commit:**
`feat: add scrollable experience list using ListView.builder`

---

### Hari 3 - Sesi Siang/Malam: Refactoring - Extract Widget
Mengekstrak tampilan item dalam `ListView` ke dalam *Custom Widget* mandiri bernama `ExperienceCard` serta menerapkan styling pada kartu.

**Widget yang dibuat (dalam `profile_page.dart`):**
- `ExperienceCard` : Widget kustom *reusable* untuk menampilkan setiap baris pengalaman/keahlian.

**Format Commit:**
`refactor: extract list tile into ExperienceCard widget and apply styling`