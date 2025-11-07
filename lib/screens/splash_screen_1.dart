import 'package:flutter/material.dart';
import 'splash_screen_2.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F6),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar lingkaran
              const CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFFFD9CC),
                backgroundImage: AssetImage("assets/images/splash1.png"),
              ),
              const SizedBox(height: 24),

              // Judul & deskripsi
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Don't forget to learn everyday!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24),
          
            ],
          ),
        ),
      ),
    );
  }
}