import 'package:flutter/material.dart';

class AppColors {
  // =============================================================================
  // LIGHT THEME COLORS (Default)
  // =============================================================================
  
  // Background Colors
  static const Color lightBackground = Color(0xFFF5F5F5);        // Light grey
  static const Color lightSurface = Color(0xFFFFFFFF);           // White
  
  // Brand Colors
  static const Color primary = Color(0xFF6A1B9A);                // Deep purple
  static const Color secondary = Color(0xFF9C27B0);              // Medium purple
  
  // Text Colors
  static const Color lightText = Color(0xFF212121);              // Dark text
  static const Color lightTextSecondary = Color(0xFF757575);     // Grey text
  
  // =============================================================================
  // DARK THEME COLORS
  // =============================================================================
  
  // Background Colors
  static const Color darkBackground = Color(0xFF121212);         // Very dark
  static const Color darkSurface = Color(0xFF1E1E1E);            // Dark grey
  
  // Text Colors for Dark Mode
  static const Color darkText = Color(0xFFFFFFFF);               // White text
  static const Color darkTextSecondary = Color(0xFFB3B3B3);     // Light grey text
  
  // =============================================================================
  // COMMON COLORS (Same for both themes)
  // =============================================================================
  
  static const Color success = Color(0xFF4CAF50);                // Green
  static const Color error = Color(0xFFF44336);                  // Red
  static const Color warning = Color(0xFFFF9800);                // Orange
  
  // =============================================================================
  // MATERIAL COLOR SWATCHES FOR THEMES
  // =============================================================================
  
  // Light Theme Material Color Swatch
  static const MaterialColor lightPrimarySwatch = MaterialColor(0xFF6A1B9A, {
    50: Color(0xFFE8EAF6),
    100: Color(0xFFC5CAE9),
    200: Color(0xFF9FA8DA),
    300: Color(0xFF7986CB),
    400: Color(0xFF5C6BC0),
    500: Color(0xFF6A1B9A),  // primary color
    600: Color(0xFF5E35B1),
    700: Color(0xFF512DA8),
    800: Color(0xFF4527A0),
    900: Color(0xFF311B92),
  });
  
  // Dark Theme Material Color Swatch
  static const MaterialColor darkPrimarySwatch = MaterialColor(0xFFBB86FC, {
    50: Color(0xFFF3E5F5),
    100: Color(0xFFE1BEE7),
    200: Color(0xFFCE93D8),
    300: Color(0xFFBA68C8),
    400: Color(0xFFAB47BC),
    500: Color(0xFFBB86FC),  // primary color for dark theme
    600: Color(0xFF8E24AA),
    700: Color(0xFF7B1FA2),
    800: Color(0xFF6A1B9A),
    900: Color(0xFF4A148C),
  });
  
  // Dark theme primary color (different from light theme)
  static const Color darkPrimary = Color(0xFFBB86FC);            // Light purple for dark mode
  
  // =============================================================================
  // THEME DATA HELPERS
  // =============================================================================
  
  // Get complete light theme
  static ThemeData get lightTheme => ThemeData(
    primarySwatch: lightPrimarySwatch,
    scaffoldBackgroundColor: lightBackground,
    primaryColor: primary,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: lightSurface,
      foregroundColor: lightText,
      elevation: 1,
    ),
  );
  
  // Get complete dark theme
  static ThemeData get darkTheme => ThemeData(
    primarySwatch: darkPrimarySwatch,
    scaffoldBackgroundColor: darkBackground,
    primaryColor: darkPrimary,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: darkSurface,
      foregroundColor: darkText,
      elevation: 1,
    ),
  );
  
  // =============================================================================
  // HOW TO USE THESE COLORS
  // =============================================================================
  
  // Example: backgroundColor: AppColors.lightBackground
  // Example: color: AppColors.primary
  // Example: Text('Hello', style: TextStyle(color: AppColors.lightText))
  // Example: theme: AppColors.lightTheme
  // Example: darkTheme: AppColors.darkTheme
}