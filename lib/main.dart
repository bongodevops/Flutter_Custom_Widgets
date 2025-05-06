import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(color: Colors.green, height: 400, width: 400),

            Positioned(
              left: 100,
              top: 200,
              child: Container(color: Colors.red, height: 125, width: 125),
            ),
            Positioned.fill(
              child: Align(
                // Other Option available
                alignment: Alignment.bottomRight,
                child: Container(width: 100, height: 100, color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
