import 'package:flutter/material.dart';
import '/screens/home_screen.dart';
import '/screens/create_post_screen.dart';
import '/screens/calendar_screen.dart';
import '/screens/profile_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    CreatePostScreen(),
    CalendarScreen(),
    ProfileScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTap,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: "Create"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Calendar",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}