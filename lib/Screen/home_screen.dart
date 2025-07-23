import 'package:flutter/material.dart';
// Import our custom colors
import '../contants/app_colors.dart';

// HomeScreen class - This is a StatelessWidget because it doesn't change over time
class HomeScreen extends StatelessWidget {
  // Add parameters to receive the toggle function and current theme state
  final VoidCallback toggleTheme;
  final bool isDarkMode;
  
  const HomeScreen({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic structure for a screen (like app bar, body, etc.)
      backgroundColor: isDarkMode 
          ? AppColors.darkBackground    // Dark background for dark mode
          : AppColors.lightBackground,  // Light background for light mode
      
      // APP BAR with theme toggle button
      appBar: AppBar(
        title: const Text('Duka Letu'),
        backgroundColor: isDarkMode 
            ? AppColors.darkSurface 
            : AppColors.lightSurface,
        foregroundColor: isDarkMode 
            ? AppColors.darkText 
            : AppColors.lightText,
        actions: [
          // THEME TOGGLE BUTTON
          IconButton(
            onPressed: toggleTheme, // Call the toggle function when pressed
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode, // Change icon based on current theme
            ),
            tooltip: isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode',
          ),
        ],
      ),
      
      // Center widget ensures everything inside is centered on the screen
      body: Center(
        child: Padding(
          // Padding adds space around the content (20 pixels on all sides)
          padding: const EdgeInsets.all(20.0),
          
          child: Column(
            // Column arranges widgets vertically (top to bottom)
            mainAxisAlignment: MainAxisAlignment.center, // Centers items vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Centers items horizontally
            children: [
              
              // MAIN TITLE - Welcome message
              Text(
                'Welcome to Duka Letu',
                style: TextStyle(
                  fontSize: 28,                    // Large text size for title
                  fontWeight: FontWeight.bold,     // Makes text bold
                  color: isDarkMode 
                      ? AppColors.darkPrimary      // Light purple for dark mode
                      : AppColors.primary,         // Deep purple for light mode
                ),
                textAlign: TextAlign.center, // Centers the text
              ),
              
              // SPACING - Adds 20 pixels of vertical space
              const SizedBox(height: 20),
              
              // SUBTITLE - Descriptive text below title
              Text(
                'Your one-stop shop for everything!',
                style: TextStyle(
                  fontSize: 16,                        // Smaller text size for subtitle
                  color: isDarkMode 
                      ? AppColors.darkTextSecondary    // Light grey for dark mode
                      : AppColors.lightTextSecondary,  // Dark grey for light mode
                ),
                textAlign: TextAlign.center, // Centers the text
              ),
              
              // SPACING - Adds 40 pixels of vertical space before button
              const SizedBox(height: 40),
              
              // SHOP NOW BUTTON - Main action button
              ElevatedButton(
                onPressed: () {
                  // This function runs when the button is pressed
                 
                },
                
                // BUTTON STYLING - Makes the button look attractive
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDarkMode 
                      ? AppColors.darkPrimary       // Light purple for dark mode
                      : AppColors.primary,          // Deep purple for light mode
                  foregroundColor: isDarkMode 
                      ? Colors.black                // Black text on light purple button
                      : Colors.white,               // White text on dark purple button
                  
                  // Padding makes the button bigger and easier to tap
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40, // 40 pixels left and right
                    vertical: 15,   // 15 pixels top and bottom
                  ),
                  
                  // Shape gives the button rounded corners
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // 30 pixel radius for rounded corners
                  ),
                  
                  elevation: 5, // Adds shadow to make button appear raised
                ),
                
                // BUTTON TEXT
                child: const Text(
                  'Shop Now',
                  style: TextStyle(
                    fontSize: 18,                    // Button text size
                    fontWeight: FontWeight.w600,     // Semi-bold text
                  ),
                ),
              ),
              
              // SPACING - Adds 20 pixels of vertical space
              const SizedBox(height: 20),
              
              // THEME TOGGLE BUTTON - Alternative way to toggle theme
              OutlinedButton.icon(
                onPressed: toggleTheme,
                icon: Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode,
                  color: isDarkMode ? AppColors.darkText : AppColors.lightText,
                ),
                label: Text(
                  isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode',
                  style: TextStyle(
                    color: isDarkMode ? AppColors.darkText : AppColors.lightText,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: isDarkMode ? AppColors.darkText : AppColors.lightText,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}