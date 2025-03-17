# Penjelasan Praktikum

Koordinat GPS kemungkinan besar tidak akan diperoleh ketika aplikasi dijalankan di browser.

## Alasan

### 1. Keterbatasan Geolocator di Web
Paket `geolocator` memerlukan akses ke sensor GPS perangkat, tetapi di browser hanya mengandalkan API Geolocation dari JavaScript, yang bisa memiliki keterbatasan dalam akurasi.

### 2. Izin Lokasi
Browser memerlukan izin eksplisit dari pengguna untuk mengakses lokasi, dan beberapa browser membatasi akses jika aplikasi tidak berjalan di `https`.

### 3. Keterbatasan Emulator dan Perangkat Desktop
Jika aplikasi dijalankan di emulator atau perangkat tanpa sensor GPS (seperti PC atau laptop), maka lokasi tidak akan diperoleh secara akurat atau bisa gagal sepenuhnya.

## Dokumentasi Laporan

<img src="https://github.com/user-attachments/assets/1d8774cd-333f-4e27-9026-2c599ec1a918" width="300">