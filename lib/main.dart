import 'package:flutter/material.dart';
import 'splash/splash_animation.dart';

void main() => runApp(const EduNotifyApp());

class EduNotifyApp extends StatelessWidget {
  const EduNotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduNotify',
      debugShowCheckedModeBanner: false,
      home: const SplashAnimation(),
    );
  }
}
