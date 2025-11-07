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


// 🔘 Widget Indikator Bulat
class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color:
            isActive ? Colors.deepOrange : Colors.deepOrange.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
    );
  }
}