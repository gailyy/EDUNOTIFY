import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome banner
            _buildWelcomeBanner(),

            // Quick actions
            _buildQuickActions(),

            // Recent posts section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Posts',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Post cards
            _buildPostCard(
              author: 'Tollo Streakkk',
              time: '2 hours ago',
              content:
                  "Join us for a fun-filled event with activities, guest speakers, and refreshmetns. \nEvent name: Lorem Ipsum. \n Date & Time: Lorem Ipsum",
              isPublic: true,
            ),
            _buildPostCard(
              author: 'EDUNOTIFY',
              time: '1 day ago',
              content:
                  "Don't miss out mark your calendar!\n\nEvent Name: Lorem Ipsum\nEvent Time: Lorem Ipsum",
              isPublic: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeBanner() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'EDUNOTIFY',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildActionButton(Icons.create, 'Create'),
          _buildActionButton(Icons.calendar_today, 'Events'),
          _buildActionButton(Icons.group, 'Groups'),
          _buildActionButton(Icons.school, 'Courses'),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.teal.withOpacity(0.1),
          child: Icon(icon, color: Colors.teal),
        ),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  Widget _buildPostCard({
    required String author,
    required String time,
    required String content,
    required bool isPublic,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/40',
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      author,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            isPublic ? 'Public' : 'Private',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(content),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildPostAction(Icons.thumb_up, 'Like'),
                _buildPostAction(Icons.comment, 'Comment'),
                _buildPostAction(Icons.share, 'Share'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPostAction(IconData icon, String label) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: TextButton.styleFrom(foregroundColor: Colors.grey[600]),
    );
  }
}
