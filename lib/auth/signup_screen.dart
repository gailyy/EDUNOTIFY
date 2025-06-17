import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAEC7DA),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("SIGN UP!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const Text("To get started!", style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            const SizedBox(height: 20),
            const Icon(Icons.notifications_active, size: 60, color: Colors.black54),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Username")),
            const SizedBox(height: 10),
            const TextField(decoration: InputDecoration(labelText: "Email Address")),
            const SizedBox(height: 10),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Password")),
            const SizedBox(height: 10),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Confirm Password")),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              onPressed: () {},
              child: const Text("Create Account"),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen())),
              child: const Text("Already have an account? Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
