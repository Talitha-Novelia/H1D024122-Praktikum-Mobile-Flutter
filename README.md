**Nama:** Talitha Novelia Salsabila  
**NIM:** H1D024122  
**Shift:** C  

## Pertemuan 1

**Materi:** Instalasi Lingkungan Flutter & Dasar Bahasa Pemrograman Dart

**Penjelasan:**
Pertemuan ini berfokus pada persiapan lingkungan pengembangan (*environment setup*) dan penguasaan dasar bahasa pemrograman Dart sebagai pondasi utama pengembangan aplikasi Flutter. Tahapan mencakup:
1. **Instalasi & Konfigurasi Lingkungan:** Mempersiapkan Java Development Kit (JDK), instalasi Android Studio beserta Android SDK dan AVD (Android Virtual Device), pengunduhan Flutter SDK, serta konfigurasi *Environment Variables* (Path) pada sistem operasi agar perintah Flutter dapat dijalankan secara global melalui terminal/IDE.
2. **Dasar Pemrograman Dart:** Mempelajari sintaksis Dart melalui DartPad, meliputi penanganan tipe data (*int, double, String, bool, var*), operasi matematika dan logika, struktur kontrol perulangan dan percabangan (*if-else, for, while*), pembuatan fungsi (*functions*), konsep *Object-Oriented Programming* (Class & Object), mekanisme eksepsi (*try-catch*), serta pemrograman asinkronus (*async-await*).

**Kesimpulan Pertemuan 1:** Konfigurasi lingkungan pengembangan yang tepat serta pemahaman menyeluruh terhadap bahasa pemrograman Dart merupakan fondasi mutlak dalam pemrograman aplikasi bergerak berbasis Flutter. Praktikan memahami bagaimana mengintegrasikan dependensi sistem (JDK, Android SDK, Flutter SDK) hingga siap digunakan untuk kompilasi lintas platform (*cross-platform*). Selain itu, sintaks Dart yang berbasis OOP dan mendukung eksekusi asinkronus (*async-await*) memberikan efisiensi tinggi bagi developer dalam membangun logika aplikasi yang kokoh, terstruktur, dan berkinerja optimal sebelum melangkah ke perancangan antarmuka visual (UI).

## Pertemuan 2

| Hello World | Widget Column | List Data Produk |
| :---: | :---: | :---: |
| <img src="https://github.com/user-attachments/assets/b73dc84c-deba-4f64-bd9f-3c5354447d5c" width="280" /> | <img src="https://github.com/user-attachments/assets/2bf8c9e6-c11f-494d-86f3-58924399de01" width="280" /> | <img src="https://github.com/user-attachments/assets/e079064f-808f-41cc-a2e2-63f652c487b9" width="280" /> |

**Penjelasan:**
1. **Hello World:** Menampilkan struktur antarmuka dasar Flutter menggunakan `StatelessWidget` dengan kerangka `Scaffold`, `AppBar` biru bertuliskan "Belajar Flutter", serta widget `Center` yang memposisikan widget `Text("Hello World")` tepat di tengah layar secara modular melalui file terpisah `hello_world.dart`.
2. **Widget Column:** Mengimplementasikan tata letak vertikal menggunakan widget `Column` pada `column_widget.dart` yang menampung sekumpulan widget teks (*Kolom 1*, *Kolom 2*, *Kolom 3*, *Kolom 4*) secara menurun dari atas ke bawah pada sumbu utama vertikal (*main axis*).
3. **List Data Produk:** Mengimplementasikan widget dinamis `StatefulWidget` pada `ui/produk_page.dart` yang memanfaatkan widget `ListView` untuk menampilkan daftar data produk yang dapat digulir (*scrollable*), dibungkus menggunakan komponen `Card` dan `ListTile` untuk memisahkan setiap item produk (*Kulkas*, *Playstation*, *Radio*) beserta harganya secara terstruktur dan rapi.

**Kesimpulan Pertemuan 2:** Pengenalan dan Desain Framework Flutter memberikan pemahaman fundamental mengenai perancangan antarmuka aplikasi bergerak berbasis pohon widget (*Everything is a Widget*). Praktikan mempelajari perbedaan esensial antara `StatelessWidget` yang bersifat statis dan `StatefulWidget` yang mendukung pembaruan status internal secara dinamis. Selain itu, penguasaan komponen tata letak dasar seperti `Column` untuk pengaturan posisi vertikal serta `ListView` untuk penyajian data kolektif dalam format kartu (*Card*) menjadi fondasi penting dalam membangun antarmuka aplikasi mobile yang modular, responsif, dan mudah dipelihara.

## Pertemuan 3

| Login Page | Home Page | Sidemenu |
| :---: | :---: | :---: |
| <img src="https://github.com/user-attachments/assets/3c300175-7164-40f5-aec3-df17facb4b90" width="280" /> | <img src="https://github.com/user-attachments/assets/8b316c2a-4567-456b-a042-106d6e015ba2" width="280" /> | <img src="https://github.com/user-attachments/assets/36ec1485-094e-4990-85c9-f65dd36d4e09" width="280" /> |

**Penjelasan:**
1. **Login Page:** Mengimplementasikan form autentikasi pengguna dengan widget `TextField` untuk username dan password (dilengkapi opsi `obscureText: true` untuk menyamarkan kata sandi), serta tombol `ElevatedButton` ("Login"). Jika kredensial yang dimasukkan valid (`admin`/`admin`), aplikasi menyimpan data username ke penyimpanan lokal (*local storage*) melalui package `shared_preferences` dan memunculkan pop-up `AlertDialog` sebelum dialihkan ke `HomePage`. Jika kredensial salah, aplikasi menampilkan dialog peringatan kegagalan login.
2. **Home Page:** Menampilkan halaman beranda utama pengguna yang telah berhasil masuk (*login*), di mana data sesi nama pengguna (*username*) diambil kembali dari penyimpanan lokal (*local storage*) melalui fungsi asinkron `_loadUsername()` menggunakan package `shared_preferences` dan ditampilkan di tengah layar (`"Ini adalah halaman User $namauser"`). Halaman ini juga mengintegrasikan ikon menu navigasi samping pada `AppBar` melalui properti `drawer`.
3. **Sidemenu (Navigation Drawer):** Mengimplementasikan komponen navigasi geser samping `Drawer` pada `sidemenu.dart` yang memuat `DrawerHeader` serta item menu navigasi menggunakan `ListTile` berikon (`Icons.home` untuk Home dan `Icons.info` untuk About). Menu ini menerapkan mekanisme *routing* (`Navigator.push` dan `MaterialPageRoute`) yang memungkinkan transisi perpindahan antar halaman (*Home Page* dan *About Page*) secara terstruktur dan intuitif.

**Kesimpulan Pertemuan 3:** Praktikum Modul 3 mengenai Routes, Side Menu, Login, dan Local Storage memberikan pemahaman komprehensif mengenai pengelolaan alur navigasi multi-halaman dan manajemen sesi data pengguna pada framework Flutter. Praktikan berhasil menerapkan sistem autentikasi sederhana berbasis dialog alert serta memanfaatkan package `shared_preferences` untuk menyimpan dan membaca data sesi secara asinkronus ke penyimpanan lokal (*local storage*). Selain itu, penerapan navigasi *routing* berbasis `MaterialPageRoute` yang dipadukan dengan komponen antarmuka `Drawer` (*Sidemenu*) menjadi fondasi esensial dalam membangun arsitektur aplikasi mobile yang memiliki hierarki navigasi rapi, terorganisir, dan berorientasi pada kenyamanan pengguna (*user-friendly*).
