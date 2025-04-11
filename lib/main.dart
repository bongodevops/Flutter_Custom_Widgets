import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



/// converting a class into widgets so inherits the StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 7,
          title: Text('First App Main Code Flow'),
        ),
        body: Text('Hey I am Hafizur Rahman Omar. This is my new flutter app project'),
      ),
    );
  }
}