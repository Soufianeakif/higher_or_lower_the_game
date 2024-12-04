import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double? width;
  final double? height;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.transparent, // Default: Transparent background
    this.borderColor = Colors.black, // Border color
    this.textColor = Colors.black, // Text color
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Responsive size fallback
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = width ?? screenWidth * 0.4; // Default: 40% of screen width
    final buttonHeight = height ?? 56.0; // Default: 56.0

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: backgroundColor, // Set background color to transparent
        onPrimary: textColor, // Set text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: borderColor, width: 2), // Custom border
        ),
        shadowColor: const Color(0x28606170), // Custom shadow color
        elevation: 4, // Add shadow elevation
      ),
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor, // Customizable text color
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
