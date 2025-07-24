import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // =============================================================================
  // LIGHT THEME CONFIGURATION
  // =============================================================================

  static ThemeData get lightTheme => ThemeData(
    // Basic theme settings
    brightness: Brightness.light,
    primarySwatch: AppColors.lightPrimarySwatch,
    primaryColor: AppColors.primary,

    // Background colors
    scaffoldBackgroundColor: AppColors.lightBackground,
    canvasColor: AppColors.lightSurface,
    cardColor: AppColors.lightSurface,

    // App Bar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightSurface,
      foregroundColor: AppColors.lightText,
      elevation: 1,
      iconTheme: IconThemeData(color: AppColors.lightText),
      titleTextStyle: TextStyle(
        color: AppColors.lightText,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),

    // Text themes
    textTheme: const TextTheme(
      // Headings
      displayLarge: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.bold,
      ),

      // Headlines
      headlineLarge: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.w600,
      ),

      // Body text
      bodyLarge: TextStyle(color: AppColors.lightText),
      bodyMedium: TextStyle(color: AppColors.lightTextSecondary),
      bodySmall: TextStyle(color: AppColors.lightTextSecondary),

      // Labels
      labelLarge: TextStyle(
        color: AppColors.lightText,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(color: AppColors.lightTextSecondary),
      labelSmall: TextStyle(color: AppColors.lightTextSecondary),
    ),

    // Button themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    ),

    // Icon theme
    iconTheme: const IconThemeData(color: AppColors.lightText, size: 24),

    // Color scheme
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.lightSurface,

      error: AppColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.lightText,

      onError: Colors.white,
    ),
  );

  // =============================================================================
  // DARK THEME CONFIGURATION
  // =============================================================================

  static ThemeData get darkTheme => ThemeData(
    // Basic theme settings
    brightness: Brightness.dark,
    primarySwatch: AppColors.darkPrimarySwatch,
    primaryColor: AppColors.darkPrimary,

    // Background colors
    scaffoldBackgroundColor: AppColors.darkBackground,
    canvasColor: AppColors.darkSurface,
    cardColor: AppColors.darkSurface,

    // App Bar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkSurface,
      foregroundColor: AppColors.darkText,
      elevation: 1,
      iconTheme: IconThemeData(color: AppColors.darkText),
      titleTextStyle: TextStyle(
        color: AppColors.darkText,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),

    // Text themes
    textTheme: const TextTheme(
      // Headings
      displayLarge: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.bold,
      ),

      // Headlines
      headlineLarge: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.w600,
      ),

      // Body text
      bodyLarge: TextStyle(color: AppColors.darkText),
      bodyMedium: TextStyle(color: AppColors.darkTextSecondary),
      bodySmall: TextStyle(color: AppColors.darkTextSecondary),

      // Labels
      labelLarge: TextStyle(
        color: AppColors.darkText,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(color: AppColors.darkTextSecondary),
      labelSmall: TextStyle(color: AppColors.darkTextSecondary),
    ),

    // Button themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkPrimary,
        foregroundColor: Colors.black, // Black text on light purple
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.darkPrimary,
        side: const BorderSide(color: AppColors.darkPrimary),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.darkPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    ),

    // Icon theme
    iconTheme: const IconThemeData(color: AppColors.darkText, size: 24),

    // Color scheme
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkPrimary,
      secondary: AppColors.secondary,
      surface: AppColors.darkSurface,
      
      error: AppColors.error,
      onPrimary: Colors.black,
      onSecondary: Colors.white,
      onSurface: AppColors.darkText,
      
      onError: Colors.white,
    ),
  );

  // =============================================================================
  // THEME UTILITIES
  // =============================================================================

  // Check if current theme is dark
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Get current primary color based on theme
  static Color getPrimaryColor(BuildContext context) {
    return isDark(context) ? AppColors.darkPrimary : AppColors.primary;
  }

  // Get current text color based on theme
  static Color getTextColor(BuildContext context) {
    return isDark(context) ? AppColors.darkText : AppColors.lightText;
  }

  // Get current secondary text color based on theme
  static Color getSecondaryTextColor(BuildContext context) {
    return isDark(context)
        ? AppColors.darkTextSecondary
        : AppColors.lightTextSecondary;
  }

  // Get current background color based on theme
  static Color getBackgroundColor(BuildContext context) {
    return isDark(context)
        ? AppColors.darkBackground
        : AppColors.lightBackground;
  }
}
