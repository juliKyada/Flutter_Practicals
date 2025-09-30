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

/// Simple data model for a practical project.
class Practical {
  final int id;
  final String name;
  final String description;
  final Widget Function() appBuilder;
  final IconData icon;

  Practical({
    required this.id,
    required this.name,
    required this.description,
    required this.appBuilder,
    required this.icon,
  });
}

/// List of all practical projects with their details.
final List<Practical> practicals = <Practical>[
  Practical(
    id: 1,
    name: 'Multi-Screen Navigation',
    description:
        'A mobile application demonstrating navigation between multiple screens with data passing and simple transitions.',
    keyFeatures: <String>[
      'Splash screen with timer navigation',
      'Login screen with form validation',
      'Dashboard displaying user data',
      'Data passing between screens',
      'Profile page with user details',
    ],
    technicalStack: <String>[
      'Flutter Navigator',
      'TextEditingController',
      'StatefulWidget',
      'MaterialPageRoute',
    ],
    problemDefinition:
        'Create a multi-screen Flutter app with navigation and data passing between pages.',
    appBuilder: () => const Practical1SplashScreen(),
    icon: Icons.navigation,
    primaryColor: const Color(0xFF2196F3),
  ),
  Practical(
    id: 2,
    name: 'Temperature Converter',
    description:
        'A simple temperature converter app that converts between Celsius and Fahrenheit with input validation.',
    keyFeatures: <String>[
      'Input validation for numbers',
      'Celsius to Fahrenheit conversion',
      'Fahrenheit to Celsius conversion',
      'Clear and reset functionality',
    ],
    technicalStack: <String>[
      'TextFormField widgets',
      'Input validation',
      'Dart functions',
      'StatefulWidget',
    ],
    problemDefinition:
        'Build a temperature converter using Dart functions and input widgets.',
    appBuilder: () => const Practical2TemperatureConverterApp(),
    icon: Icons.thermostat,
    primaryColor: const Color(0xFFFF9800),
  ),
  Practical(
    id: 3,
    name: 'To-Do List App',
    description:
        'A simple to-do list application for adding, completing, and deleting tasks with local state management.',
    keyFeatures: <String>[
      'Add new tasks',
      'Mark tasks as completed',
      'Delete tasks from list',
      'Display tasks in scrollable list',
      'Task counter display',
    ],
    technicalStack: <String>[
      'StatefulWidget',
      'setState for state management',
      'ListView.builder',
      'TextEditingController',
    ],
    problemDefinition:
        'Create a dynamic to-do app using setState and ListView.builder.',
    appBuilder: () => const Practical3TodoApp(),
    icon: Icons.check_circle_outline,
    primaryColor: const Color(0xFF4CAF50),
  ),
  Practical(
    id: 4,
    name: 'Registration Form',
    description:
        'A user registration form with input validation using TextFormField and form state management.',
    keyFeatures: <String>[
      'Email and password input fields',
      'Form validation with error messages',
      'Password confirmation matching',
      'Submit button with validation check',
      'Clear form functionality',
    ],
    technicalStack: <String>[
      'Form widget',
      'TextFormField validation',
      'GlobalKey<FormState>',
      'RegExp for email validation',
    ],
    problemDefinition:
        'Create a registration form with proper input validation using Flutter forms.',
    appBuilder: () => const Practical4RegistrationApp(),
    icon: Icons.person_add,
    primaryColor: const Color(0xFF9C27B0),
  ),
  Practical(
    id: 5,
    name: 'Student Records Manager',
    description:
        'A student records management app demonstrating CRUD operations with in-memory data storage.',
    keyFeatures: <String>[
      'Add new student records',
      'View all students in a list',
      'Edit existing student information',
      'Delete student records',
      'Simple data management',
    ],
    technicalStack: <String>[
      'CRUD operations',
      'ListView.builder',
      'AlertDialog for input',
      'Data model classes',
    ],
    problemDefinition:
        'Build a student records app with Create, Read, Update, Delete operations.',
    appBuilder: () => const Practical5StudentRecordsApp(),
    icon: Icons.school,
    primaryColor: const Color(0xFF3F51B5),
  ),
  Practical(
    id: 6,
    name: 'Notes App',
    description:
        'A simple notes application with persistent storage using SharedPreferences for saving data.',
    keyFeatures: <String>[
      'Add and edit notes',
      'Delete notes from list',
      'Persistent storage across app restarts',
      'Simple note list display',
      'Auto-save functionality',
    ],
    technicalStack: <String>[
      'SharedPreferences',
      'Persistent data storage',
      'ListView for notes display',
      'Future and async operations',
    ],
    problemDefinition:
        'Create a notes app with persistent storage using SharedPreferences.',
    appBuilder: () => const Practical6NotesApp(),
    icon: Icons.note,
    primaryColor: const Color(0xFFFF5722),
  ),
  Practical(
    id: 7,
    name: 'Product Catalog',
    description:
        'A product catalog app displaying items in a grid layout with images and basic information.',
    keyFeatures: <String>[
      'Grid layout for products',
      'Product cards with images',
      'Product name and price display',
      'Scrollable product grid',
      'Simple product data model',
    ],
    technicalStack: <String>[
      'GridView.builder',
      'Network images',
      'Card widgets',
      'Product data models',
    ],
    problemDefinition:
        'Create a product catalog using GridView and custom cards with images.',
    appBuilder: () => const Practical7ProductCatalogApp(),
    icon: Icons.shopping_cart,
    primaryColor: const Color(0xFFE91E63),
  ),
  Practical(
    id: 8,
    name: 'API Data Display',
    description:
        'An app that fetches and displays data from a REST API using FutureBuilder for handling async operations.',
    keyFeatures: <String>[
      'Fetch data from REST API',
      'Display loading state',
      'Handle error states',
      'Show data in list format',
      'Refresh data functionality',
    ],
    technicalStack: <String>[
      'FutureBuilder widget',
      'HTTP package for API calls',
      'JSON parsing',
      'Async/await operations',
    ],
    problemDefinition:
        'Connect to a REST API and display data using FutureBuilder.',
    appBuilder: () => const Practical8ApiDataApp(),
    icon: Icons.cloud_download,
    primaryColor: const Color(0xFF009688),
  ),
  Practical(
    id: 9,
    name: 'Login Authentication',
    description:
        'A login app with credential validation and session management using SharedPreferences.',
    keyFeatures: <String>[
      'Login form with validation',
      'Simulated authentication',
      'Session state management',
      'Remember login state',
      'Logout functionality',
    ],
    technicalStack: <String>[
      'Form validation',
      'SharedPreferences',
      'Session management',
      'Navigation control',
    ],
    problemDefinition:
        'Create a login system with authentication and session handling.',
    appBuilder: () => const Practical9LoginAuthApp(),
    icon: Icons.login,
    primaryColor: const Color(0xFF795548),
  ),
  Practical(
    id: 10,
    name: 'App Deployment Guide',
    description:
        'Information and steps for building and deploying Flutter apps to various platforms.',
    keyFeatures: <String>[
      'Android APK build process',
      'App signing information',
      'Deployment steps guide',
      'Version management tips',
      'Publishing guidelines',
    ],
    technicalStack: <String>[
      'Build configurations',
      'App signing process',
      'Documentation display',
      'Information presentation',
    ],
    problemDefinition:
        'Document the app deployment process and generate signed APKs.',
    appBuilder: () => const Practical10DeploymentInfo(),
    icon: Icons.publish,
    primaryColor: const Color(0xFF607D8B),
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practicals',
      theme: _buildCleanTheme(),
      home: const HomePage(),
    );
  }

  ThemeData _buildCleanTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF2196F3),
        brightness: Brightness.light,
      ),
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headlineLarge: GoogleFonts.poppins(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1A1A1A),
        ),
        headlineMedium: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF1A1A1A),
        ),
        titleLarge: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF1A1A1A),
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: 16,
          color: const Color(0xFF666666),
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 14,
          color: const Color(0xFF666666),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
        centerTitle: false,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1A1A1A),
        ),
      ),
      scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      cardTheme: CardTheme(
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
    );
  }
}

/// Simple and clean home screen displaying practical projects.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Practicals'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.flutter_dash,
                        color: const Color(0xFF2196F3),
                        size: 32,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Flutter Learning Hub',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Practice Flutter development with ${practicals.length} hands-on projects',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            Text(
              'Available Practicals',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            
            const SizedBox(height: 16),
            
            // Practicals List
            Expanded(
              child: ListView.builder(
                itemCount: practicals.length,
                itemBuilder: (context, index) {
                  final practical = practicals[index];
                  return _SimplePracticalCard(practical: practical);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Simple widget for displaying practical information in a clean card.
class _SimplePracticalCard extends StatelessWidget {
  final Practical practical;
  const _SimplePracticalCard({required this.practical});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  PracticalDetailsPage(practical: practical),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Icon
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: practical.primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  practical.icon,
                  color: practical.primaryColor,
                  size: 28,
                ),
              ),
              
              const SizedBox(width: 16),
              
              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Practical ${practical.id}',
                          style: TextStyle(
                            fontSize: 12,
                            color: practical.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      practical.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      practical.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              
              // Arrow
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[400],
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Simple details page showing practical information.
class PracticalDetailsPage extends StatelessWidget {
  final Practical practical;
  const PracticalDetailsPage({required this.practical, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practical ${practical.id}'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: practical.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        practical.icon,
                        color: practical.primaryColor,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            practical.name,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Practical ${practical.id}',
                            style: TextStyle(
                              color: practical.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Description
            _buildSection(
              'Description',
              practical.description,
            ),
            
            const SizedBox(height: 20),
            
            // Key Features
            _buildListSection(
              'Key Features',
              practical.keyFeatures,
            ),
            
            const SizedBox(height: 20),
            
            // Technical Stack
            _buildListSection(
              'Technical Stack',
              practical.technicalStack,
            ),
            
            const SizedBox(height: 20),
            
            // Problem Definition
            _buildSection(
              'Problem Statement',
              practical.problemDefinition,
            ),
            
            const SizedBox(height: 32),
            
            // Launch Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => practical.appBuilder(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: practical.primaryColor,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.play_arrow),
                label: Text(
                  'Start Practical',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF666666),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListSection(String title, List<String> items) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 12),
            ...items.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    margin: const EdgeInsets.only(top: 6, right: 12),
                    decoration: BoxDecoration(
                      color: practical.primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF666666),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
