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

### Hari 1 - Sesi Siang/Malam: Refactoring - Extract Widget (Bagian 1)
Memisahkan komponen UI menjadi kustom widget di dalam file `profile_page.dart` menggunakan penanda komentar agar kode rapi dan gampang dikelola.

**Widget yang dibuat (dalam `profile_page.dart`):**
- `ProfileAvatar` : Widget kustom untuk foto/ikon profil.
- `ProfileInfo` : Widget kustom untuk menampilkan nama dan peran pengguna.

**Format Commit:**
`refactor: extract avatar and info into custom widgets`

---

### Hari 2 - Sesi Pagi: Menambahkan Widget Statistik (Profile Stats)
Menambahkan bagian statistik ringkasan pengguna (jumlah Proyek, Pengikut, dan Mengikuti) untuk memperlengkap UI profil.

**Widget yang ditambahkan (dalam `profile_page.dart`):**
- `ProfileStats` & `_StatItem` : Widget kustom untuk menampilkan baris indikator statistik.

**Format Commit:**
`feat: add profile stats widget`