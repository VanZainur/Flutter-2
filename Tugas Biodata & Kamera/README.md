# Projek Biodata Dan Kamera  

Projek ini berisi tugas biodata dan kamera, yang mencakup fitur pengelolaan biodata serta penggunaan kamera dengan efek filter.  

## 1. Biodata  

<img src="https://github.com/user-attachments/assets/52620cb1-840d-4257-bb0b-940d7eca4be1" width="300">  

Halaman biodata memungkinkan pengguna untuk menambahkan, mengedit, atau menghapus data yang tersimpan di firestore. fitur ini memudahkan pengelolaan informasi secara dinamis dan real-time.  

![WhatsApp Image 2025-03-15 at 22 20 34_599fa349](https://github.com/user-attachments/assets/2d3368d6-da78-44ab-9b9e-cc232a5912bc)  

## 2. Kamera Dan Filter  

Fitur kamera dalam proyek ini memungkinkan pengguna mengambil gambar dengan berbagai efek filter yang dapat diterapkan secara real-time.  

### Dependencies yang digunakan:  
- `camera: ^0.10.5+9`  
- `image: ^4.1.7`  
- `path_provider: ^2.1.5`  

### komponen utama:  
- **camera screen**: menyediakan tampilan utama untuk menangkap gambar secara real-time menggunakan package camera.  
- **image filters**: memungkinkan pengguna menerapkan berbagai filter pada gambar yang telah diambil.  
- **real-time preview filter**: pengguna dapat melihat efek filter secara langsung sebelum mengambil gambar.  

### Dokumentasi:  
<img src="https://github.com/user-attachments/assets/aead6f9c-8b19-4fd3-b73c-d60627128424" width="300">  
<img src="https://github.com/user-attachments/assets/5406b16a-4230-4c8d-9607-9d1f103b85f5" width="300">  

## Penjelasan  

### void async pada kamera  
penggunaan `async` dalam metode kamera bertujuan agar operasi pengambilan gambar dapat berjalan secara asinkron tanpa mengganggu alur utama program. ini memastikan pengalaman pengguna tetap responsif saat kamera digunakan.  

### anotasi @immutable  
`@immutable` adalah anotasi yang menandakan bahwa suatu class tidak dapat diubah setelah dibuat. ini sering digunakan pada widget dalam flutter untuk meningkatkan performa dan membuat pengelolaan state lebih mudah diprediksi.  

### anotasi @override  
`@override` digunakan untuk menimpa (override) method dari superclass atau parent class. ini memastikan bahwa method yang didefinisikan kembali memiliki perilaku yang sesuai dengan kebutuhan dalam subclass.  

