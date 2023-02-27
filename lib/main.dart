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
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            showTitle ? const MyLageTitle() : const Text('nothing'),
            IconButton(
                onPressed: toggleTitle, icon: const Icon(Icons.remove_red_eye))
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

class MyLageTitle extends StatefulWidget {
  const MyLageTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLageTitle> createState() => _MyLageTitleState();
}

class _MyLageTitleState extends State<MyLageTitle> {
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
    return Text(
      'My Lage Title',
      style: TextStyle(
          fontSize: 28, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
