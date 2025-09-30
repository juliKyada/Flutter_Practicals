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
            ),
          );
        },
      ),
    );
  }
}
