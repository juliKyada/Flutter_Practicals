import 'package:flutter/material.dart';

class Practical9LoginAuthApp extends StatefulWidget {
  const Practical9LoginAuthApp({super.key});

  @override
  State<Practical9LoginAuthApp> createState() => _Practical9LoginAuthAppState();
}

class _Practical9LoginAuthAppState extends State<Practical9LoginAuthApp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isLoggedIn = false;
  bool isSignupMode = true; // Start with signup
  
  // Simple in-memory storage for demo
  List<Map<String, String>> users = [
    {'username': 'admin', 'password': '123'},
  ];

  void login() {
    if (formKey.currentState?.validate() ?? false) {
      final user = users.firstWhere(
        (user) => user['username'] == usernameController.text && user['password'] == passwordController.text,
        orElse: () => {},
      );
      
      if (user.isNotEmpty) {
        setState(() {
          isLoggedIn = true;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid username or password')),
        );
      }
    }
  }

  void signup() {
    if (formKey.currentState?.validate() ?? false) {
      // Check if user already exists
      final existingUser = users.firstWhere(
        (user) => user['username'] == usernameController.text,
        orElse: () => {},
      );
      
      if (existingUser.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Username already exists')),
        );
      } else {
        // Add new user
        users.add({
          'username': usernameController.text,
          'password': passwordController.text,
        });
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account created successfully! Please login.')),
        );
        
        // Switch to login mode
        setState(() {
          isSignupMode = false;
          usernameController.clear();
          passwordController.clear();
          confirmPasswordController.clear();
        });
      }
    }
  }

  void logout() {
    setState(() {
      isLoggedIn = false;
      usernameController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
    });
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: logout,
            ),
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, size: 100, color: Colors.green),
              SizedBox(height: 20),
              Text(
                'Welcome to Dashboard!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('You are successfully logged in.'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(isSignupMode ? 'Sign Up' : 'Login'),
        backgroundColor: isSignupMode ? Colors.green : Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Text(
                isSignupMode ? 'Create New Account' : 'Login to Your Account',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                  if (isSignupMode && value.length < 3) {
                    return 'Username must be at least 3 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  if (isSignupMode && value.length < 3) {
                    return 'Password must be at least 3 characters';
                  }
                  return null;
                },
              ),
              if (isSignupMode) ...[
                const SizedBox(height: 16),
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm password';
                    }
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ],
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isSignupMode ? signup : login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSignupMode ? Colors.green : Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(isSignupMode ? 'Sign Up' : 'Login'),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  setState(() {
                    isSignupMode = !isSignupMode;
                    formKey.currentState?.reset();
                    usernameController.clear();
                    passwordController.clear();
                    confirmPasswordController.clear();
                  });
                },
                child: Text(
                  isSignupMode 
                    ? 'Already have an account? Login' 
                    : 'Don\'t have an account? Sign Up',
                ),
              ),
              if (!isSignupMode) ...[
                const SizedBox(height: 20),
                const Text(
                  'Demo account: admin / 123',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
