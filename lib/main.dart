import 'package:flutter/material.dart';
import 'screens/splash_screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String nim = "1123150032";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: nim, // 👈 Judul aplikasi diambil dari NIM kamu
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const SplashScreen1(), // Halaman pertama
    );
  }
}
