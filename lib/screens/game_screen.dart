import 'dart:ui';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/custom_button.dart';

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
                    'https://api.higherlowergame.com/_client/images/general/duckduckgo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Blur effect overlay
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Container(
                      color: Colors.black.withOpacity(0), // Transparent overlay to enable blur
                    ),
                  ),
                ),
                // Text overlaying the image
                const Center(
                  child: Text(
                    'DuckDuckGo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                // Image for the top half
                Positioned.fill(
                  child: Image.network(
                    'https://api.higherlowergame.com/_client/images/general/bmw.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Blur effect overlay
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Container(
                      color: Colors.black.withOpacity(0), // Transparent overlay to enable blur
                    ),
                  ),
                ),
                // Text overlaying the image
                const Center(
                  child: Text(
                    'BMW',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
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
        ],
      ),
    );
  }
}
