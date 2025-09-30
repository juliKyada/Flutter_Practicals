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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'App Deployment & Versioning',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This practical provides a guide for generating a signed APK for Android and preparing your app for deployment.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            
            // Section 1: Keystore Generation
            const Text(
              '1. Keystore Generation & App Signing',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 15),
            const Text(
              'A keystore is a binary file that contains a set of private keys. You need to create one to digitally sign your Android app for publishing.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Command to generate a key:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: const Text(
                'keytool -genkey -v -keystore [keystore_name].jks -keyalg RSA -keysize 2048 -validity 10000 -alias [alias_name]',
                style: TextStyle(fontSize: 14, fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'You will need to remember the keystore password, key password, and alias name.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            
            // Section 2: Flutter Build Process
            const Text(
              '2. Flutter Build Process for Release',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 15),
            const Text(
              'To create a release build for Android, run the following command:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: const Text(
                'flutter build apk --release',
                style: TextStyle(fontSize: 14, fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'This command generates an app-release.apk file in the build/app/outputs/flutter-apk/ directory.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            
            // Section 3: App Versioning
            const Text(
              '3. App Versioning',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 15),
            const Text(
              'App versioning is crucial for updates. It is defined in your pubspec.yaml file.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: const Text(
                'version: 1.0.0+1',
                style: TextStyle(fontSize: 14, fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Here, 1.0.0 is the versionName (visible to users), and 1 is the versionCode (an internal number for app stores). The versionCode must be incremented with every new upload.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            
            // Section 4: Google Play Store
            const Text(
              '4. Google Play Store Deployment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 15),
            const Text(
              'To publish your app, you will need a Google Play Developer account. The process involves:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 15),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('• Creating a new app listing in the Play Console.'),
                    SizedBox(height: 8),
                    Text('• Uploading your signed app-release.apk or app-release.aab file.'),
                    SizedBox(height: 8),
                    Text('• Providing store listings, screenshots, and privacy policy.'),
                    SizedBox(height: 8),
                    Text('• Setting up the target audience and content rating.'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
