# Penjelasan Praktikum

## Langkah 2 - Menambahkan variabel dan method

- `completer` adalah variabel `Completer<int>()` yang digunakan untuk menyelesaikan Future secara manual.
- `getNumber()` membuat `Completer`, memanggil `calculate()`, lalu mengembalikan Future yang akan diselesaikan nanti.
- `calculate()` menunda eksekusi selama 5 detik, lalu menyelesaikan Future dengan nilai **42** menggunakan `completer.complete(42)`.

Kode ini mensimulasikan proses asynchronous di mana hasilnya tersedia setelah beberapa waktu.

## Langkah 5-6 - Menangani error pada proses asynchronous

- Pada langkah ini, `calculate()` diperbarui dengan **try-catch** agar dapat menangani error. Jika terjadi kesalahan, Future akan diselesaikan dengan `completer.completeError()`.
- Kode dalam `onPressed` diperbarui menggunakan `catchError()` untuk menangkap error dan menampilkan pesan kesalahan di UI.

Perbedaan utama:
- **Langkah 2** hanya menyelesaikan Future secara normal tanpa menangani error.
- **Langkah 5-6** menangani kemungkinan error sehingga aplikasi lebih stabil jika terjadi kegagalan dalam proses asynchronous.

## Dokumentasi laporan

<img src="https://github.com/user-attachments/assets/01c3c336-8ae1-4178-a39a-2b29d3ba87c5" width="300">

<img src="https://github.com/user-attachments/assets/01c3c336-8ae1-4178-a39a-2b29d3ba87c5" width="300">
