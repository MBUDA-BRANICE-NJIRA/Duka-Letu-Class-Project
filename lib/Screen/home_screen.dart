import 'package:flutter/material.dart';

// HomeScreen class - This is a StatelessWidget because it doesn't change over time
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic structure for a screen (like app bar, body, etc.)
      backgroundColor: Colors.grey[100], // Sets a light grey background color
      
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
              const Text(
                'Welcome to Duka Letu',
                style: TextStyle(
                  fontSize: 28,              // Large text size for title
                  fontWeight: FontWeight.bold, // Makes text bold
                  color: Colors.deepPurple,   // Purple color for branding
                ),
                textAlign: TextAlign.center, // Centers the text
              ),
              
              // SPACING - Adds 20 pixels of vertical space
              const SizedBox(height: 20),
              
              // SUBTITLE - Descriptive text below title
              const Text(
                'Your one-stop shop for everything!',
                style: TextStyle(
                  fontSize: 16,           // Smaller text size for subtitle
                  color: Colors.grey,     // Grey color for subtle appearance
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
                  backgroundColor: Colors.deepPurple, // Purple background
                  foregroundColor: Colors.white,      // White text color
                  
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
            ],
          ),
        ),
      ),
    );
  }
}