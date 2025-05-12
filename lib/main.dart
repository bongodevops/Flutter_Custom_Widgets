import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
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
        title: const Text("Inventory App"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("I am comments", context);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am settings", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am email", context);
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.green,
        onPressed: () {
          mySnackBar("I am floating action button", context);
        },
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("I am home bottom menu", context);
          }
          if (index == 1) {
            mySnackBar("I am contact bottom menu", context);
          }
          if (index == 2) {
            mySnackBar("I am profile bottom menu", context);
          }
        },
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                accountName: const Text(
                  "Hafiz Rahman",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "info@hafiz.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://avatars.githubusercontent.com/u/80614973?v=4",
                ),
                onDetailsPressed: () {
                  mySnackBar("This is profile", context);
                },
              ),
            ),

            ListTile(
              iconColor: Colors.orange,
              textColor: Colors.indigo,
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                mySnackBar("I am home", context);
              },
            ),
            Divider(
              width: 10,
              thickness: 2,
              color: Colors.grey,
            ),
            ListTile(
              selected: true,
              selectedTileColor: Colors.yellow,
              selectedColor: Colors.red,
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                mySnackBar("I am email", context);
              },
              Divider(
                width: 10,
                thickness: 2,
                color: Colors.grey,
              ),
            ),
            ListTile(
              titleTextStyle: TextStyle(color: Colors.red, fontSize: 20),
              leading: const Icon(Icons.phone),
              title: const Text("Phone"),
              onTap: () {
                mySnackBar("I am phone", context);
              },
            ),
          ],
        ),
      ),

      /*
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                accountName: const Text(
                  "Hafiz Rahman",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "info@hafiz.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://avatars.githubusercontent.com/u/80614973?v=4",
                ),
                onDetailsPressed: () {
                  MySnackBar("This is profile", context);
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                MySnackBar("I am home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                MySnackBar("I am email", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Phone"),
              onTap: () {
                MySnackBar("I am phone", context);
              },
            ),
          ],
        ),
      ),

       */

      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/80614973?v=4"
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Hafizur Rahman Omar ',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'hafiz@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                )),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              color: Colors.blue,
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              color: Colors.blue.shade200,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
