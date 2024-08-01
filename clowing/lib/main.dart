import 'package:clowing/screens/splash/splash.dart';
import 'package:flutter/material.dart';
// Import the splash screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Set SplashScreen as the home widget
    );
  }
}
