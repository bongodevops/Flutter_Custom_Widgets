import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inventory App",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        //// AppBar with Custom Background Gradient
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),

        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 5,
        //centerTitle: true,
        // brightness: Brightness.dark,
        // backgroundColor: Colors.amber,
        backgroundColor: Colors.transparent,
        //// AppBar with Custom Action Widget and Icon
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("I am comments", context);
            },
            icon: const Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am search", context);
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am settings", context);
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am email", context);
            },
            icon: const Icon(Icons.email),
          ),
        ],

        //// PopupMenuButton
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {
        //       // Search action
        //     },
        //   ),
        //   PopupMenuButton(
        //     itemBuilder: (context) => [
        //       PopupMenuItem(
        //         child: Text('Settings'),
        //         value: 'settings',
        //       ),
        //       PopupMenuItem(
        //         child: Text('Logout'),
        //         value: 'logout',
        //       ),
        //     ],
        //     onSelected: (value) {
        //       // Handle menu item selection
        //     },
        //   ),
        // ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),

        //// AppBar with Search

        // title: TextField(
        //   decoration: InputDecoration(
        //     hintText: 'Search...',
        //     border: InputBorder.none,
        //   ),
        // ),

        ////একটি কাস্টম টাইটেল widget এবং আইকন সহ AppBar তৈরি করতে title প্রপার্টি ব্যবহার করুন।
        // title: Row(
        //   children: [
        //     Icon(Icons.home),
        //     SizedBox(width: 10),
        //     Text('My App'),
        //   ],
        // ),

        //// AppBar with Custom Bottom Height
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            color: Colors.blue,
            height: 50.0,
            child: Center(child: Text('Custom Bottom Widget')),
          ),
        ),
      ),
    );
  }
}
