import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// custom snack bar Create
  mySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  /// custom snack bar End

  @override
  Widget build(BuildContext context) {
    ///Button custom design
    ButtonStyle myButtonStyle = ElevatedButton.styleFrom(
      //fixedSize: const Size(300, 80),
      shadowColor: Colors.amber.shade200,
      minimumSize: const Size(300, 50),
      textStyle: const TextStyle(fontSize: 20.0),
      //maximumSize: const Size(600, 150),
      padding: const EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      backgroundColor: Colors.indigo,
      elevation: 7.0,
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.red, width: 1.0),
      //alignment: Alignment.center,
      //enabledMouseCursor: MouseCursor.defer,
      //disabledForegroundColor: Colors.grey,
    );

    ///Button custom design End

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter All Button')),

      ///Body Section Start
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image Button Create
            InkWell(
              onTap: () {
                // Handle button tap
                print('Image button Click');
              },
              child: Image.asset(
                'images/h.jpg',
                height: 250,
                width: double.infinity,
                //fit: BoxFit.contain,
                fit: BoxFit.fitHeight,
                //repeat: ImageRepeat.repeat,
              ),
            ),

            const SizedBox(height: 20.0),

            ///TextButton create start
            TextButton(
              onPressed: () {
                mySnackBar("Text Button", context);
              },
              child: const Text("Text Button"),
            ),

            ///TextButton create End
            ///ElevatedButton create start
            const SizedBox(
              //width: 0.0,
              height: 30.0,
              //child: Card(child: Text('Hello World!')),
            ),

            ElevatedButton(
              onPressed: () {
                mySnackBar("Elevated  Button", context);
              },
              style: myButtonStyle,
              child: const Text("Elevated Button"),

              ///myButtonStyle is variable
            ),

            ///ElevatedButton create End
            ///OutlinedButton create Start
            const SizedBox(
              //width: 0.0,
              height: 30.0,
              //child: Card(child: Text('Hello World!')),
            ),

            OutlinedButton(
              onPressed: () {
                mySnackBar("Outline  Button", context);
              },
              child: const Text("OutLine Button"),
            ),
            const SizedBox(
              //width: 0.0,
              height: 30.0,
              //child: Card(child: Text('Hello World!')),
            ),

            ///OutlinedButton create End
          ],
        ),
      ),

      ///Body Section End
    );
  }
}
