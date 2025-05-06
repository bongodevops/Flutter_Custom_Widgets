import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String imageLink = "https://avatars.githubusercontent.com/u/80614973?v=4 ";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dynamic Height and Width "),
      ),
      body: Center(
        child: Container(
          width: myWidth,
          height: myHeight,
          color: Colors.grey,
          child: (Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                width: myWidth,
                height: myHeight / 2,
                imageLink,
                alignment: Alignment.center,
              ),
              const Text("Hafizur Rahman Omar"),
              Image.asset(
                'assets/images/bird.jpg',
                //'assets/images/bird.jpg',
                width: myWidth / 2,
                height: myHeight / 3,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
