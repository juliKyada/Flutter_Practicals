import 'package:flutter/material.dart';

class Practical10DeploymentInfo extends StatelessWidget {
  const Practical10DeploymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Info'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Icon(
              Icons.mobile_friendly,
              size: 100,
              color: Colors.deepPurple,
            ),
            SizedBox(height: 20),
            Text(
              'Flutter Practicals App',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Version 1.0.0',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 30),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'App Information:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('• Simple Flutter practicals for beginners'),
                    Text('• 10 different practical exercises'),
                    Text('• Basic UI components and layouts'),
                    Text('• Easy to understand code structure'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Features Covered:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('• Navigation and Routing'),
                    Text('• Temperature Converter'),
                    Text('• Todo List Management'),
                    Text('• User Registration'),
                    Text('• Student Records (CRUD)'),
                    Text('• Notes App'),
                    Text('• Product Catalog'),
                    Text('• Data Display Lists'),
                    Text('• Simple Login System'),
                    Text('• App Information'),
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
