# Penjelasan

## Langkah 1 - Menambahkan tiga method async

Method `returnOneAsync()`, `returnTwoAsync()`, dan `returnThreeAsync()` dibuat untuk mengembalikan nilai 1, 2, dan 3 setelah delay selama 3 detik masing-masing.
`await Future.delayed(const Duration(seconds: 3));` digunakan untuk menunda eksekusi selama 3 detik sebelum mengembalikan nilai.
Ini mensimulasikan proses asynchronous, seperti pengambilan data dari server atau pemrosesan yang memerlukan waktu.

## Langkah 2 - Menambahkan method count()

Method `count()` bertugas untuk menjumlahkan hasil dari ketiga method asynchronous sebelumnya.
- Variabel `total` diinisialisasi dengan nilai 0.
- `total = await returnOneAsync();` mengambil nilai dari `returnOneAsync()` setelah menunggu 3 detik.
- `total += await returnTwoAsync();` dan `total += await returnThreeAsync();` menambahkan hasil dari masing-masing method setelah menunggu 3 detik setiap kali pemanggilan.
- Setelah ketiga operasi selesai, `setState(() { result = total.toString(); });` digunakan untuk memperbarui tampilan dengan hasil penjumlahan tersebut.

## Dokumentasi laporan

<img src="https://github.com/user-attachments/assets/67db7750-9c9f-4341-893e-b9c1de8deda8" width="300">

