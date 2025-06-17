import 'package:flutter/material.dart';
import '../admin/admin_login.dart';
import '../auth/login_screen.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0E3E8),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Select Your Role',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _RoleCard(
                    label: 'Admin',
                    image: 'assets/images/admin.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AdminLoginScreen(),
                        ),
                      );
                    },
                  ),
                  _RoleCard(
                    label: 'Teacher',
                    image: 'assets/images/teacher.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                  ),
                  _RoleCard(
                    label: 'Student',
                    image: 'assets/images/student.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                  ),
                  _RoleCard(
                    label: 'Parent',
                    image: 'assets/images/parent.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoleCard extends StatelessWidget {
  final String label;
  final String image;
  final VoidCallback onTap;

  const _RoleCard({
    required this.label,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
