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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.amber)),
                Expanded(flex: 3, child: Container(color: Colors.green)),
                Expanded(flex: 1, child: Container(color: Colors.red)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.red)),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(flex: 1, child: Container(color: Colors.black)),
                      Expanded(flex: 3, child: Container(color: Colors.amber)),
                      Expanded(flex: 2, child: Container(color: Colors.orange)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(flex: 3, child: Container(color: Colors.green)),
          const SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(
                  flex: 3,
                  child: Container(color: const Color(0xfff1eae9)),
                ),
                Expanded(child: Container(color: Colors.red)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Container(
              height: 300,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text("This is Container-01"),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 4,
            child: Container(
              height: 300,
              color: Colors.grey,
              alignment: Alignment.center,
              child: const Text(
                "Expanded always Total area equal distribution-02",
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Container(
              height: 300,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text("This is Container -03"),
            ),
          ),
        ],
      ),
    );
  }
}
