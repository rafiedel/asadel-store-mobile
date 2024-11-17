# ASADEL STORE - Tugas Individu PBP

## Daftar Isi
- [Identitas Mahasiswa](#identitas-mahasiswa)
- [Tugas Individu 7: Elemen Dasar Flutter](#tugas-individu-7-elemen-dasar-flutter)
- [Tugas Individu 8: Flutter Navigation, Layouts, Forms, and Input Elements](#tugas-individu-8-flutter-navigation-layouts-forms-and-input-elements)
- [Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter](#tugas-9-integrasi-layanan-web-django-dengan-aplikasi-flutter)

## Identitas Mahasiswa

**Nama**: Rafie Asadel Tarigan  
**NPM**: 2306245485  
**Kelas**: PBP - F

## Tugas Individu 7: Elemen Dasar Flutter

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

## Tugas Individu 8: Flutter Navigation, Layouts, Forms, and Input Elements

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

## Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

### A. Pentingnya Model
Model digunakan untuk mengorganisir data yang diterima dari backend menjadi satu kesatuan objek yang terstruktur. Dengan menambahkan metode *factory* `fromJson` dan `toJson`, frontend dapat dengan mudah mengambil dan mengirim data objek ke backend. Tanpa model, meskipun aplikasi tetap dapat berjalan, pengelolaan data akan menjadi lebih sulit karena data yang diterima hanya berupa struktur `Map`, sehingga kurang terstruktur dan rentan terhadap kesalahan saat mengolah data.
### B. Library http
Library `http` dalam Flutter berfungsi untuk berkomunikasi dengan server/backend, baik yang berada di internet maupun *localhost*. Dalam tugas ini, `http` digunakan bersama *CookiesRequest* yang disediakan oleh library `pbp_django_auth` untuk berinteraksi dengan *endpoint* seperti login, register, logout, mengambil data produk, dan menambah produk.
### C. CookiesRequest
`CookiesRequest` adalah komponen dari library `pbp_django_auth` yang membantu dalam berkomunikasi dengan backend menggunakan protokol HTTP serta menyimpan *cookies* di *local storage* menggunakan `shared_preferences`. Oleh karena itu, `CookiesRequest` didistribusikan ke semua *screen* agar mahasiswa dapat dengan mudah berkomunikasi dengan backend, memanfaatkan berbagai komponen yang disediakan.
### D. Mekanisme Pengiriman-Pengambilan Data
Dalam tugas ini, mekanisme pengiriman dan pengambilan data diterapkan di `product_form.dart` dan `list_product.dart`. Setelah semua input di `product_form.dart` terisi, pengguna dapat mengklik tombol *Save* untuk mengirimkan data melalui *body* request ke endpoint `create-flutter/`, dengan menyertakan informasi bahwa pengirim adalah pengguna tersebut.  
Sementara itu, pengambilan data produk diimplementasikan di `list_product.dart` dengan mengirimkan permintaan ke endpoint `json/`, beserta informasi tambahan bahwa permintaan dilakukan oleh pengguna tersebut.
### E. Mekanisme Autentikasi
Dalam tugas ini, mekanisme autentikasi diterapkan di `login.dart`, `register.dart`, dan `menu.dart`. Di `login.dart`, data berupa *username* dan *password* dikirimkan ke endpoint `auth/logout/`. Dari permintaan ini, server akan memberikan respon berupa *cookies* yang kemudian disimpan di *local storage* menggunakan `shared_preferences`.  
Di `register.dart`, data yang dikirim berupa *username*, *password1*, dan *password2* dikirim ke endpoint `auth/register/`. Jika respon permintaan berhasil, pengguna akan diarahkan ke halaman login.  
Untuk mekanisme logout di `menu.dart`, ketika pengguna menekan tombol logout, aplikasi akan mengirimkan permintaan ke endpoint `auth/logout/`, yang akan menghapus *cookies* di *local storage* dan menandai pengguna tersebut sebagai tidak aktif atau logout di sisi server/backend.
### F. Cara Implementasi Checklist
1. Membuat endpoint baru di [asadel-store](https://github.com/rafiedel/asadel-store) untuk mengatur login, register, logout, dan membuat data produk baru agar dapat digunakan oleh aplikasi Flutter.
2. Membuat model `Product` di `product.dart` menggunakan QuickType.io.
3. Membuat screen dan logika autentikasi awal (login dan register) di `login.dart` dan `register.dart`.
4. Membuat screen dan logika untuk mengambil semua data produk yang terhubung dengan pengguna di `list_product.dart`, kemudian membuat screen `detail_product` yang terhubung ke produk satu per satu dari `list_product.dart` dengan mengirimkan objek *fields* dari produk tersebut.
5. Mengupdate screen `product_form.dart` agar terintegrasi dengan endpoint backend untuk pembuatan produk baru.
6. Mengupdate `left_drawer.dart` dan `menu.dart` untuk menavigasi ke screen `list_product.dart`, serta menambahkan fitur logout untuk kembali ke halaman login.
