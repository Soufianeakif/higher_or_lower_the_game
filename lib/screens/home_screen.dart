import 'package:flutter/material.dart';
import 'dart:ui'; // For BackdropFilter

import '../utils/constants.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,  // Ensures the Stack takes up the full screen
        children: [
          // Background image with blur effect
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'), // Background image
                  fit: BoxFit.cover, // Ensures the image fills the screen without distortion
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust the blur intensity
                child: Container(
                  color: Colors.black.withOpacity(0.4), // Optional: add overlay color for better contrast
                ),
              ),
            ),
          ),

          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // App Logo
                Center(
                  child: Image.asset(
                    'assets/images/logo.png', // Path to your logo
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 50), // Space between logo and buttons

                // Play Button
                CustomButton(
                  text: 'Play',
                  onPressed: () {
                    Navigator.pushNamed(context, '/game');
                  },
                  borderColor: AppColors.Green,
                  textColor: AppColors.Green,
                  width: 200,
                  height: 60,
                ),

                const SizedBox(height: 20), // Space between buttons

                // Exit Button
                CustomButton(
                  text: 'Exit',
                  onPressed: () {
                    print('Exit button pressed');
                  },
                  borderColor: AppColors.Red,
                  textColor: AppColors.Red,
                  width: 200,
                  height: 60,
                ),
              ],
            ),
          ),

          // Footer Text
          const Positioned(
            bottom: 20,  // Adjust this value to move the text up or down
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Developed by AKIF Soufiane.', // Custom footer text
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 11, // Text size
                  fontWeight: FontWeight.bold, // Text weight
                  fontFamily: 'Open Sans', // Custom font family
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
