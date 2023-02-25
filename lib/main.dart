import 'package:flutter/material.dart';

void main() {
  runApp(const StApp());
}

class StApp extends StatefulWidget {
  const StApp({super.key});

  @override
  State<StApp> createState() => _StAppState();
}

class _StAppState extends State<StApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Click Count',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 20),
            ),
            IconButton(
              onPressed: onClicked,
              icon: const Icon(Icons.add_box),
            )
          ]),
        ),
      ),
    );
  }

  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }
}
