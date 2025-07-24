import 'package:flutter/material.dart';
import 'Screen/home_screen.dart';
import 'contants/theme_data.dart'; // Import our theme data

void main() {
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
      
      home: HomeScreen(toggleTheme: toggleTheme, isDarkMode: isDarkMode),
    );
  }
}
