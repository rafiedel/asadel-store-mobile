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