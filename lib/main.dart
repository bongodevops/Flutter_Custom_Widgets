import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text_RichText',
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF10C419),
      appBar: AppBar(
        leading: const Icon(Icons.home, color: Colors.black54, size: 32),
        title: const Text(
          'Master Branch',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
        elevation: 5,
      ),
      body: Column(
        children: [
          Text(
            'This is Master Branch'.toUpperCase(),
            textAlign: TextAlign.center,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 32,
              wordSpacing: 4,
              letterSpacing: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
