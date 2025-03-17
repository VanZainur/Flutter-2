import 'package:flutter/material.dart';
import 'geolocation.dart'; // Import file geolocation.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo by Irvandy Zainur',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LocationScreen(), // Menggunakan LocationScreen sebagai home
    );
  }
}
