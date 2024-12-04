import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';  // Import the google_fonts package

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Upper half with text and image
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                // Image for the top half
                Positioned.fill(
                  child: Image.network(
                    'https://api.higherlowergame.com/_client/images/general/duckduckgo.jpg', // Replace with your image URL
                    fit: BoxFit.cover,
                    width: double.infinity, // Ensures the image takes the full width
                  ),
                ),
                // Text overlaying the image
                Center(
                  child: Text(
                    'DuckDuckGo',
                    style: GoogleFonts.lilitaOne(  // Apply the lilitaOne font
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      backgroundColor: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom half with text inside image
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                // Image for the bottom half
                Positioned.fill(
                  child: Image.network(
                    'https://api.higherlowergame.com/_client/images/general/bmw.jpg', // Replace with your image URL
                    fit: BoxFit.cover,
                    width: double.infinity, // Ensures the image takes the full width
                  ),
                ),
                // Text overlaying the image
                Center(
                  child: Text(
                    'Bottom Image Text',
                    style: GoogleFonts.lilitaOne(  // Apply the lilitaOne font
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      backgroundColor: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
