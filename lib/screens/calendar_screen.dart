import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
