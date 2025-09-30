import 'package:flutter/material.dart';

// Import all practical files
import 'practical1_navigation.dart';
import 'practical2_temperature.dart';
import 'practical3_todo.dart';
import 'practical4_registration.dart';
import 'practical5_student_records.dart';
import 'practical6_notes.dart';
import 'practical7_product_catalog.dart';
import 'practical8_api_data.dart';
import 'practical9_login_auth.dart';
import 'practical10_deployment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practicals',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Practicals'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Welcome to Flutter Practicals',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          
          // Practical 1
          Card(
            child: ListTile(
              leading: const Icon(Icons.navigation),
              title: const Text('Navigation App'),
              subtitle: const Text('Navigate between different screens'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical1SplashScreen(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 2
          Card(
            child: ListTile(
              leading: const Icon(Icons.thermostat),
              title: const Text('Temperature Converter'),
              subtitle: const Text('Convert temperature units'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical2TemperatureConverter(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 3
          Card(
            child: ListTile(
              leading: const Icon(Icons.check_circle),
              title: const Text('ToDo List'),
              subtitle: const Text('Manage your daily tasks'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical3TodoApp(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 4
          Card(
            child: ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Registration Form'),
              subtitle: const Text('User registration with validation'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical4RegistrationForm(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 5
          Card(
            child: ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Student Records'),
              subtitle: const Text('Manage student information'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical5StudentRecordsApp(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 6
          Card(
            child: ListTile(
              leading: const Icon(Icons.note),
              title: const Text('Notes App'),
              subtitle: const Text('Create and save notes'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical6NotesApp(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 7
          Card(
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('Product Catalog'),
              subtitle: const Text('Browse products list'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical7ProductCatalogApp(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 8
          Card(
            child: ListTile(
              leading: const Icon(Icons.cloud_download),
              title: const Text('API Data'),
              subtitle: const Text('Fetch data from internet'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical8ApiDataApp(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 9
          Card(
            child: ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Login System'),
              subtitle: const Text('User login and authentication'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical9LoginAuthApp(),
                  ),
                );
              },
            ),
          ),
          
          // Practical 10
          Card(
            child: ListTile(
              leading: const Icon(Icons.rocket_launch),
              title: const Text('App Deployment'),
              subtitle: const Text('How to deploy your app'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Practical10DeploymentInfo(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}