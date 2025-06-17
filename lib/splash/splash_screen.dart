import 'package:flutter/material.dart';
import '../role/role_selection_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4ECEF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            'EDUNOTIFY',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Connect. Communicate. Celebrate.",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Stay connected, stay informed, stay ahead. Your school's events, all in one place!",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RoleSelectionScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text("Get Started", style: TextStyle(color: Colors.white)),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
