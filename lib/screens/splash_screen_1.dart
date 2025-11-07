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
              
              const CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFFFD9CC),
                backgroundImage: AssetImage("assets/images/logo_energi.jpg"),
              ),
              const SizedBox(height: 24),

              
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Yuk Kita Beralih Ke Energi Hijau Demi Bumi Kita Bahagia",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DotIndicator(isActive: true),
                  DotIndicator(isActive: false),
                  DotIndicator(isActive: false),
                ],
              ),
              const SizedBox(height: 40),

              
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SplashScreen2()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFE9E0),
                  foregroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  elevation: 1,
                ),
                child: const Text("Next"),
              ),
              const SizedBox(height: 60),

              
              const Text(
                "NIM: 1123150032",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


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
