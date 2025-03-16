# Perbedaan antara futuregroup dan future.wait

## Langkah 1: menggunakan futuregroup<int>

Pada langkah ini, kita menggunakan `futuregroup<int>` untuk mengelola beberapa `future` secara bersamaan.  
`futuregroup` memungkinkan kita menambahkan `future` ke dalam grup, lalu menunggu hingga semuanya selesai.

```dart
void returnGroup() {
  FutureGroup<int> futureGroup = FutureGroup<int>();

  futureGroup.add(returnOneAsync());
  futureGroup.add(returnTwoAsync());
  futureGroup.add(returnThreeAsync());

  futureGroup.close();
  futureGroup.future.then((List<int> values) {
    int total = values.reduce((a, b) => a + b);
    setState(() {
      result = total.toString();
    });
  });
}
```

## Langkah 4: menggunakan future.wait<int>()

pada langkah ini, `futuregroup<int>` diganti dengan `future.wait<int>()`.  
`future.wait()` langsung menjalankan semua `future` secara bersamaan dan mengembalikan daftar hasil setelah semuanya selesai.

```dart
void returnGroup() {
  final futures = Future.wait<int>([
    returnOneAsync(),
    returnTwoAsync(),
    returnThreeAsync(),
  ]);

  futures.then((List<int> values) {
    int total = values.reduce((a, b) => a + b);
    setState(() {
      result = total.toString();
    });
  });
}
```

## Perbedaan futuregroup & future.wait

| aspek            | futuregroup (langkah 1)                            | future.wait (langkah 4)                    |
|-----------------|------------------------------------------------|--------------------------------------------|
| cara kerja     | menambahkan `future` satu per satu ke dalam `futuregroup`, lalu menutupnya sebelum mengambil hasil | langsung menunggu semua `future` selesai dalam satu perintah |
| kompleksitas   | lebih kompleks karena membutuhkan beberapa langkah tambahan | lebih sederhana karena langsung menunggu semua `future` selesai |
| efisiensi      | menggunakan pustaka tambahan (`async` package) | bawaan `dart:async`, lebih ringan dan efisien |
| penggunaan    | cocok untuk kasus di mana `future` perlu ditambahkan secara dinamis | lebih baik untuk kasus ketika semua `future` sudah diketahui sebelumnya |

## kesimpulan

`future.wait()` lebih sederhana dan direkomendasikan dalam kebanyakan kasus,  
sementara `futuregroup` berguna jika kita perlu menambahkan `future` secara dinamis sebelum menutupnya.

## Dokumentasi laporan


<img src="https://github.com/user-attachments/assets/5ad08129-cf13-4900-aa88-293f086f0a3d" width="300">
