import 'package:flutter/material.dart';
import 'package:higher_or_lower_the_game/screens/game_screen.dart';
import 'package:higher_or_lower_the_game/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/game': (context) => GameScreen(), // Replace with your game screen
      },
    );
  }
}
