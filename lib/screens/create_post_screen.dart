import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User profile and privacy
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
                    const Text(
                      'Tollo Streakkk',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Public',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Post input field
            const TextField(
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              maxLines: 10,
              minLines: 1,
              style: TextStyle(fontSize: 16),
            ),

            const Spacer(),

            // Post button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle post creation
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
