import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
    return Scaffold(
      appBar: AppBar(title: const Text("Card")),
      body: Column(
        children: [
          Card(
            color: Colors.blue,
            elevation: 7.0,
            child: ListTile(
              title: Text(" This is My Card Title"),
              subtitle: Text("Tis is My Subtitle"),
              leading: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 50.0,
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.yellow),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 300,
                    height: 200,
                    child: Card(
                      color: Colors.orange,
                      elevation: 7.0,
                      child: ListTile(
                        title: Text(" This is My Card Title"),
                        subtitle: Text("Tis is My Subtitle"),
                        leading: Icon(
                          Icons.add_call,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 20,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '4 .5',
                        style: TextStyle(fontSize: 30, color: Colors.orange),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Text(
                        "Pabna",
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Stack(
                children: [
                  Image.network(
                    fit: BoxFit.cover,
                    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
                  ),

                  Positioned(
                    bottom: 15,
                    left: 20,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '4 .5',
                        style: TextStyle(fontSize: 30, color: Colors.orange),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Text(
                        "Pabna",
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
