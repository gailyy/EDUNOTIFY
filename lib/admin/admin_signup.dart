import 'package:flutter/material.dart';
import 'admin_login.dart';

class AdminSignupScreen extends StatelessWidget {
  const AdminSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB4C9DD),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 320,
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  const Text(
                    "SIGN UP!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A2A3A),
                    ),
                  ),
                  const Text(
                    "To get started!",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF4A5A6A),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Card
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFA9C3DE),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.notifications_active_outlined,
                          size: 48,
                          color: Color(0xFF1A2A3A),
                        ),
                        const SizedBox(height: 24),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Username",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1A5A5A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Create Account",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Column(
                      children: [
                        const Text("Already have an Account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AdminLoginScreen(),
                              ),
                            );
                          },
                          child: const Text("Log In"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
