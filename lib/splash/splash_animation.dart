import 'package:flutter/material.dart';
import 'splash_screen.dart';

class SplashAnimation extends StatefulWidget {
  const SplashAnimation({super.key});

  @override
  State<SplashAnimation> createState() => _SplashAnimationState();
}

class _SplashAnimationState extends State<SplashAnimation>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFD4ECEF),
      body: Center(
        child: Icon(Icons.campaign_outlined, size: 80, color: Colors.blue),
      ),
    );
  }
}
