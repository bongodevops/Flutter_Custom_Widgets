import 'package:flutter/material.dart';

/*

আউটপুট বিশ্লেষণ
অ্যাপ চালু করলে নিচের ক্রমে মেথডগুলো কল হবে:

createState()

initState()

didChangeDependencies()

build()

কাউন্টার বাটনে ক্লিক করলে:

setState() কল হবে

build() আবার কল হবে

Widget টি বন্ধ করলে বা রিমুভ করলে:

deactivate()

dispose()
 */

void main() {
  runApp(const MaterialApp(
    home: EasyLifecycleDemo(),
  ));
}

class EasyLifecycleDemo extends StatefulWidget {
  const EasyLifecycleDemo({super.key});

  @override
  State<EasyLifecycleDemo> createState() => _EasyLifecycleDemoState();
}

class _EasyLifecycleDemoState extends State<EasyLifecycleDemo> {
  int counter = 0;
  String currentState = "initState চলছে...";

  @override
  void initState() {
    super.initState();
    print("🔵 initState: একবারই চলে (শুরুতে)");
    currentState = "initState";
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("🟡 didChangeDependencies: context এর পরিবর্তনে চলে");
  }

  @override
  void didUpdateWidget(covariant EasyLifecycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("🟠 didUpdateWidget: widget update হলে চলে");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("🟤 deactivate: widget সরালে চলে");
  }

  @override
  void dispose() {
    super.dispose();
    print("🔴 dispose: সবশেষে চলে, clean করার সময়");
  }

  void increaseCounter() {
    setState(() {
      counter++;
      currentState = "setState → build";
    });
  }

  @override
  Widget build(BuildContext context) {
    print("⚪ build: বারবার চলে setState এ");

    return Scaffold(
      appBar: AppBar(title: const Text("Lifecycle (Easy)")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("এখন লাইফসাইকেল: $currentState", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text("কাউন্টার: $counter", style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: increaseCounter,
              child: const Text("বাড়াও"),
            ),
          ],
        ),
      ),
    );
  }
}