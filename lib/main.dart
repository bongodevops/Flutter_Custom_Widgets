import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog and showModalBottomSheet")),
      body: Column(
        children: [
          ///===================================================================
          const Text(
            "This Is Alert Dialog Show",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: double.infinity,
            height: 60.00,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 7.0,
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20.00,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.00),
                ),
              ),

              onPressed: () {
                /// showDialog code start
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Delete"),
                      content: const Text("Do You Want To Close Your App"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("No"),
                        ),
                        TextButton(onPressed: () {}, child: const Text("Yes")),
                      ],
                    );
                  },
                );
              },

              child: const Text("Delete"),
            ),

            /// showDialog code end
          ),

          ///=====================================================================
          const Text(
            "SimpleDialog Show",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SimpleDialog(
                    title: const Text("ভাষা নির্বাচন করুন"),
                    children: [
                      SimpleDialogOption(
                        onPressed: () {
                          // বাংলা নির্বাচন
                        },
                        child: const Text("বাংলা"),
                      ),
                      SimpleDialogOption(
                        onPressed: () {
                          // ইংরেজি নির্বাচন
                        },
                        child: const Text("ইংরেজি"),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text("Language Select"),
          ),
          ////====================================================================
          const Text(
            "About Dialog Show",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: "Bongo App",
                applicationVersion: "1.0.0",
                applicationLegalese: "© 2025 Bongo DevOps",
              );
            },
            child: const Text("Bongo App Info"),
          ),

          ///=======================================================
          const Text(
            "Bottom Sheet Show",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                barrierColor: Colors.orange.shade300,
                backgroundColor: Colors.yellowAccent,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text("নিচের ডায়ালগ"),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("বন্ধ করুন"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Text("Bottom Sheet"),
          ),
        ],
      ),
    );
  }
}
