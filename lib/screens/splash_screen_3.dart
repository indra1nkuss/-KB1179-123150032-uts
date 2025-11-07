import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

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
                backgroundColor: Color(0xFFFFE5D4),
                backgroundImage: AssetImage("assets/images/splash3.png"),
              ),
              const SizedBox(height: 24),

          
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Success comes from consistency.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24),

          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DotIndicator(isActive: false),
                  DotIndicator(isActive: false),
                  DotIndicator(isActive: true),
                ],
              ),
              const SizedBox(height: 40),

              
              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
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
                child: const Text(
                  "Go to Login",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
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
