**Nama:** Talitha Novelia Salsabila  
**NIM:** H1D024122  
**Shift:** C  

## Pertemuan 2

| Hello World | Widget Column | List Data Produk |
| :---: | :---: | :---: |
| <img src="https://github.com/user-attachments/assets/b73dc84c-deba-4f64-bd9f-3c5354447d5c" width="280" /> | <img src="https://github.com/user-attachments/assets/2bf8c9e6-c11f-494d-86f3-58924399de01" width="280" /> | <img src="https://github.com/user-attachments/assets/e079064f-808f-41cc-a2e2-63f652c487b9" width="280" /> |

**Penjelasan:**
1. **Hello World:** Menampilkan struktur antarmuka dasar Flutter menggunakan `StatelessWidget` dengan kerangka `Scaffold`, `AppBar` biru bertuliskan "Belajar Flutter", serta widget `Center` yang memposisikan widget `Text("Hello World")` tepat di tengah layar secara modular melalui file terpisah `hello_world.dart`.
2. **Widget Column:** Mengimplementasikan tata letak vertikal menggunakan widget `Column` pada `column_widget.dart` yang menampung sekumpulan widget teks (*Kolom 1*, *Kolom 2*, *Kolom 3*, *Kolom 4*) secara menurun dari atas ke bawah pada sumbu utama vertikal (*main axis*).
3. **List Data Produk:** Mengimplementasikan widget dinamis `StatefulWidget` pada `ui/produk_page.dart` yang memanfaatkan widget `ListView` untuk menampilkan daftar data produk yang dapat digulir (*scrollable*), dibungkus menggunakan komponen `Card` dan `ListTile` untuk memisahkan setiap item produk (*Kulkas*, *Playstation*, *Radio*) beserta harganya secara terstruktur dan rapi.

**Kesimpulan Pertemuan 2:** Pengenalan dan Desain Framework Flutter memberikan pemahaman fundamental mengenai perancangan antarmuka aplikasi bergerak berbasis pohon widget (*Everything is a Widget*). Praktikan mempelajari perbedaan esensial antara `StatelessWidget` yang bersifat statis dan `StatefulWidget` yang mendukung pembaruan status internal secara dinamis. Selain itu, penguasaan komponen tata letak dasar seperti `Column` untuk pengaturan posisi vertikal serta `ListView` untuk penyajian data kolektif dalam format kartu (*Card*) menjadi fondasi penting dalam membangun antarmuka aplikasi mobile yang modular, responsif, dan mudah dipelihara.
