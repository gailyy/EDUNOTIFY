import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/100',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Tollo Streakkk',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Public Profile',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildProfileStat('Posts', '24'),
                      _buildProfileStat('Following', '156'),
                      _buildProfileStat('Followers', '1.2K'),
                    ],
                  ),
                ],
              ),
            ),

            // Profile Actions
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Edit Profile'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Share Profile'),
                    ),
                  ),
                ],
              ),
            ),

            // Profile Content
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Member of EduNotify community. Sharing educational content and resources.',
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Contact Information',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('user@example.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.link),
                    title: Text('www.icom.com'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }
}
