# ASADEL STORE - Tugas Individu PBP

## Daftar Isi
- [Identitas Mahasiswa](#identitas-mahasiswa)
- [Tugas Individu  7: Elemen Dasar Flutter](#tugas-7-elemen-dasar-flutter)

## Identitas Mahasiswa

**Nama**: Rafie Asadel Tarigan  
**NPM**: 2306245485  
**Kelas**: PBP - F

## Tugas 7: Elemen Dasar Flutter

### A. Stateless Widget dan Stateful Widget
Stateless Widget adalah class Widget yang tidak dapat merubah value/field/passing argument nya. Sedangkan, Stateful Widget adalah class Widget yang dapat merubah value/field/passing argument dengan menggunakan setState()
### B. Widget dalam Tugas 7
Di dalam tugas ini saya menggunakan 2 macam widget, yaitu:
Widget buatan sendiri, dari hasil implementasi widget yang disediakan flutter
- MyApp, MyHomePage, ItemCard, dan InfoCard
Widget yang disediakan flutter
- MaterialApp, Material, InkWell, ScaffoldMessenger, SnackBar, Text, Container, Center, Column, Icon, Padding, Scaffold, AppBar, Row, SizedBox, dan GridView
### C. Fungsi *setState()*
*setState()* hanya tersedia di Stateful Widget untuk meng-rebuild widget yang valuenya terkena setState()
### D. Perbedaan *const* dan *final*
Keduanya dipakai untuk sesuatu yang tidak berubah. Tetapi kalau dilihat dari tugas ini, const hanya dipakai oleh Widget dan final dipakai untuk datatype suatu value/field/passing argument. Maka dapat disimpulkan bahwa const digunakan oleh sesuatu yang sudah dianggap konstant oleh engine sebelum di-run, sedangkan final digunakan oleh sesuatu yang perlu diinisialisasi terlebih dahulu saat di-run
### E. Cara Implementasi Checklist
1. Membuat flutter project bernama asadel_store_mobile
2. Memindahkan MyHomePage ke menu.dart
4. Membuat ItemHomePage sebagai field dari ItemCard
5. Membuat ItemCard sebagai tombol untuk memunculkan snackbar
6. Membuat InfoCard sebagai identitas mahasiswa
7. Mengubah MyHomePage menjadi Stateless Widget dengan menampilkan InfoCard berisi npm,nama, dan kelas BESERTA ItemCard yang berisi Lihat Daftar Produk, Tambah Produk, dan Logout

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements

### A. Keyword *const*
Keyword *const* digunakan untuk membuat objek menjadi *immutable* (tidak dapat diubah) saat proses kompilasi. Dengan demikian, objek yang bersifat statis tidak perlu dibangun ulang setiap kali program berjalan, yang dapat menghemat penggunaan memori dan meningkatkan performa aplikasi. Namun, *const* sebaiknya tidak digunakan pada objek yang bersifat dinamis karena tidak mendukung perubahan.
### B. *Column* dan *Row*
Keduanya adalah widget yang berfungsi untuk me-*wrap* beberapa widget dalam satu arah. Perbedaannya, *Column* menata widget secara vertikal, sedangkan *Row* menata widget secara horizontal. Contoh penggunaan *Column* dapat dilihat di `item_form.dart` pada baris 152, dan *Row* pada `menu.dart` di baris 42.
### C. Element Input pada Tugas
Pada tugas ini, elemen input yang digunakan meliputi *Form* dan *TextFormField*. Selain itu, terdapat juga elemen lain seperti *DropdownButtonFormField*, *SearchField*, *DatePicker*, dan beberapa elemen input lainnya.
### D. Theme pada Flutter dan Tugas
Konfigurasi *theme* di Flutter dilakukan dengan meletakkan `ThemeData` pada field `theme` di `MaterialApp`. Jika ingin menggunakan warna yang ada di tema tersebut, cukup tambahkan `Theme.of(context).<warna yang diinginkan>` pada field yang membutuhkan objek *Color*. Pada tugas ini, penggunaan tema dapat dilihat di file `mood_card` pada baris 23.
### E. Navigasi di Flutter
Navigasi antar halaman di Flutter dapat diatur dengan menggunakan tombol-tombol yang masing-masing memiliki fungsi `Navigator.push` untuk berpindah ke halaman/widget tertentu. Selain `Navigator.push`, terdapat metode lain seperti `pushReplacement` untuk menggantikan halaman saat ini dan `pop` untuk kembali ke halaman sebelumnya, yang dapat digunakan sesuai kebutuhan.
### F. Cara Implementasi Checklist
1. Membuat *screen* atau *page* `item_form.dart` yang berisi *input field* seperti *name*, *price*, *description*, dan *stock available*, serta sebuah tombol untuk menyimpan (*save*). Logikanya, setiap *field* akan divalidasi, dan jika lolos, datanya ditampilkan di *AlertDialog*.
2. Membuat folder `screens` untuk menyimpan `item_form.dart` dan `menu.dart`.
3. Menambahkan *drawer* di `left_drawer.dart` yang berfungsi untuk *routing* ke halaman `main.dart` dan `item_form.dart`, lalu menghubungkan *drawer* ini ke kedua halaman agar dapat diakses dari keduanya.
4. Melakukan *refactor* pada `main.dart` dengan memindahkan `ItemCard` dan `ItemHomePage` ke file `mood_card.dart`.
5. Membuat folder `widgets` untuk menyimpan `left_drawer.dart` dan `mood_card.dart`.