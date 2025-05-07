import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// KISS - Keep It Simple, Stupid

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

/// Push
/// Pop
/// pushReplacement
/// PushAndRemoveUntil
/// Data passing - in and back

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /// Route = Screen
                /// Navigator - 1,2

                /// Route 1(Current screen) -> Route 2 (Settings Screen)
                /// Step 1- Navigator - push
                /// Step 2 - Context (current route)
                /// Step 3 - Convert SettingsScreen as Route with MaterialPageRoute
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            const SettingsScreen(userName: 'Sara', age: 12),
                  ),
                ).then((value) {
                  if (kDebugMode) {
                    print(value);
                  }
                });
              },
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, required this.userName, this.age});

  final String userName;
  final int? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            Text(age.toString()),
            ElevatedButton(
              onPressed: () {
                /// Back to previous screen
                Navigator.pop(context, {'Sara': 12});
              },
              child: const Text('Back to Home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              child: const Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              child: const Text('Go to Profile by replace'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /// Back to previous screen
                Navigator.pop(context);
              },
              child: const Text('Back to Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                /// Back to previous screen
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (route) => false,
                );
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
