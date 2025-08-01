import 'package:ecomerce_class_app/Screen/Auth/login_screen.dart'
    show LoginScreen;
import 'package:ecomerce_class_app/Screen/Auth/register_screen.dart';
import 'package:ecomerce_class_app/Screen/cart_screen.dart' show CartScreen;
// import 'package:ecomerce_class_app/Screen/home_screen.dart' show HomeScreen;
import 'package:ecomerce_class_app/Screen/profile_screen.dart'
    show ProfileScreen;
import 'package:ecomerce_class_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'root_screen.dart';
import 'contants/theme_data.dart'; // Import our theme data
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase before running the app
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Track whether dark mode is enabled
  bool isDarkMode = false;

  // Function to toggle between light and dark theme
  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      // Set the title of the app
      title: 'DUKA LETU',

      // LIGHT THEME - Using AppTheme theme data
      theme: AppTheme.lightTheme,

      // DARK THEME - Using AppTheme theme data
      darkTheme: AppTheme.darkTheme,

      // Choose which theme to use based on isDarkMode
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: RegisterScreen(),
      initialRoute: FirebaseAuth.instance.currentUser == null
          ? '/register'
          : '/home',

      routes: {
        'login': (context) => const LoginScreen(),
        // 'home': (context) => HomeScreen(toggleTheme: () {}, isDarkMode: () {}),
        'register': (context) => const RegisterScreen(),
        'cart': (context) => const CartScreen(),
        'profile': (context) => const ProfileScreen(),
      },
    );
  }
}
