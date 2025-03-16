## Dokumentasi laporan

![WhatsApp Image 2025-03-17 at 02 26 52_45a2a41f](https://github.com/user-attachments/assets/42414eaf-fafb-4f58-b3d9-1175ca2d9823)

##

<img src="https://github.com/user-attachments/assets/8b0864b4-5de6-4259-89a3-83bac55d3d87" width="300">

## Jawaban soal 10:

Ketika method handleError() dipanggil di elevatedbutton, hasil yang ditampilkan di layar adalah pesan error "exception: something terrible happened!". selain itu, di log akan muncul teks 'complete' karena perintah di dalam finally tetap dijalankan.

### Perbedaan kode langkah 1 dan 4:

Pada langkah 1, returnerror() langsung dipanggil dan menggunakan .then(), .catcherror(), serta .whencomplete() untuk menangani hasil future. ini adalah pendekatan berbasis callback chaining.

Pada langkah 4, returnerror() dipanggil di dalam try-catch-finally dalam method handleError(), yang merupakan pendekatan async-await. ini membuat kode lebih mudah dibaca dan ditangani dalam satu blok kode.

