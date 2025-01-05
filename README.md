# **Flexofast Database Dashboard**

Repository ini merupakan bagian dari **Proyek Tugas Akhir** untuk mata kuliah Basis Data.

---

## **Kelompok 7**

**Nama Anggota**:

- **Rafly Syauqi Abrori** (23051204370)  
- **M. Farhan Nabil** (23051204372)  
- **Alfian Indra Pratama** (23051204383)  
- **Rayyan** (23051204385)  

---

## **Deskripsi Proyek**
Flexofast Database Dashboard adalah aplikasi yang dirancang untuk mempermudah penginputan, pengelolaan, dan pengelompokan data ke dalam database lokal. Proyek ini dibangun menggunakan teknologi modern seperti Flutter dan Drift untuk memberikan antarmuka yang interaktif serta pengelolaan data yang efisien.

---

## **Fitur Utama**
- **Input Data**: Form input nilai dengan validasi data otomatis.
- **Kelola Data**: Kemampuan untuk menampilkan, mencari, mengedit, dan menghapus data.
- **Database Lokal**: Relasi antar tabel yang mendukung integritas data.
- **Antarmuka Simple**: Desain input simple dengan Flutter Framework.

---

## **Teknologi yang Digunakan**
- **Flutter Framework**: Untuk membangun antarmuka pengguna.
- **Drift**: Untuk pengelolaan database lokal.
- **Bloc**: Untuk state management yang terorganisir.
- **Dart**: Bahasa pemrograman utama untuk pengembangan aplikasi.

---

## **Cara Memulai Proyek**
Ikuti langkah-langkah berikut untuk memulai proyek ini di lingkungan lokal Anda:

1. **Clone Repository**
   ```bash
   git clone <repository-url>
   ```

2. **Masuk ke Folder Proyek**
   ```bash
   cd flexofast-database-dashboard
   ```

3. **Unduh Semua Dependensi**
   ```bash
   flutter pub get
   ```

4. **Bangun File yang Dibutuhkan dengan Build Runner**
   ```bash
   dart run build_runner build
   ```

5. **Jalankan Aplikasi**
   ```bash
   flutter run
   ```

---

## **Struktur Folder**

Berikut adalah struktur folder utama dalam proyek ini:

```
flexofast-basis-data-dashboard/
├── android/              # Konfigurasi dan file build untuk Android
├── ios/                  # Konfigurasi dan file build untuk iOS
├── lib/                  # Direktori utama kode sumber Flutter
│   ├── backup/           # Folder untuk menyimpan backup file (sementara atau arsip)
│   ├── dao/              # Data Access Object (DAO) untuk pengelolaan data
│   ├── database/         # Konfigurasi dan pengelolaan database aplikasi
│   ├── entity/           # Definisi entitas untuk model data
│   ├── features/         # Modul fitur utama aplikasi
│   │   ├── client/       # Modul fitur terkait klien
│   │   │   ├── cubit/    # State management dengan Cubit
│   │   │   └── pages/    # Halaman terkait fitur klien
│   │   ├── master/       # Modul master data
│   │   ├── pegawai/      # Modul untuk pengelolaan data pegawai
│   │   ├── pembayaran/   # Modul fitur pembayaran
│   │   ├── sewa/         # Modul terkait penyewaan
│   │   └── transaksi/    # Modul pengelolaan transaksi
│   │       └── dashboard_page.dart   # Halaman dashboard utama
│   ├── widgets/          # Komponen UI yang dapat digunakan kembali
│   ├── app.dart          # Konfigurasi aplikasi utama
│   ├── main.dart         # Titik masuk utama aplikasi
│   ├── navigate.dart     # Konfigurasi navigasi aplikasi
│   ├── provider.dart     # Pengelolaan state dengan Provider
│   └── utils.dart        # Fungsi utilitas dan helper
├── pubspec.yaml          # File konfigurasi dependensi Flutter
├── README.md             # Dokumentasi proyek
```

---


