import 'package:flutter/material.dart';

void main() {
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
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  final int maxCount = 100; // Set your maximum limit here
  String? errorMessage;

  void increment() {
    setState(() {
      if (count >= maxCount) {
        errorMessage = 'Maximum limit reached ($maxCount)';
      } else {
        count += 1;
        errorMessage = null;
      }
    });
  }

  void decrement() {
    setState(() {
      if (count <= 0) {
        errorMessage = 'Count cannot be negative';
      } else {
        count -= 1;
        errorMessage = null;
      }
    });
  }

  void reset() {
    setState(() {
      count = 0;
      errorMessage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 7,
        leading: const Icon(Icons.home, size: 35, color: Colors.red),
        title: const Text(
          'Counter App with FullStateWidget Practice',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.overline,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.teal[200],
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (errorMessage != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  errorMessage!,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increment,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Addition", style: TextStyle(fontSize: 18)),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decrement,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Subtraction",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Reset", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

///===================Normal App Code====================================

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int count = 0;
//   final int maxCount = 100; // Set your maximum limit here
//   String? errorMessage;
//
//   void increment() {
//     setState(() {
//       if (count >= maxCount) {
//         errorMessage = 'Maximum limit reached ($maxCount)';
//       } else {
//         count += 1;
//         errorMessage = null;
//       }
//     });
//   }
//
//   void decrement() {
//     setState(() {
//       if (count <= 0) {
//         errorMessage = 'Count cannot be negative';
//       } else {
//         count -= 1;
//         errorMessage = null;
//       }
//     });
//   }
//
//   void reset() {
//     setState(() {
//       count = 0;
//       errorMessage = null;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         elevation: 7,
//         leading: const Icon(
//           Icons.home,
//           size: 35,
//           color: Colors.red,
//         ),
//         title: const Text(
//           'Counter App with FullStateWidget Practice',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             decoration: TextDecoration.overline,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//       ),
//       backgroundColor: Colors.blue,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               count.toString(),
//               style: const TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             if (errorMessage != null)
//               Text(
//                 errorMessage!,
//                 style: const TextStyle(
//                   color: Colors.red,
//                   fontSize: 16,
//                 ),
//               ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: increment,
//               child: const Text("Addition"),
//             ),
//             ElevatedButton(
//               onPressed: decrement,
//               child: const Text("Subtraction"),
//             ),
//             ElevatedButton(
//               onPressed: reset,
//               child: const Text("Reset"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
