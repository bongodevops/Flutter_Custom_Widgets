import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive Flags',
      debugShowCheckedModeBanner: false,
      home: FlagGridScreen(),
    );
  }
}

class FlagGridScreen extends StatelessWidget {
  const FlagGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Flags'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text(
            "Flutter-এ ClipRRect হলো একটি widget যা একটি child widget-এর চারপাশে rounded corner বা বৃত্তাকার প্রান্ত তৈরি করার জন্য ব্যবহৃত হয়। সহজভাবে বললে, এটি এমন একটি widget যেটা আপনার widget-এর কোণগুলো কেটে ফেলে বা clip করে যাতে তা একটি বৃত্তাকার রূপে প্রদর্শিত হয়। Clip ➜ কেটে ফেলা RRect-> Rounded Rectangle বৃত্তাকার প্রান্তযুক্ত আয়তক্ষেত্র ",
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://flagcdn.com/w320/bd.png',
              fit: BoxFit.cover,
              width: 200,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
