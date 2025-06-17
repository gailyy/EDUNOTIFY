import 'package:flutter/material.dart';
import 'signup_screen.dart';
import '/screens/home_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAEC7DA),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "LOG IN!",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              "To proceed!",
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            const Icon(Icons.notifications, size: 60, color: Colors.black54),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Username")),
            const SizedBox(height: 10),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainNavigation()),
                );
              },
              child: const Text("Log In"),
            ),
            const SizedBox(height: 10),
            const Text("Or continue with"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.g_mobiledata, size: 40),
                SizedBox(width: 20),
                Icon(Icons.apple, size: 30),
                SizedBox(width: 20),
                Icon(Icons.facebook, size: 30),
              ],
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignupScreen()),
                  ),
              child: const Text("Don’t have an Account? Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
