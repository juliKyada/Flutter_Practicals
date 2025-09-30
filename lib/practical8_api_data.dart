import 'package:flutter/material.dart';

class Practical8ApiDataApp extends StatelessWidget {
  const Practical8ApiDataApp({super.key});

  final List<String> postTitles = const [
    'Welcome to Flutter',
    'Learning Dart Programming',
    'Building Mobile Apps',
    'State Management Guide',
    'Widget Documentation',
    'Flutter Best Practices',
  ];

  final List<String> postBodies = const [
    'Flutter is Google\'s UI toolkit for building beautiful apps.',
    'Dart is a client-optimized language for fast apps on any platform.',
    'Create amazing mobile applications with Flutter framework.',
    'Learn how to manage state effectively in Flutter apps.',
    'Explore the rich set of widgets available in Flutter.',
    'Follow these best practices to write better Flutter code.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts List'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: postTitles.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('${index + 1}'),
              ),
              title: Text(
                postTitles[index],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                postBodies[index],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostDetailPage(
                      title: postTitles[index],
                      body: postBodies[index],
                      postNumber: index + 1,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class PostDetailPage extends StatelessWidget {
  final String title;
  final String body;
  final int postNumber;

  const PostDetailPage({
    super.key,
    required this.title,
    required this.body,
    required this.postNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Details'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('$postNumber'),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.article, color: Colors.blue),
                        SizedBox(width: 10),
                        Text(
                          'Content',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      body,
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.info, color: Colors.blue),
                        SizedBox(width: 10),
                        Text(
                          'Post Information',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ListTile(
                      leading: const Icon(Icons.numbers),
                      title: const Text('Post ID'),
                      subtitle: Text('#$postNumber'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_today),
                      title: const Text('Date'),
                      subtitle: const Text('September 2024'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Author'),
                      subtitle: const Text('Flutter Team'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
