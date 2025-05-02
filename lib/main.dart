import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text_RichText',
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF10C419),
      appBar: AppBar(
        leading: const Icon(Icons.home, color: Colors.black54, size: 32),
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.blue,
        elevation: 5,
      ),
      body: Column(
        children: [
          Text(
            'Hello,Bongo Devops.Flutter text details  Practice'.toUpperCase(),
            //'Hello,Bongo Devops.Flutter text details  Practice'.toLowerCase(),
            //textAlign: TextAlign.center,
            //textAlign: TextAlign.start,
            //textAlign: TextAlign.justify,
            textAlign: TextAlign.center,

            //textAlign: TextAlign.left,
            //textAlign: TextAlign.right,
            //textAlign: TextAlign.end,
            maxLines: 3,
            //softWrap: false,
            //overflow: TextOverflow.ellipsis,
            /// ফ্লাটারে টেক্সট স্কেলিং ব্যবহার করে ইউজারের ডিভাইসের টেক্সট সাইজ প্রেফারেন্স অনুযায়ী টেক্সট সাইজ পরিবর্তন করা যায়।
            textScaler: TextScaler.linear(1.5),

            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              backgroundColor: Colors.amber,
              // backgroundColor: Colors.grey,
              decoration: TextDecoration.underline,
              //decoration: TextDecoration.lineThrough,
              //decoration: TextDecoration.overline,
              //decoration: TextDecoration.none,
              wordSpacing: 4,
              letterSpacing: 5,
              overflow: TextOverflow.ellipsis,
              //overflow: TextOverflow.fade,
              //overflow: TextOverflow.clip,
              //overflow: TextOverflow.visible,
            ),
          ),

          AnimatedDefaultTextStyle(
            style: TextStyle(color: Colors.blue, fontSize: 24),
            duration: Duration(seconds: 1),
            child: Text('Hello, BongoDevops with Text animation'),
          ),

          /// টেক্সট শ্যাডো
          Text(
            'Hafizur Rahman Omar with shadow',
            style: TextStyle(
              fontSize: 24,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 3,
                ),
              ],
            ),
          ),

          ///  টেক্সট গ্রেডিয়েন্ট
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [Colors.blue, Colors.red],
              ).createShader(bounds);
            },
            child: Text(
              'Hello, Hafizur Rahman with Text Gradian',
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ),

          ///রিচ টেক্সট (RichText)
          RichText(
            text: TextSpan(
              text: 'Hello, Bong DevOps ',
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'This red and italic',
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
