import 'package:final_project/screens/landing.screen.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        //  future: Firebase.initializeApp(),
          builder: (_, __) => OnBoardingPage()),
    );
  }
}
