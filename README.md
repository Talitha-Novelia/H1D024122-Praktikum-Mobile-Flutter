# Laporan Praktikum Pemrograman Mobile
## Modul 2: Pengenalan dan Desain Framework Flutter

---

### 👤 Identitas Mahasiswa
| Data | Keterangan |
| :--- | :--- |
| **Nama** | Talitha Novelia Salsabila |
| **NIM** | H1D024122 |
| **Shift** | C |

---

### 📁 Struktur File Proyek
```text
lib/
├── column_widget.dart       # Implementasi Widget Column
├── hello_world.dart         # Implementasi Dasar StatelessWidget Hello World
├── main.dart                # Entry point aplikasi utama (ProdukPage)
├── row_widget.dart          # Implementasi Widget Row
└── ui/
    ├── produk_detail.dart   # Halaman detail produk
    ├── produk_form.dart     # Form input data produk
    └── produk_page.dart     # ListView Card daftar produk
```

---

### 📸 Dokumentasi & Penjelasan Langkah Praktikum

#### 1. Hello World (`hello_world.dart`)
Tampilan halaman awal yang memperkenalkan struktur dasar aplikasi Flutter dan pemisahan file secara modular.

<p align="center">
  <img src="https://github.com/user-attachments/assets/b73dc84c-deba-4f64-bd9f-3c5354447d5c" width="550" alt="Hello World" />
</p>

* **Penjelasan Komponen:**
  - **`StatelessWidget`**: Digunakan karena halaman ini bersifat statis tanpa adanya perubahan status (*state*) data.
  - **`Scaffold`**: Menyediakan struktur dasar antarmuka berbasis *Material Design*.
  - **`AppBar`**: Bilah navigasi atas berwarna biru dengan judul teks `"Belajar Flutter"`.
  - **`Center`**: Menempatkan elemen anaknya (`child`) tepat berada di titik tengah layar secara presisi.
  - **`Text`**: Menampilkan konten teks `"Hello World"`.

---

#### 2. Widget Column (`column_widget.dart`)
Implementasi tata letak (*layout*) multi-elemen yang disusun secara vertikal.

<p align="center">
  <img src="https://github.com/user-attachments/assets/2bf8c9e6-c11f-494d-86f3-58924399de01" width="550" alt="Widget Column" />
</p>

* **Penjelasan Komponen:**
  - **`Column`**: Widget tata letak yang menyusun widget-widget di dalamnya (`children`) secara lurus dari atas ke bawah pada sumbu vertikal (*main axis*).
  - **`Text`**: Berisi empat buah teks (*Kolom 1*, *Kolom 2*, *Kolom 3*, *Kolom 4*) yang tersusun rapi secara menurun.

---

#### 3. List Data Produk (`ui/produk_page.dart`)
Tampilan hasil akhir dari modul berupa daftar produk interaktif menggunakan komponen kartu (*Card*).

<p align="center">
  <img src="https://github.com/user-attachments/assets/e079064f-808f-41cc-a2e2-63f652c487b9" width="550" alt="List Data Produk" />
</p>

* **Penjelasan Komponen:**
  - **`StatefulWidget`**: Digunakan untuk antarmuka yang dinamis dan siap merespons perubahan status internal.
  - **`ListView`**: Komponen daftar yang memungkinkan konten digulir (*scrollable*) jika melebihi batas layar.
  - **`Card`**: Membungkus setiap item dengan bentuk kartu yang memiliki elevasi (*shadow*) agar terlihat terpisah dan rapi.
  - **`ListTile`**: Format baris daftar standar dengan:
    - `title`: Menampilkan nama produk (*Kulkas*, *Playstation*, *Radio*).
    - `subtitle`: Menampilkan harga produk (*30000*).

---

### 📝 Kesimpulan

Berdasarkan praktikum pada **Modul 2 (Pengenalan dan Desain Framework Flutter)**, dapat ditarik beberapa kesimpulan penting:

1. **Konsep Dasar Flutter & Hierarki Widget**: Seluruh antarmuka pada Flutter tersusun atas pohon widget (*Everything is a Widget*), mulai dari kerangka halaman (`Scaffold`), tata letak (`Center`, `Column`, `ListView`), hingga komponen tampilan (`Text`, `Card`, `ListTile`).
2. **Karakteristik StatelessWidget vs StatefulWidget**:
   - `StatelessWidget` digunakan untuk antarmuka yang bersifat statis, tidak berubah, dan tidak memerlukan interaksi data langsung (seperti pada *Hello World* dan *Column*).
   - `StatefulWidget` digunakan untuk antarmuka dinamis yang dapat me-render ulang dirinya saat data atau status (*state*) di dalamnya berubah (seperti pada *Form Produk* dan *ListView Produk*).
3. **Fleksibilitas Tata Letak (Layouting)**: Flutter mempermudah perancangan tata letak antarmuka mobile dengan widget yang terstruktur rapi, seperti `Column` untuk susunan vertikal dan `ListView` untuk data bertipe koleksi/daftar.
4. **Prinsip Modularitas (*Clean Code*)**: Pemisahan komponen ke dalam file-file terpisah serta folder `ui/` mempermudah keterbacaan kode (*readability*), proses pengujian (*debugging*), dan memudahkan pemeliharaan proyek aplikasi dalam jangka panjang.
