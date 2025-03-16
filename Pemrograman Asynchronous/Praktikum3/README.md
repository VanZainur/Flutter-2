# Penjelasan Praktikum

## Langkah 2 - Menambahkan variabel dan method

- `completer` adalah variabel `Completer<int>()` yang digunakan untuk menyelesaikan Future secara manual.
- `getNumber()` membuat `Completer`, memanggil `calculate()`, lalu mengembalikan Future yang akan diselesaikan nanti.
- `calculate()` menunda eksekusi selama 5 detik, lalu menyelesaikan Future dengan nilai **42** menggunakan `completer.complete(42)`.

Kode ini mensimulasikan proses asynchronous di mana hasilnya tersedia setelah beberapa waktu.

## Dokumentasi laporan

<img src="https://github.com/user-attachments/assets/01c3c336-8ae1-4178-a39a-2b29d3ba87c5" width="300">

