# Laporan Praktikum

## Perbedaan ui dengan praktikum sebelumnya

### 1. Indikator loading
- sebelumnya, ui menampilkan `circularprogressindicator` jika lokasi belum tersedia, sama seperti sekarang.  
- namun, di kode baru, metode `getposition()` langsung dipanggil di `initstate()` tanpa `future.delayed()`, sehingga tidak ada tambahan delay 3 detik seperti sebelumnya.  

### 2. Format tampilan lokasi
- sebelumnya, lokasi ditampilkan dalam format string dengan label `"latitude: ..., longitude: ..."`.  
- sekarang, format tampilan tetap sama, tetapi variabel yang digunakan berubah dari `myposition` (string) menjadi `position` (tipe `position`).  

### 3. Cara mengakses lokasi
- sebelumnya, `myposition` adalah string yang diperbarui di `setstate()`.  
- sekarang, `position` adalah objek `position` yang diperbarui langsung, sehingga lebih fleksibel untuk manipulasi data.  

---

## Perbedaan ui dengan langkah sebelumnya

### 1. Indikator loading tetap ada
- tetapi sekarang berbasis `futurebuilder`, bukan `position == null`.  

### 2. Error handling ditampilkan di ui
- sebelumnya, jika terjadi error, aplikasi mungkin tidak memberikan feedback.  
- sekarang, pesan error muncul di layar.  

### 3. Format tampilan tetap sama
- latitude dan longitude tetap ditampilkan dalam `column`.  

---

## Dokumentasi Laporan
<img src= "https://github.com/user-attachments/assets/e341151c-8ca8-48a2-b672-39ed051b2ea9" width="300">
<img src= "https://github.com/user-attachments/assets/e341151c-8ca8-48a2-b672-39ed051b2ea9" width="300">
