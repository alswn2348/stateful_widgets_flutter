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
  bool a = true;

  @override
  void initState() {
    super.initState();
    print('initState!!');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose!!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!!');
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.red),
        ),
      ),
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
            ),
            const MyLageTitle(),
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

class MyLageTitle extends StatelessWidget {
  const MyLageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Lage Title',
      style: TextStyle(
          fontSize: 28, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
