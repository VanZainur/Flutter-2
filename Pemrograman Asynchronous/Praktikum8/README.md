# Laporan Praktikum
---
## Jawaban Soal

### **Cobalah klik setiap button, apa yang terjadi?**
1. Saat tombol **"Neon Blue"** diklik:
   - Halaman kedua tertutup.
   - **Halaman pertama berubah warna menjadi neon blue** (`0xFF007AFF`).
   - **AppBar dan background** di halaman pertama ikut berubah.

2. Saat tombol **"Soft Cyan"** diklik:
   - Halaman kedua tertutup.
   - **Halaman pertama berubah warna menjadi soft cyan** (`0xFF00A9A5`).
   - **AppBar dan background** di halaman pertama ikut berubah.

3. Saat tombol **"Electric Purple"** diklik:
   - Halaman kedua tertutup.
   - **Halaman pertama berubah warna menjadi electric purple** (`0xFF8A2BE2`).
   - **AppBar dan background** di halaman pertama ikut berubah.

---

### **Mengapa demikian?**
1. **Warna yang dipilih dikirim ke halaman pertama melalui `Navigator.pop(context, color);`.**  
2. **Halaman pertama menerima warna ini di fungsi `_navigateAndGetColor()` dan memanggil `setState()` untuk memperbarui tampilan.**  
3. **Setelah `setState()` dipanggil, halaman pertama di-rebuild dengan warna baru sesuai pilihan tombol di halaman kedua.**  

---

**Kesimpulan:**  
**Tiap kali tombol di halaman kedua ditekan, halaman pertama akan berubah warna sesuai dengan warna yang dipilih.**  
**Ini terjadi karena mekanisme pengiriman data menggunakan `Navigator.pop()`, lalu diproses di halaman pertama dengan `setState()`.**  


## Dokumentasi Laporan
<img src="https://github.com/user-attachments/assets/500a8f05-6f17-47bd-a5c0-770be272190e" width="300">
---

