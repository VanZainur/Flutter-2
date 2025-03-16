# Praktikum: Future dan HTTP Request di Flutter

Praktikum ini membahas penggunaan future dan http request di flutter dengan membuat aplikasi sederhana yang mengambil data dari google books api. fokus utama adalah memahami cara kerja asynchronous programming menggunakan future serta mengimplementasikan tombol untuk memicu pengambilan data.

## Tujuan praktikum

Memahami konsep dasar asynchronous programming di flutter dengan menggunakan future dan http request untuk mengambil data dari api secara real-time.

## Hasil yang dicapai

Pengguna berhasil membuat aplikasi yang terdiri dari:
- tombol **go!** untuk memicu pengambilan data dari google books api.
- menampilkan hasil respons api dalam bentuk teks dengan panjang maksimal 450 karakter.
- menangani kondisi error dengan menampilkan pesan "an error occurred" jika terjadi kesalahan saat mengambil data.

## Penjelasan kode terkait substring dan catcherror

1. **Substring(0, 450)**  
   - fungsi ini digunakan untuk mengambil sebagian teks dari sebuah string.  
   - pada kode di atas, `value.body.toString().substring(0, 450)` mengambil 450 karakter pertama dari `value.body` setelah dikonversi menjadi string.  
   - ini berguna untuk membatasi panjang teks yang ditampilkan agar tidak terlalu panjang.

2. **CatchError**  
   - `catchError` digunakan untuk menangani error yang mungkin terjadi saat menjalankan `getData()`.  
   - jika terjadi error saat mengambil data, maka variabel `result` akan diisi dengan teks `'an error occurred'`.  
   - setelah itu, `setState(() {})` dipanggil untuk memperbarui tampilan agar perubahan pada `result` terlihat di aplikasi.

   dengan mekanisme ini, jika `getData()` berhasil, aplikasi akan menampilkan 450 karakter pertama dari hasilnya, tetapi jika terjadi error, akan ditampilkan pesan `'an error occurred'`.

## Kesimpulan

Praktikum ini memberikan pemahaman tentang penggunaan future dalam menangani proses asynchronous, seperti mengambil data dari api. selain itu, dipelajari juga cara memperbarui ui setelah data berhasil diambil atau saat terjadi error.

## Dokumentasi laporan
![whatsapp image 2025-03-16 at 20 40 21_5f9af3d4](https://github.com/user-attachments/assets/fa535758-33f7-4e86-8dfa-002618117d46)


<img src="https://github.com/user-attachments/assets/50a12f3a-1dc9-4a66-84a3-3a52c39b1a34" width="300">


