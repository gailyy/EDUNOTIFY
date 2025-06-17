import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const AdminHomePage(),
    const CalendarScreen(),
    const CalendarScreen(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF3B5A6D),
        unselectedItemColor: Colors.black45,
        backgroundColor: const Color(0xFF97B8B8),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

// ...existing code...

class EventsListPage extends StatelessWidget {
  const EventsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0E3E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB0C9DE),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Events list',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Remove the old header container, AppBar replaces it
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 8, bottom: 8),
            child: Row(
              children: [
                Text(
                  'Add Event',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                SizedBox(width: 8),
                Icon(Icons.add_circle_outline, size: 20),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              itemCount: 4,
              itemBuilder:
                  (context, index) => Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB0C9DE),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: ListTile(
                      title: const Text(
                        'Event Title.....',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.edit, size: 20),
                          SizedBox(width: 8),
                          Icon(Icons.menu, size: 20),
                        ],
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class ModerationsPage extends StatelessWidget {
  const ModerationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0E3E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB0C9DE),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Post Moderations',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Remove the old header container, AppBar replaces it
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              itemCount: 4,
              itemBuilder:
                  (context, index) => Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB0C9DE),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Post',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          const Divider(color: Colors.black54),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  foregroundColor: Colors.black87,
                                  side: const BorderSide(color: Colors.black54),
                                ),
                                onPressed: () {},
                                child: const Text('APPROVE'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  foregroundColor: Colors.black87,
                                  side: const BorderSide(color: Colors.black54),
                                ),
                                onPressed: () {},
                                child: const Text('DECLINE'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
// ...existing code...

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0E3E8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Decorative header
          Container(
            height: 80,
            decoration: const BoxDecoration(
              color: Color(0xFFB0C9DE),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16, top: 32),
              child: Text(
                'Welcome, Admin!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB0C9DE),
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EventsListPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'List of Events',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 250,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB0C9DE),
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ModerationsPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Post Moderations',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get current date for the header
    final currentDate = DateFormat('MMMM yyyy').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Month Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                currentDate,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Calendar Grid
            _buildCalendarGrid(),

            // Upcoming Events Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Upcoming Events:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildEventItem('March 3', 'Team Meeting', '10:00 AM'),
            _buildEventItem('March 14', 'Project Deadline', 'All day'),
            _buildEventItem('March 15', 'Workshop', '2:00 PM'),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendarGrid() {
    // Sample data - in a real app you'd use a proper calendar package
    final weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    final daysInMonth = 31;
    final firstWeekday = 3; // March 2023 starts on Wednesday (3)

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          // Weekday headers
          Row(
            children:
                weekdays
                    .map(
                      (day) => Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          child: Center(
                            child: Text(
                              day,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),

          // Calendar days
          Table(
            border: TableBorder.all(color: Colors.grey[300]!),
            children: [
              // First row (with empty days)
              TableRow(
                children: List.generate(7, (index) {
                  if (index < firstWeekday - 1) {
                    return Container(); // Empty cell
                  } else {
                    return _buildDayCell(index - firstWeekday + 2);
                  }
                }),
              ),
              // Subsequent rows
              for (int i = 0; i < 4; i++)
                TableRow(
                  children: List.generate(7, (index) {
                    final day = i * 7 + index + (7 - firstWeekday + 2);
                    return day <= daysInMonth
                        ? _buildDayCell(day)
                        : Container(); // Empty cell
                  }),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDayCell(int day) {
    final isToday = day == DateTime.now().day;
    final hasEvent = [3, 14, 15].contains(day); // Days with events

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: isToday ? Colors.teal.withOpacity(0.1) : null,
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              day.toString(),
              style: TextStyle(
                fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                color: isToday ? Colors.teal : Colors.black,
              ),
            ),
          ),
          if (hasEvent)
            Positioned(
              bottom: 4,
              right: 4,
              child: Container(
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildEventItem(String date, String title, String time) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(width: 4, height: 40, color: Colors.teal),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text('$date • $time'),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
