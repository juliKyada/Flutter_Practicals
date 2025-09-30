import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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

/// Data model for a practical project.
class Practical {
  final int id;
  final String name;
  final String description;
  final List<String> keyFeatures;
  final List<String> technicalStack;
  final String problemDefinition;
  final Widget Function() appBuilder;
  final IconData icon;
  final List<Color> gradientColors;
  final String category;
  final String difficulty;
  final int estimatedTime; // in minutes

  Practical({
    required this.id,
    required this.name,
    required this.description,
    required this.keyFeatures,
    required this.technicalStack,
    required this.problemDefinition,
    required this.appBuilder,
    required this.icon,
    required this.gradientColors,
    required this.category,
    required this.difficulty,
    required this.estimatedTime,
  });
}

/// List of all practical projects with their details.
final List<Practical> practicals = <Practical>[
  Practical(
    id: 1,
    name: 'Multi-Screen Navigation',
    description:
        'A modern mobile application demonstrating seamless navigation between multiple screens with stunning animations and data flow.',
    keyFeatures: <String>[
      'Animated splash screen with modern transitions',
      'Beautiful login screen with input validation',
      'Interactive dashboard with user-specific data',
      'Smooth data passing between screens',
      'Elegant profile page with modern design',
    ],
    technicalStack: <String>[
      'Flutter Navigator 2.0',
      'Hero Animations',
      'Custom Page Transitions',
      'State Management',
    ],
    problemDefinition:
        'Create a sophisticated multi-screen Flutter app with modern navigation patterns, smooth animations, and elegant data flow between pages.',
    appBuilder: () => const Practical1SplashScreen(),
    icon: Icons.rocket_launch_rounded,
    gradientColors: [const Color(0xFF6366F1), const Color(0xFF8B5CF6)],
    category: 'Navigation',
    difficulty: 'Beginner',
    estimatedTime: 30,
  ),
  Practical(
    id: 2,
    name: 'Temperature Converter',
    description:
        'A sleek temperature conversion app with beautiful glassmorphic design and real-time calculations between Celsius and Fahrenheit.',
    keyFeatures: <String>[
      'Real-time input validation and formatting',
      'Instant conversion with smooth animations',
      'Glassmorphic UI with modern design',
      'Interactive temperature scale visualization',
    ],
    technicalStack: <String>[
      'Custom Input Widgets',
      'Real-time Calculations',
      'Glassmorphism Effects',
      'Animated Transitions',
    ],
    problemDefinition:
        'Create a visually stunning temperature converter with modern UI patterns and real-time conversion functionality.',
    appBuilder: () => const Practical2TemperatureConverterApp(),
    icon: Icons.thermostat_rounded,
    gradientColors: [const Color(0xFFEF4444), const Color(0xFFFF7C3B)],
    category: 'Utilities',
    difficulty: 'Beginner',
    estimatedTime: 25,
  ),
  Practical(
    id: 3,
    name: 'Smart To-Do Manager',
    description:
        'A beautiful, feature-rich To-Do app with smooth animations, priority management, and an intuitive modern interface.',
    keyFeatures: <String>[
      'Animated task additions and deletions',
      'Priority levels with color coding',
      'Smooth swipe-to-delete gestures',
      'Beautiful card-based task layout',
      'Progress tracking with visual indicators',
    ],
    technicalStack: <String>[
      'Advanced State Management',
      'Custom Animations',
      'Gesture Detection',
      'Hero Transitions',
      'Custom Widgets',
    ],
    problemDefinition:
        'Design a modern, intuitive To-Do app with advanced animations and user-friendly interactions using Flutter\'s state management.',
    appBuilder: () => const Practical3TodoApp(),
    icon: Icons.task_alt_rounded,
    gradientColors: [const Color(0xFF10B981), const Color(0xFF34D399)],
    category: 'Productivity',
    difficulty: 'Intermediate',
    estimatedTime: 45,
  ),
  Practical(
    id: 4,
    name: 'Smart Registration Hub',
    description:
        'An elegant user registration experience with advanced validation, beautiful animations, and modern form design patterns.',
    keyFeatures: <String>[
      'Progressive form validation with visual feedback',
      'Animated input fields with modern styling',
      'Smart password strength indicators',
      'Biometric integration patterns',
      'Success animations and micro-interactions',
    ],
    technicalStack: <String>[
      'Advanced Form Validation',
      'Custom Input Decorations',
      'Animation Controllers',
      'RegExp Patterns',
      'Material 3 Design',
    ],
    problemDefinition:
        'Create a cutting-edge registration experience with modern UI patterns, advanced validation, and delightful user interactions.',
    appBuilder: () => const Practical4RegistrationApp(),
    icon: Icons.person_add_alt_1_rounded,
    gradientColors: [const Color(0xFF8B5CF6), const Color(0xFFEC4899)],
    category: 'Authentication',
    difficulty: 'Intermediate',
    estimatedTime: 40,
  ),
  Practical(
    id: 5,
    name: 'Student Portal Pro',
    description:
        'A comprehensive student management system with modern CRUD operations, search functionality, and beautiful data visualization.',
    keyFeatures: <String>[
      'Advanced student profile management',
      'Real-time search and filtering',
      'Beautiful data cards with animations',
      'Batch operations and bulk actions',
      'Export and import capabilities',
    ],
    technicalStack: <String>[
      'Advanced State Management',
      'Search Algorithms',
      'Custom Animations',
      'Data Persistence',
      'Modern UI Components',
    ],
    problemDefinition:
        'Build a professional student management system with advanced CRUD operations, modern UI, and comprehensive data management features.',
    appBuilder: () => const Practical5StudentRecordsApp(),
    icon: Icons.school_rounded,
    gradientColors: [const Color(0xFF3B82F6), const Color(0xFF1D4ED8)],
    category: 'Management',
    difficulty: 'Advanced',
    estimatedTime: 60,
  ),
  Practical(
    id: 6,
    name: 'Digital Notebook Pro',
    description:
        'A sophisticated note-taking app with rich text editing, cloud sync simulation, and beautiful organization features.',
    keyFeatures: <String>[
      'Rich text editing with formatting options',
      'Categorization with color-coded tags',
      'Advanced search and filtering',
      'Cloud backup simulation',
      'Modern card-based note layout',
    ],
    technicalStack: <String>[
      'Persistent Storage',
      'Rich Text Editing',
      'Advanced Search',
      'Custom Widgets',
      'Animation Systems',
    ],
    problemDefinition:
        'Develop a professional note-taking application with advanced features, persistent storage, and modern UI patterns.',
    appBuilder: () => const Practical6NotesApp(),
    icon: Icons.edit_note_rounded,
    gradientColors: [const Color(0xFFF59E0B), const Color(0xFFEAB308)],
    category: 'Productivity',
    difficulty: 'Intermediate',
    estimatedTime: 50,
  ),
  Practical(
    id: 7,
    name: 'E-Commerce Showcase',
    description:
        'A stunning product catalog with advanced filtering, wishlist functionality, and immersive shopping experience with modern e-commerce patterns.',
    keyFeatures: <String>[
      'Dynamic product grid with lazy loading',
      'Advanced filtering and sorting options',
      'Wishlist and shopping cart simulation',
      'Product detail views with image galleries',
      'Price comparison and deals highlighting',
    ],
    technicalStack: <String>[
      'Advanced GridView',
      'Custom Animations',
      'State Management',
      'Image Caching',
      'Search Algorithms',
    ],
    problemDefinition:
        'Create a professional e-commerce product catalog with modern UI patterns, advanced filtering, and engaging user experience.',
    appBuilder: () => const Practical7ProductCatalogApp(),
    icon: Icons.shopping_bag_rounded,
    gradientColors: [const Color(0xFFEC4899), const Color(0xFFBE185D)],
    category: 'E-Commerce',
    difficulty: 'Advanced',
    estimatedTime: 55,
  ),
  Practical(
    id: 8,
    name: 'Data Stream Hub',
    description:
        'A sophisticated data fetching app with real-time updates, elegant loading states, and beautiful error handling using modern API patterns.',
    keyFeatures: <String>[
      'Real-time data streaming simulation',
      'Beautiful loading animations and skeletons',
      'Elegant error handling with retry mechanisms',
      'Pull-to-refresh with custom animations',
      'Offline caching and sync indicators',
    ],
    technicalStack: <String>[
      'Advanced FutureBuilder',
      'Stream Management',
      'Error Handling',
      'Caching Strategies',
      'Custom Loading States',
    ],
    problemDefinition:
        'Build a modern data streaming application with real-time updates, elegant loading states, and professional error handling.',
    appBuilder: () => const Practical8ApiDataApp(),
    icon: Icons.analytics_rounded,
    gradientColors: [const Color(0xFF06B6D4), const Color(0xFF0891B2)],
    category: 'Data',
    difficulty: 'Advanced',
    estimatedTime: 50,
  ),
  Practical(
    id: 9,
    name: 'Secure Auth Portal',
    description:
        'A premium authentication system with biometric integration, secure session management, and beautiful onboarding experience.',
    keyFeatures: <String>[
      'Multi-factor authentication simulation',
      'Biometric authentication patterns',
      'Secure session management with encryption',
      'Beautiful onboarding and welcome flows',
      'Advanced security features demonstration',
    ],
    technicalStack: <String>[
      'Advanced Authentication',
      'Secure Storage',
      'Biometric APIs',
      'Session Management',
      'Security Patterns',
    ],
    problemDefinition:
        'Develop a professional authentication system with modern security patterns, biometric integration, and elegant user experience.',
    appBuilder: () => const Practical9LoginAuthApp(),
    icon: Icons.security_rounded,
    gradientColors: [const Color(0xFF7C3AED), const Color(0xFF5B21B6)],
    category: 'Security',
    difficulty: 'Advanced',
    estimatedTime: 65,
  ),
  Practical(
    id: 10,
    name: 'DevOps Deployment Hub',
    description:
        'A comprehensive guide to app deployment with interactive tutorials, build automation insights, and modern DevOps practices for Flutter applications.',
    keyFeatures: <String>[
      'Interactive deployment tutorials',
      'Build automation workflow visualization',
      'Multi-platform deployment guides',
      'CI/CD pipeline documentation',
      'App store optimization insights',
    ],
    technicalStack: <String>[
      'Interactive Documentation',
      'Build System Integration',
      'Deployment Automation',
      'Version Management',
      'DevOps Tools',
    ],
    problemDefinition:
        'Create an interactive deployment guide with modern DevOps practices, automated builds, and comprehensive app store publishing workflows.',
    appBuilder: () => const Practical10DeploymentInfo(),
    icon: Icons.rocket_rounded,
    gradientColors: [const Color(0xFF059669), const Color(0xFF047857)],
    category: 'DevOps',
    difficulty: 'Expert',
    estimatedTime: 45,
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterMaster Pro',
      theme: _buildModernTheme(),
      home: const HomePage(),
    );
  }

  ThemeData _buildModernTheme() {
    const primaryColor = Color(0xFF0F172A);
    const secondaryColor = Color(0xFF1E293B);
    const accentColor = Color(0xFF6366F1);
    
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: accentColor,
        secondary: Color(0xFF8B5CF6),
        tertiary: Color(0xFFEC4899),
        surface: primaryColor,
        background: primaryColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
      ),
      scaffoldBackgroundColor: primaryColor,
      useMaterial3: true,
      textTheme: GoogleFonts.interTextTheme().copyWith(
        displayLarge: GoogleFonts.inter(
          fontSize: 42,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          height: 1.1,
        ),
        displayMedium: GoogleFonts.inter(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          height: 1.2,
        ),
        headlineLarge: GoogleFonts.inter(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white70,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 16,
          color: Colors.white70,
          height: 1.5,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          color: Colors.white60,
          height: 1.4,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: accentColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: secondaryColor,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: SharedAxisPageTransitionsBuilder(
            transitionType: SharedAxisTransitionType.scaled,
          ),
          TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
            transitionType: SharedAxisTransitionType.scaled,
          ),
        },
      ),
    );
  }
}

/// Main Menu Screen displaying a modern showcase of practical projects.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  String _selectedCategory = 'All';
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  List<String> get _categories {
    final categories = practicals.map((p) => p.category).toSet().toList();
    categories.insert(0, 'All');
    return categories;
  }

  List<Practical> get _filteredPracticals {
    return practicals.where((practical) {
      final matchesCategory = _selectedCategory == 'All' || 
          practical.category == _selectedCategory;
      final matchesSearch = _searchQuery.isEmpty || 
          practical.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          practical.description.toLowerCase().contains(_searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F172A),
              Color(0xFF1E293B),
              Color(0xFF334155),
            ],
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              _buildSliverAppBar(),
              _buildHeroSection(),
              _buildCategoryFilter(),
              _buildPracticalsGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.code_rounded, color: Colors.white),
          ).animate().scale(delay: 200.ms, duration: 600.ms),
          const SizedBox(width: 12),
          Text(
            'FlutterMaster Pro',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ).animate().fadeIn(delay: 400.ms, duration: 600.ms),
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            icon: const Icon(Icons.notifications_rounded),
            onPressed: () {},
          ),
        ).animate().scale(delay: 600.ms, duration: 600.ms),
      ],
    );
  }

  Widget _buildHeroSection() {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Master Flutter\nDevelopment',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                height: 1.1,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: [Colors.white, Color(0xFF8B5CF6)],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
              ),
            ).animate().fadeIn(delay: 200.ms, duration: 800.ms)
             .slideX(begin: -0.2, end: 0, curve: Curves.easeOutCubic),
            
            const SizedBox(height: 16),
            
            Text(
              'Explore ${practicals.length} hands-on practicals covering advanced Flutter concepts, modern UI patterns, and professional development techniques.',
              style: Theme.of(context).textTheme.bodyLarge,
            ).animate().fadeIn(delay: 400.ms, duration: 800.ms)
             .slideX(begin: -0.2, end: 0, curve: Curves.easeOutCubic),
            
            const SizedBox(height: 32),
            
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.white.withOpacity(0.1),
                  width: 1,
                ),
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (value) => setState(() => _searchQuery = value),
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  hintText: 'Search practicals...',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                ),
              ),
            ).animate().fadeIn(delay: 600.ms, duration: 800.ms)
             .slideY(begin: 0.2, end: 0, curve: Curves.easeOutCubic),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return SliverToBoxAdapter(
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemCount: _categories.length,
          itemBuilder: (context, index) {
            final category = _categories[index];
            final isSelected = category == _selectedCategory;
            
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 600),
              child: SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedCategory = category),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          gradient: isSelected
                              ? const LinearGradient(
                                  colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                                )
                              : null,
                          color: isSelected
                              ? null
                              : Colors.white.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected
                                ? Colors.transparent
                                : Colors.white.withOpacity(0.1),
                          ),
                        ),
                        child: Text(
                          category,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: isSelected
                                ? Colors.white
                                : Colors.white.withOpacity(0.7),
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPracticalsGrid() {
    final filteredPracticals = _filteredPracticals;
    
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 800),
              columnCount: 2,
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: _ModernPracticalCard(
                    practical: filteredPracticals[index],
                  ),
                ),
              ),
            );
          },
          childCount: filteredPracticals.length,
        ),
      ),
    );
  }
}

/// Modern widget for a single practical card with glassmorphism effect.
class _ModernPracticalCard extends StatelessWidget {
  final Practical practical;
  const _ModernPracticalCard({required this.practical});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          PageRouteBuilder<void>(
            pageBuilder: (context, animation, secondaryAnimation) =>
                PracticalDetailsPage(practical: practical),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: animation.drive(
                  Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.easeOutCubic)),
                ),
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 600),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              practical.gradientColors[0].withOpacity(0.8),
              practical.gradientColors[1].withOpacity(0.6),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: practical.gradientColors[0].withOpacity(0.3),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: GlassmorphicContainer(
            width: double.infinity,
            height: double.infinity,
            borderRadius: 24,
            blur: 10,
            alignment: Alignment.center,
            border: 2,
            linearGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(0.05),
              ],
            ),
            borderGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.3),
                Colors.white.withOpacity(0.1),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(
                          practical.icon,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '#${practical.id}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    practical.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    practical.category,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: _getDifficultyColor(practical.difficulty)
                              .withOpacity(0.2),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: _getDifficultyColor(practical.difficulty)
                                .withOpacity(0.5),
                          ),
                        ),
                        child: Text(
                          practical.difficulty,
                          style: TextStyle(
                            color: _getDifficultyColor(practical.difficulty),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            color: Colors.white.withOpacity(0.7),
                            size: 12,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${practical.estimatedTime}m',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'beginner':
        return const Color(0xFF10B981);
      case 'intermediate':
        return const Color(0xFFF59E0B);
      case 'advanced':
        return const Color(0xFFEF4444);
      case 'expert':
        return const Color(0xFF8B5CF6);
      default:
        return const Color(0xFF6B7280);
    }
  }
}

/// Modern Practical Details Screen with immersive design.
class PracticalDetailsPage extends StatefulWidget {
  final Practical practical;
  const PracticalDetailsPage({required this.practical, super.key});

  @override
  State<PracticalDetailsPage> createState() => _PracticalDetailsPageState();
}

class _PracticalDetailsPageState extends State<PracticalDetailsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late ScrollController _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F172A),
              Color(0xFF1E293B),
              Color(0xFF334155),
            ],
          ),
        ),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildSliverAppBar(),
            _buildHeroSection(),
            _buildContentSections(),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 100,
      floating: false,
      pinned: true,
      backgroundColor: const Color(0xFF0F172A).withOpacity(0.9),
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      title: AnimatedOpacity(
        opacity: _scrollOffset > 100 ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        child: Text(
          widget.practical.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            icon: const Icon(Icons.share_rounded, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildHeroSection() {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: widget.practical.gradientColors,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: widget.practical.gradientColors[0].withOpacity(0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Icon(
                    widget.practical.icon,
                    color: Colors.white,
                    size: 40,
                  ),
                ).animate().scale(delay: 200.ms, duration: 800.ms),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              widget.practical.gradientColors[0].withOpacity(0.2),
                              widget.practical.gradientColors[1].withOpacity(0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: widget.practical.gradientColors[0].withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          'Practical ${widget.practical.id}',
                          style: TextStyle(
                            color: widget.practical.gradientColors[0],
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ).animate().fadeIn(delay: 400.ms, duration: 600.ms),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: _getDifficultyColor(widget.practical.difficulty)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: _getDifficultyColor(widget.practical.difficulty)
                                    .withOpacity(0.5),
                              ),
                            ),
                            child: Text(
                              widget.practical.difficulty,
                              style: TextStyle(
                                color: _getDifficultyColor(widget.practical.difficulty),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.access_time_rounded,
                            color: Colors.white.withOpacity(0.7),
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${widget.practical.estimatedTime} min',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ).animate().fadeIn(delay: 600.ms, duration: 600.ms),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              widget.practical.name,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w800,
                height: 1.1,
              ),
            ).animate().fadeIn(delay: 300.ms, duration: 800.ms)
             .slideX(begin: -0.2, end: 0),
            const SizedBox(height: 16),
            Text(
              widget.practical.description,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 1.6,
                color: Colors.white.withOpacity(0.8),
              ),
            ).animate().fadeIn(delay: 500.ms, duration: 800.ms)
             .slideX(begin: -0.2, end: 0),
          ],
        ),
      ),
    );
  }

  Widget _buildContentSections() {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            _buildSection(
              'Key Features',
              Icons.star_rounded,
              widget.practical.keyFeatures,
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Technical Stack',
              Icons.build_rounded,
              widget.practical.technicalStack,
            ),
            const SizedBox(height: 32),
            _buildProblemStatement(),
            const SizedBox(height: 40),
            _buildLaunchButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, IconData icon, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.practical.gradientColors,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ).animate().fadeIn(delay: 200.ms, duration: 600.ms)
         .slideX(begin: -0.2, end: 0),
        const SizedBox(height: 20),
        ...items.asMap().entries.map((entry) {
          final index = entry.key;
          final item = entry.value;
          
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 600),
            child: SlideAnimation(
              verticalOffset: 30.0,
              child: FadeInAnimation(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: widget.practical.gradientColors,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          item,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildProblemStatement() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.practical.gradientColors,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.lightbulb_rounded, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 12),
            Text(
              'Problem Statement',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ).animate().fadeIn(delay: 200.ms, duration: 600.ms)
         .slideX(begin: -0.2, end: 0),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.practical.gradientColors[0].withOpacity(0.1),
                widget.practical.gradientColors[1].withOpacity(0.05),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: widget.practical.gradientColors[0].withOpacity(0.2),
            ),
          ),
          child: Text(
            widget.practical.problemDefinition,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              height: 1.6,
              fontStyle: FontStyle.italic,
            ),
          ),
        ).animate().fadeIn(delay: 400.ms, duration: 800.ms)
         .slideY(begin: 0.2, end: 0),
      ],
    );
  }

  Widget _buildLaunchButton() {
    return Center(
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.practical.gradientColors,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: widget.practical.gradientColors[0].withOpacity(0.4),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push<void>(
              context,
              PageRouteBuilder<void>(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    widget.practical.appBuilder(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: animation.drive(
                      Tween<Offset>(
                        begin: const Offset(0.0, 1.0),
                        end: Offset.zero,
                      ).chain(CurveTween(curve: Curves.easeOutCubic)),
                    ),
                    child: child,
                  );
                },
                transitionDuration: const Duration(milliseconds: 600),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.rocket_launch_rounded, size: 24),
              const SizedBox(width: 12),
              Text(
                'Launch Practical',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ).animate().scale(delay: 600.ms, duration: 800.ms, curve: Curves.elasticOut),
    );
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'beginner':
        return const Color(0xFF10B981);
      case 'intermediate':
        return const Color(0xFFF59E0B);
      case 'advanced':
        return const Color(0xFFEF4444);
      case 'expert':
        return const Color(0xFF8B5CF6);
      default:
        return const Color(0xFF6B7280);
    }
  }
}
