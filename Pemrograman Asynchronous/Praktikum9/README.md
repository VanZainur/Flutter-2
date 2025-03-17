# Laporan Praktikum
---

## Jawaban Soal

### **Cobalah klik setiap button, apa yang terjadi?**
1. Saat tombol **"Neon Blue"** diklik:
   - Warna background halaman utama berubah menjadi **Neon Blue** (`0xFF007AFF`).
   - Dialog tertutup setelah warna dipilih.

2. Saat tombol **"Soft Cyan"** diklik:
   - Warna background halaman utama berubah menjadi **Soft Cyan** (`0xFF00A9A5`).
   - Dialog tertutup setelah warna dipilih.

3. Saat tombol **"Electric Purple"** diklik:
   - Warna background halaman utama berubah menjadi **Electric Purple** (`0xFF8A2BE2`).
   - Dialog tertutup setelah warna dipilih.

4. Saat tombol **"Batal"** diklik:
   - Dialog tertutup tanpa mengubah warna background.

---

### **Mengapa demikian?**
1. **Setiap tombol memiliki fungsi `setState()` yang memperbarui warna background dengan warna yang dipilih.**
2. **Setelah `setState()` dipanggil, dialog ditutup dengan `Navigator.pop(context)`, sehingga pengguna kembali ke halaman utama dengan warna baru.**
3. **Tombol "Batal" hanya menutup dialog tanpa memanggil `setState()`, sehingga warna tidak berubah.**

---

## Dokumentasi Laporan
<img src= "https://github.com/user-attachments/assets/5371e044-df12-4ce3-8154-4b8248eeea88" width="300">
