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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox.fromSize(size: const Size(0, 30.0)),
              // Image Button Create
              Text("Image Button with InKWell"),
              InkWell(
                onTap: () {
                  // Handle button tap
                  print('Image button Click');
                },
                child: Image.network(
                  "https://avatars.githubusercontent.com/u/197965196?v=4",
                  height: 50,
                  width: 50,
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
              ElevatedButton(
                onPressed: () {
                  mySnackBar("Elevated  Button", context);
                },
                style: myButtonStyle,
                child: const Text("Elevated Button"),

                ///myButtonStyle is variable
              ),

              ///ElevatedButton create End
              SizedBox(height: 30),

              const Text("ElevatedButton 2"),

              /// ElevatedButton
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  //backgroundColor: Colors.orangeAccent,

                  /// Button Background Color
                  foregroundColor: Colors.teal,
                  fixedSize: (const Size(double.infinity, 120)),

                  /// Button Text Color
                  //minimumSize: const Size(400, 80),

                  //maximumSize: const Size(400, 100),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 32,
                  ),
                  //padding: const EdgeInsets.all(32),
                  // padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                  // padding: EdgeInsets.zero,
                  // padding: const EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 30),
                  elevation: 7,
                  shadowColor: Colors.deepOrange.shade400,

                  /// Other Option available
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),

                  /// Button Text Style
                  textStyle: const TextStyle(
                    //color: Colors.deepOrange,
                    ///  Color No Apply,cause foreground color use
                    fontSize: 35.0,
                    fontWeight: FontWeight.w800,
                    wordSpacing: 10.0,
                    letterSpacing: 5.0,
                    decoration: TextDecoration.overline,

                    /// Other Option Available
                    backgroundColor: Colors.white,

                    /// Button Text Background Color
                  ),
                ),
                child: const Text("ElevatedButton"),
              ),

              const SizedBox(height: 15),
              const SizedBox(
                //width: 0.0,
                height: 30.0,
                //child: Card(child: Text('Hello World!')),
              ),

              ///OutlinedButton create Start
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

              //// Icon Button
              const Text("Icon Button"),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  // Same To Elevated Button Style
                  backgroundColor: Colors.orangeAccent,
                ),
                icon: const Icon(Icons.account_circle),
              ),
              const SizedBox(height: 15),

              const Text("FloatingActionButton with Label"),
              const SizedBox(height: 15),

              ///FloatingActionButton with Label
              FloatingActionButton.extended(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 8,
                backgroundColor: Colors.grey,
                isExtended: true,
                hoverColor: Colors.red,
                autofocus: true,
                focusColor: Colors.teal,
                focusElevation: 10,
                label: const Text("FloatingActionButton"),
              ),

              const SizedBox(height: 15),

              ///FloatingActionButton with child
              const Text("FloatingActionButton with child"),
              FloatingActionButton(
                onPressed: () {},
                //child: const Text("FloatingActionButton"),
                child: const Icon(Icons.add_circle),
              ),

              const SizedBox(height: 15),

              const Text("FilledButton"),

              ///FilledButton
              FilledButton(
                style: FilledButton.styleFrom(
                  /// same to Elevated Button style follow
                  //backgroundColor: Colors.amber,
                ),
                onPressed: () {},
                child: const Text("FilledButton"),
              ),

              const SizedBox(height: 15),

              ////MaterialButton
              const Text("MaterialButton"),
              MaterialButton(
                onPressed: () {},
                child: const Text("MaterialButton"),
              ),
              const SizedBox(height: 15),

              ///BackButton
              const Text("BackButton"),
              BackButton(onPressed: () {}, color: Colors.deepOrange),
              const SizedBox(height: 15),

              ///CloseButton
              const Text("CloseButton"),
              CloseButton(onPressed: () {}, color: Colors.orangeAccent),
              const SizedBox(height: 15),

              ///DrawerButton
              const Text("DrawerButton"),
              DrawerButton(onPressed: () {}, style: const ButtonStyle()),
              const SizedBox(height: 15),

              ///DropdownButton
              const Text("DropdownButton"),
              DropdownButton(items: const [], onChanged: (value) => 2),
            ],
          ),
        ),
      ),

      ///Body Section End
    );
  }
}
