import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F6),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFFFE5D4),
                backgroundImage: AssetImage("assets/images/splash2.png"),
              ),
              SizedBox(height: 24),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Stay positive and keep moving!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// 🔘 Widget indikator bulat
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