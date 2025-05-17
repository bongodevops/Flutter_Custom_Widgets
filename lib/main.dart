import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Flags',
      debugShowCheckedModeBanner: false,
      home: const FlagGridScreen(),
    );
  }
}

class FlagGridScreen extends StatelessWidget {
  const FlagGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount = 2; // Mobile by default
    if (screenWidth > 1024) {
      crossAxisCount = 4; // Desktop
    } else if (screenWidth > 768) {
      crossAxisCount = 3; // Tablet
    }

    final flagUrls = [
      'https://flagcdn.com/w320/bd.png',
      'https://flagcdn.com/w320/us.png',
      'https://flagcdn.com/w320/gb.png',
      'https://flagcdn.com/w320/in.png',
      'https://flagcdn.com/w320/jp.png',
      'https://flagcdn.com/w320/ca.png',
      'https://flagcdn.com/w320/fr.png',
      'https://flagcdn.com/w320/de.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Flags'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: flagUrls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      child: Image.network(
                        flagUrls[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Country ${index + 1}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
